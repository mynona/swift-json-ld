import Foundation

// MARK: - Schema.org Raw Models

public struct SchemaOrgGraph: Decodable {
    public let graph: [SchemaOrgNode]

    enum CodingKeys: String, CodingKey {
        case graph = "@graph"
    }
}

public struct SchemaOrgNode: Decodable {
    public let id: String
    public let type: NodeType
    public let label: NodeValue?
    public let comment: NodeValue?
    public let subClassOf: NodeReferenceList?
    public let domainIncludes: NodeReferenceList?
    public let rangeIncludes: NodeReferenceList?

    enum CodingKeys: String, CodingKey {
        case id = "@id"
        case type = "@type"
        case label = "rdfs:label"
        case comment = "rdfs:comment"
        case subClassOf = "rdfs:subClassOf"
        case domainIncludes = "schema:domainIncludes"
        case rangeIncludes = "schema:rangeIncludes"
    }
}

public enum NodeType: Decodable {
    case single(String)
    case multiple([String])

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let single = try? container.decode(String.self) {
            self = .single(single)
        } else if let multi = try? container.decode([String].self) {
            self = .multiple(multi)
        } else {
            self = .single("")
        }
    }

    public func contains(_ expected: String) -> Bool {
        switch self {
        case .single(let str): return str == expected
        case .multiple(let arr): return arr.contains(expected)
        }
    }
}

public struct NodeValue: Decodable {
    public let value: String

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let str = try? container.decode(String.self) {
            self.value = str
        } else if let dict = try? container.decode([String: String].self) {
            self.value = dict["@value"] ?? ""
        } else {
            self.value = ""
        }
    }
}

public struct NodeReferenceList: Decodable {
    public let references: [String]

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let singleDict = try? container.decode([String: String].self),
           let id = singleDict["@id"] {
            self.references = [id]
        } else if let dictArray = try? container.decode([[String: String]].self) {
            self.references = dictArray.compactMap { $0["@id"] }
        } else {
            self.references = []
        }
    }
}
