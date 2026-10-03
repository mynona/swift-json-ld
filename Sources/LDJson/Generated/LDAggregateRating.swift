import Foundation

/// The average rating based on multiple ratings or reviews.
public struct LDAggregateRating: LDSchemaThing, Sendable {

   enum CodingKeys: String, CodingKey {
      case context = "@context"
      case type = "@type"
      case itemReviewed = "itemReviewed"
      case ratingCount = "ratingCount"
      case reviewCount = "reviewCount"
   }

   public let context: String
   public let type: String
   public let itemReviewed: LDValue<LDThing>?
   public let ratingCount: Double?
   public let reviewCount: Double?

   public init(
      context: String = "https://schema.org",
      type: String = "AggregateRating",
      itemReviewed: LDValue<LDThing>? = nil,
      ratingCount: Double? = nil,
      reviewCount: Double? = nil
   ) {
      self.context = context
      self.type = type
      self.itemReviewed = itemReviewed
      self.ratingCount = ratingCount
      self.reviewCount = reviewCount
   }
}
