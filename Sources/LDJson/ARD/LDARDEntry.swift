import Foundation

/// Represents an ARD (Agentic Resource Discovery) entry per the v0.91 specification.
/// An ARD entry describes an agentic resource (e.g. MCP Server, A2A Agent, or Skill) as a JSON-LD node.
public struct LDARDEntry: LDJsonExportable, Sendable {

   enum CodingKeys: String, CodingKey {
      case context = "@context"
      case identifier
      case displayName
      case type
      case url
      case description
      case capabilities
      case representativeQueries
      case tags
      case version
      case updatedAt
   }

   public let context: String?
   public let identifier: String
   public let displayName: String
   public let type: String
   public let url: String?
   public let description: String?
   public let capabilities: [String]?
   public let representativeQueries: [String]?
   public let tags: [String]?
   public let version: String?
   public let updatedAt: String?

   public init(
      context: String? = "https://agenticresourcediscovery.org/context/v1",
      identifier: String,
      displayName: String,
      type: String = "application/mcp-server-card+json",
      url: String? = nil,
      description: String? = nil,
      capabilities: [String]? = nil,
      representativeQueries: [String]? = nil,
      tags: [String]? = nil,
      version: String? = nil,
      updatedAt: String? = nil
   ) {
      self.context = context
      self.identifier = identifier
      self.displayName = displayName
      self.type = type
      self.url = url
      self.description = description
      self.capabilities = capabilities
      self.representativeQueries = representativeQueries
      self.tags = tags
      self.version = version
      self.updatedAt = updatedAt
   }
}
