import Foundation

public struct LDSpeakableSpecification: JsonLDExportable, Sendable {

   enum CodingKeys: String, CodingKey {
      case cssSelector
      case type = "@type"
      case context = "@context"
   }

   public let context: String = "https://schema.org"
   public let type: String
   public let cssSelector: [String]?

   public init(
      type: String = "SpeakableSpecification",
      cssSelector: [String]? = nil
   ) {
      self.type = type
      self.cssSelector = cssSelector
   }
}
