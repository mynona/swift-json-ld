import Foundation

/// A review of an item - for example, of a restaurant, movie, or store.
public struct LDReview: LDSchemaThing, Sendable {

   enum CodingKeys: String, CodingKey {
      case context = "@context"
      case type = "@type"
      case associatedClaimReview = "associatedClaimReview"
      case associatedMediaReview = "associatedMediaReview"
      case associatedReview = "associatedReview"
      case itemReviewed = "itemReviewed"
      case negativeNotes = "negativeNotes"
      case positiveNotes = "positiveNotes"
      case reviewAspect = "reviewAspect"
      case reviewBody = "reviewBody"
      case reviewRating = "reviewRating"
   }

   public let context: String
   public let type: String
   public let associatedClaimReview: LDValue<LDReview>?
   public let associatedMediaReview: LDValue<LDReview>?
   public let associatedReview: LDValue<LDReview>?
   public let itemReviewed: LDValue<LDThing>?
   public let negativeNotes: String?
   public let positiveNotes: String?
   public let reviewAspect: String?
   public let reviewBody: String?
   public let reviewRating: LDValue<LDRating>?

   public init(
      context: String = "https://schema.org",
      type: String = "Review",
      associatedClaimReview: LDValue<LDReview>? = nil,
      associatedMediaReview: LDValue<LDReview>? = nil,
      associatedReview: LDValue<LDReview>? = nil,
      itemReviewed: LDValue<LDThing>? = nil,
      negativeNotes: String? = nil,
      positiveNotes: String? = nil,
      reviewAspect: String? = nil,
      reviewBody: String? = nil,
      reviewRating: LDValue<LDRating>? = nil
   ) {
      self.context = context
      self.type = type
      self.associatedClaimReview = associatedClaimReview
      self.associatedMediaReview = associatedMediaReview
      self.associatedReview = associatedReview
      self.itemReviewed = itemReviewed
      self.negativeNotes = negativeNotes
      self.positiveNotes = positiveNotes
      self.reviewAspect = reviewAspect
      self.reviewBody = reviewBody
      self.reviewRating = reviewRating
   }
}
