import Foundation

// Enum to allow mixed types in Article.[LDAuthor]
public enum LDAuthor: Sendable {
   case person(LDPerson)
   case organization(LDOrganization)
}

extension LDAuthor: Encodable {
   public func encode(to encoder: Encoder) throws {
      var singleContainer = encoder.singleValueContainer()

      switch self {
      case .person(let person):
         try singleContainer.encode(person)
      case .organization(let organization):
         try singleContainer.encode(organization)
      }

   }
}

public struct LDArticle: LDJsonExportable, Sendable {

   enum CodingKeys: String, CodingKey {
      case headline, image, datePublished, dateModified, wordCount, author, isAccessibleForFree, speakable
      case type = "@type"
      case context = "@context"
   }

   public let context: String = "https://schema.org"
   public let type: String
   public let headline: String?
   public let image: [String]?
   public let datePublished: Date?
   public let dateModified: Date?
   public let wordCount: Int?
   public let author: [LDAuthor]?
   public let isAccessibleForFree: Bool?
   public let speakable: LDSpeakableSpecification?

   public init(
      type: String = "Article",
      headline: String? = nil,
      image: [String]? = nil,
      datePublished: Date? = nil,
      dateModified: Date? = nil,
      wordCount: Int? = nil,
      author: [LDAuthor]? = nil,
      isAccessibleForFree: Bool? = nil,
      speakable: LDSpeakableSpecification? = nil
   ) {
      self.type = type
      self.headline = headline
      self.image = image
      self.datePublished = datePublished
      self.dateModified = dateModified
      self.wordCount = wordCount
      self.author = author
      self.isAccessibleForFree = isAccessibleForFree
      self.speakable = speakable
   }
}
