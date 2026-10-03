import Foundation

public class CodeEmitter {
    public static func emitClass(schemaClass: SchemaClass, properties: [String: SchemaProperty], definedTypes: Set<String>) -> String {
        let typeName = TypeResolver.safeTypeName(schemaClass.name)
        
        var output = """
        import Foundation

        /// \(schemaClass.comment.replacingOccurrences(of: "\n", with: " "))
        public struct \(typeName): LDSchemaThing, Sendable {

           enum CodingKeys: String, CodingKey {
              case context = "@context"
              case type = "@type"

        """

        let classProps = schemaClass.properties.compactMap { properties[$0] }
        
        for prop in classProps {
            let (swiftName, codingKey) = TypeResolver.safePropertyName(prop.name)
            output += "      case \(swiftName) = \"\(codingKey)\"\n"
        }

        output += """
           }

           public let context: String
           public let type: String

        """

        for prop in classProps {
            let (swiftName, _) = TypeResolver.safePropertyName(prop.name)
            let swiftType = TypeResolver.resolveSwiftType(ranges: prop.ranges, definedTypes: definedTypes)
            output += "   public let \(swiftName): \(swiftType)\n"
        }

        // Initializer
        output += "\n   public init(\n"
        output += "      context: String = \"https://schema.org\",\n"
        output += "      type: String = \"\(schemaClass.name)\""

        for prop in classProps {
            let (swiftName, _) = TypeResolver.safePropertyName(prop.name)
            let swiftType = TypeResolver.resolveSwiftType(ranges: prop.ranges, definedTypes: definedTypes)
            output += ",\n      \(swiftName): \(swiftType) = nil"
        }

        output += "\n   ) {\n"
        output += "      self.context = context\n"
        output += "      self.type = type\n"

        for prop in classProps {
            let (swiftName, _) = TypeResolver.safePropertyName(prop.name)
            output += "      self.\(swiftName) = \(swiftName)\n"
        }

        output += "   }\n}\n"
        return output
    }
}
