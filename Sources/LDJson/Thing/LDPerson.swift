import Foundation

public struct LDPerson: LDJsonExportable, Sendable {
   
   enum CodingKeys: String, CodingKey {
      case name, url, jobTitle, honorificPrefix, sameAs, hasCredential, image, description
      case type = "@type"
      case context = "@context"
   }

   public let context: String = "https://schema.org"
   public let type: String
   public let name: String?
   public let url: String?
   public let jobTitle: String?
   public let honorificPrefix: String?
   public let sameAs: [String]?
   public let hasCredential: [LDEducationalOccupationalCredential]?
   public let image: String?
   public let description: String?
   
   public init(
      type: String = "Person",
      name: String? = nil,
      url: String? = nil,
      jobTitle: String? = nil,
      honorificPrefix: String? = nil,
      sameAs: [String]? = nil,
      hasCredential: [LDEducationalOccupationalCredential]? = nil,
      image: String? = nil,
      description: String? = nil
   ) {
      self.type = type
      self.name = name
      self.url = url
      self.jobTitle = jobTitle
      self.honorificPrefix = honorificPrefix
      self.sameAs = sameAs
      self.hasCredential = hasCredential
      self.image = image
      self.description = description
   }
   

}



