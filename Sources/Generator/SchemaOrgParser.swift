import Foundation

public struct SchemaOrgParsedModel {
    public let classes: [String: SchemaClass]
    public let properties: [String: SchemaProperty]
    public let dataTypes: Set<String>
    public let enumerations: Set<String>
}

public struct SchemaClass {
    public let id: String
    public let name: String
    public let comment: String
    public let superClasses: [String]
    public var properties: [String]
    public let isEnumeration: Bool
}

public struct SchemaProperty {
    public let id: String
    public let name: String
    public let comment: String
    public let domains: [String]
    public let ranges: [String]
}

public class SchemaOrgParser {
    public static func parse(graph: [SchemaOrgNode]) -> SchemaOrgParsedModel {
        var classes: [String: SchemaClass] = [:]
        var properties: [String: SchemaProperty] = [:]
        var dataTypes: Set<String> = []
        var enumerations: Set<String> = []

        // First pass: Identify Classes, Data Types, and Enumerations
        for node in graph {
            let cleanId = node.id.replacingOccurrences(of: "schema:", with: "")
            
            if node.type.contains("schema:DataType") {
                dataTypes.insert(cleanId)
            } else if node.type.contains("rdfs:Class") {
                let superClasses = node.subClassOf?.references.map { $0.replacingOccurrences(of: "schema:", with: "") } ?? []
                let isEnum = superClasses.contains("Enumeration")
                if isEnum {
                    enumerations.insert(cleanId)
                }

                let name = node.label?.value ?? cleanId
                let comment = node.comment?.value ?? ""
                
                classes[cleanId] = SchemaClass(
                    id: cleanId,
                    name: name,
                    comment: comment,
                    superClasses: superClasses,
                    properties: [],
                    isEnumeration: isEnum
                )
            }
        }

        // Second pass: Extract Properties and assign them to domains
        for node in graph where node.type.contains("rdf:Property") {
            let cleanId = node.id.replacingOccurrences(of: "schema:", with: "")
            let domains = node.domainIncludes?.references.map { $0.replacingOccurrences(of: "schema:", with: "") } ?? []
            let ranges = node.rangeIncludes?.references.map { $0.replacingOccurrences(of: "schema:", with: "") } ?? []
            let name = node.label?.value ?? cleanId
            let comment = node.comment?.value ?? ""

            let prop = SchemaProperty(
                id: cleanId,
                name: name,
                comment: comment,
                domains: domains,
                ranges: ranges
            )
            properties[cleanId] = prop

            for domain in domains {
                classes[domain]?.properties.append(cleanId)
            }
        }

        return SchemaOrgParsedModel(
            classes: classes,
            properties: properties,
            dataTypes: dataTypes,
            enumerations: enumerations
        )
    }
}
