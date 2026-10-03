import Foundation

/// A utility class that serves as the umbrella for a number of 'intangible' things such as quantities, structured values, etc.
public struct LDIntangible: LDSchemaThing, Sendable {

   enum CodingKeys: String, CodingKey {
      case context = "@context"
      case type = "@type"
   }

   public let context: String
   public let type: String

   public init(
      context: String = "https://schema.org",
      type: String = "Intangible"
   ) {
      self.context = context
      self.type = type
   }
}
