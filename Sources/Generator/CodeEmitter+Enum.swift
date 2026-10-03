import Foundation

extension CodeEmitter {
    public static func emitEnum(enumNode: SchemaOrgNode) -> String {
        let cleanId = enumNode.id.replacingOccurrences(of: "schema:", with: "")
        let enumName = TypeResolver.safeTypeName(cleanId)
        let comment = enumNode.comment?.value.replacingOccurrences(of: "\n", with: " ") ?? ""

        return """
        import Foundation

        /// \(comment)
        public enum \(enumName): String, JsonLDExportable, Sendable {
           case \(cleanId.prefix(1).lowercased() + cleanId.dropFirst()) = "\(cleanId)"
        }
        """
    }
}
