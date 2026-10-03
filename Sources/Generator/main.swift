import Foundation

@main
struct GeneratorMain {
    static func main() async throws {
        print("Starting Schema.org Code Generator...")
        
        let schemaUrl = URL(string: "https://schema.org/version/latest/schemaorg-current-https.jsonld")!
        let cacheDir = FileManager.default.temporaryDirectory.appendingPathComponent("schemaorg-cache")
        try? FileManager.default.createDirectory(at: cacheDir, withIntermediateDirectories: true)
        let localFile = cacheDir.appendingPathComponent("schemaorg-current-https.jsonld")

        let data: Data
        if FileManager.default.fileExists(atPath: localFile.path) {
            print("Reading Schema.org from cache: \(localFile.path)")
            data = try Data(contentsOf: localFile)
        } else {
            print("Fetching Schema.org JSON-LD from \(schemaUrl)...")
            let (downloadedData, _) = try await URLSession.shared.data(from: schemaUrl)
            try downloadedData.write(to: localFile)
            data = downloadedData
            print("Downloaded and cached \(data.count) bytes.")
        }

        print("Parsing Schema.org JSON-LD graph...")
        let decoder = JSONDecoder()
        let graphContainer = try decoder.decode(SchemaOrgGraph.self, from: data)
        let nodes = graphContainer.graph
        print("Found \(nodes.count) total nodes in graph.")

        let parsed = SchemaOrgParser.parse(graph: nodes)
        print("Analysis summary:")
        print("   - Classes / Types: \(parsed.classes.count)")
        print("   - Properties:      \(parsed.properties.count)")
        print("   - Enumerations:    \(parsed.enumerations.count)")
        print("   - Data Types:      \(parsed.dataTypes.count)")

        // Output directory for generated code
        let projectRoot = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
        let generatedDir = projectRoot.appendingPathComponent("Sources/JsonLD/Generated")
        try? FileManager.default.createDirectory(at: generatedDir, withIntermediateDirectories: true)

        // Collect all defined types (handwritten + targeted generated types)
        var definedTypes = SchemaOrgGeneratorConfig.existingHandwrittenTypes
        for className in SchemaOrgGeneratorConfig.targetSchemaClasses {
            definedTypes.insert(className)
        }

        var createdCount = 0
        var updatedCount = 0
        var unchangedCount = 0

        for className in SchemaOrgGeneratorConfig.targetSchemaClasses {
            guard !SchemaOrgGeneratorConfig.existingHandwrittenTypes.contains(className),
                  let schemaClass = parsed.classes[className] else {
                continue
            }

            let code = CodeEmitter.emitClass(schemaClass: schemaClass, properties: parsed.properties, definedTypes: definedTypes)
            let typeName = TypeResolver.safeTypeName(schemaClass.name)
            let fileUrl = generatedDir.appendingPathComponent("\(typeName).swift")

            if FileManager.default.fileExists(atPath: fileUrl.path) {
                let existingContent = try? String(contentsOf: fileUrl, encoding: .utf8)
                if existingContent == code {
                    unchangedCount += 1
                    continue
                } else {
                    try code.write(to: fileUrl, atomically: true, encoding: .utf8)
                    print("  Updated: \(typeName).swift")
                    updatedCount += 1
                }
            } else {
                try code.write(to: fileUrl, atomically: true, encoding: .utf8)
                print("  Created: \(typeName).swift")
                createdCount += 1
            }
        }

        if createdCount == 0 && updatedCount == 0 {
            print("All \(unchangedCount) Schema.org types are up-to-date. Nothing to update.")
        } else {
            print("Done: \(createdCount) created, \(updatedCount) updated, \(unchangedCount) unchanged.")
        }
        print("Generator verification complete.")
    }
}
