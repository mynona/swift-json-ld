import Foundation

/// A rating is an evaluation on a numeric scale, such as 1 to 5 stars.
public struct LDRating: LDSchemaThing, Sendable {

   enum CodingKeys: String, CodingKey {
      case context = "@context"
      case type = "@type"
      case author = "author"
      case bestRating = "bestRating"
      case ratingExplanation = "ratingExplanation"
      case ratingValue = "ratingValue"
      case reviewAspect = "reviewAspect"
      case worstRating = "worstRating"
   }

   public let context: String
   public let type: String
   public let author: LDEither<LDOrganization, LDPerson>?
   public let bestRating: LDEither<Double, String>?
   public let ratingExplanation: String?
   public let ratingValue: LDEither<Double, String>?
   public let reviewAspect: String?
   public let worstRating: LDEither<Double, String>?

   public init(
      context: String = "https://schema.org",
      type: String = "Rating",
      author: LDEither<LDOrganization, LDPerson>? = nil,
      bestRating: LDEither<Double, String>? = nil,
      ratingExplanation: String? = nil,
      ratingValue: LDEither<Double, String>? = nil,
      reviewAspect: String? = nil,
      worstRating: LDEither<Double, String>? = nil
   ) {
      self.context = context
      self.type = type
      self.author = author
      self.bestRating = bestRating
      self.ratingExplanation = ratingExplanation
      self.ratingValue = ratingValue
      self.reviewAspect = reviewAspect
      self.worstRating = worstRating
   }
}
