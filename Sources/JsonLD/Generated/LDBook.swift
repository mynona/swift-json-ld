import Foundation

/// A book.
public struct LDBook: LDSchemaThing, Sendable {

   enum CodingKeys: String, CodingKey {
      case context = "@context"
      case type = "@type"
      case abridged = "abridged"
      case bookEdition = "bookEdition"
      case bookFormat = "bookFormat"
      case illustrator = "illustrator"
      case isbn = "isbn"
      case numberOfPages = "numberOfPages"
   }

   public let context: String
   public let type: String
   public let abridged: Bool?
   public let bookEdition: String?
   public let bookFormat: String?
   public let illustrator: LDValue<LDPerson>?
   public let isbn: String?
   public let numberOfPages: Double?

   public init(
      context: String = "https://schema.org",
      type: String = "Book",
      abridged: Bool? = nil,
      bookEdition: String? = nil,
      bookFormat: String? = nil,
      illustrator: LDValue<LDPerson>? = nil,
      isbn: String? = nil,
      numberOfPages: Double? = nil
   ) {
      self.context = context
      self.type = type
      self.abridged = abridged
      self.bookEdition = bookEdition
      self.bookFormat = bookFormat
      self.illustrator = illustrator
      self.isbn = isbn
      self.numberOfPages = numberOfPages
   }
}
