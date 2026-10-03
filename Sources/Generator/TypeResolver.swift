import Foundation

public class TypeResolver {
    public static let swiftKeywords: Set<String> = [
        "description", "id", "type", "repeat", "operator", "init", "default", "protocol",
        "class", "struct", "enum", "extension", "self", "Self", "where", "case", "associatedtype"
    ]

    public static func safePropertyName(_ rawName: String) -> (swiftName: String, codingKey: String) {
        var clean = rawName
        if clean.starts(with: "schema:") {
            clean = String(clean.dropFirst(7))
        }
        
        let codingKey = clean
        let swiftName = swiftKeywords.contains(clean) ? "`\(clean)`" : clean
        return (swiftName, codingKey)
    }

    public static func safeTypeName(_ rawName: String) -> String {
        var clean = rawName
        if clean.starts(with: "schema:") {
            clean = String(clean.dropFirst(7))
        }
        return "LD" + clean
    }

    public static func resolveSwiftType(ranges: [String], definedTypes: Set<String>) -> String {
        let cleanRanges = ranges.map { $0.replacingOccurrences(of: "schema:", with: "") }
        
        if cleanRanges.isEmpty {
            return "String?"
        }
        
        // Single range
        if cleanRanges.count == 1 {
            let r = cleanRanges[0]
            switch r {
            case "Text", "URL", "CssSelectorType", "XPathType":
                return "String?"
            case "Number", "Float", "Integer":
                return "Double?"
            case "Boolean":
                return "Bool?"
            case "Date", "DateTime", "Time":
                return "String?"
            default:
                if definedTypes.contains(r) {
                    return "LDValue<\(safeTypeName(r))>?"
                } else {
                    return "String?"
                }
            }
        }
        
        // Two ranges -> LDEither if both are defined/primitive
        if cleanRanges.count == 2 {
            let t1 = mapPrimitiveOrTypeName(cleanRanges[0], definedTypes: definedTypes)
            let t2 = mapPrimitiveOrTypeName(cleanRanges[1], definedTypes: definedTypes)
            if let t1 = t1, let t2 = t2 {
                return "LDEither<\(t1), \(t2)>?"
            } else {
                return "String?"
            }
        }

        // Multi-range fallback to flexible String
        return "String?"
    }

    private static func mapPrimitiveOrTypeName(_ r: String, definedTypes: Set<String>) -> String? {
        switch r {
        case "Text", "URL": return "String"
        case "Number", "Float", "Integer": return "Double"
        case "Boolean": return "Bool"
        case "Date", "DateTime", "Time": return "String"
        default:
            if definedTypes.contains(r) {
                return safeTypeName(r)
            }
            return nil
        }
    }
}
