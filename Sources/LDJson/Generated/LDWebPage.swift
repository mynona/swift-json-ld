import Foundation

/// A web page. Every web page is implicitly assumed to be declared to be of type WebPage, so the various properties about that webpage, such as <code>breadcrumb</code> may be used. We recommend explicit declaration if these properties are specified, but if they are found outside of an itemscope, they will be assumed to be about the page.
public struct LDWebPage: LDSchemaThing, Sendable {

   enum CodingKeys: String, CodingKey {
      case context = "@context"
      case type = "@type"
      case breadcrumb = "breadcrumb"
      case lastReviewed = "lastReviewed"
      case mainContentOfPage = "mainContentOfPage"
      case primaryImageOfPage = "primaryImageOfPage"
      case relatedLink = "relatedLink"
      case reviewedBy = "reviewedBy"
      case significantLink = "significantLink"
      case significantLinks = "significantLinks"
      case speakable = "speakable"
      case specialty = "specialty"
   }

   public let context: String
   public let type: String
   public let breadcrumb: LDEither<LDBreadcrumbList, String>?
   public let lastReviewed: String?
   public let mainContentOfPage: String?
   public let primaryImageOfPage: LDValue<LDImageObject>?
   public let relatedLink: String?
   public let reviewedBy: LDEither<LDOrganization, LDPerson>?
   public let significantLink: String?
   public let significantLinks: String?
   public let speakable: LDEither<LDSpeakableSpecification, String>?
   public let specialty: String?

   public init(
      context: String = "https://schema.org",
      type: String = "WebPage",
      breadcrumb: LDEither<LDBreadcrumbList, String>? = nil,
      lastReviewed: String? = nil,
      mainContentOfPage: String? = nil,
      primaryImageOfPage: LDValue<LDImageObject>? = nil,
      relatedLink: String? = nil,
      reviewedBy: LDEither<LDOrganization, LDPerson>? = nil,
      significantLink: String? = nil,
      significantLinks: String? = nil,
      speakable: LDEither<LDSpeakableSpecification, String>? = nil,
      specialty: String? = nil
   ) {
      self.context = context
      self.type = type
      self.breadcrumb = breadcrumb
      self.lastReviewed = lastReviewed
      self.mainContentOfPage = mainContentOfPage
      self.primaryImageOfPage = primaryImageOfPage
      self.relatedLink = relatedLink
      self.reviewedBy = reviewedBy
      self.significantLink = significantLink
      self.significantLinks = significantLinks
      self.speakable = speakable
      self.specialty = specialty
   }
}
