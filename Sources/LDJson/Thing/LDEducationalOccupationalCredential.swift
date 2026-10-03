import Foundation

public struct LDEducationalOccupationalCredential: LDJsonExportable, Sendable {
   
   enum CodingKeys: String, CodingKey {
      case name, url, description, recognizedBy
      case type = "@type"
      case context = "@context"
   }
   
   public let context: String = "https://schema.org"
   public let type: String
   public let name: String?
   public let url: String?
   public let description: String?
   public let recognizedBy: LDOrganization?
   
   public init(
      type: String = "EducationalOccupationalCredential",
      name: String? = nil,
      url: String? = nil,
      description: String? = nil,
      recognizedBy: LDOrganization? = nil
   ) {
      self.type = type
      self.name = name
      self.url = url
      self.description = description
      self.recognizedBy = recognizedBy
   }
}
