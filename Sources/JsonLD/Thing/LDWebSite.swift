import Foundation

public struct LDWebSite: JsonLDExportable, Sendable {

   enum CodingKeys: String, CodingKey {
      case url, potentialAction
      case type = "@type"
      case context = "@context"
   }

   public let context: String = "https://schema.org"
   public let type: String
   public let url: String
   public let potentialAction: LDSearchAction

   public init(
      type: String = "WebSite",
      url: String,
      potentialAction: LDSearchAction
   ) {
      self.type = type
      self.url = url
      self.potentialAction = potentialAction
   }
}
