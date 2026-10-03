import Foundation

public struct LDOrganization: LDJsonExportable, Sendable {
   
   enum CodingKeys: String, CodingKey {
      case url, logo, name, legalName
      case type = "@type"
      case context = "@context"
   }
   
   public let context: String = "https://schema.org"
   public let type: String
   public let url: String?
   public let logo: String?
   public let name: String?
   public let legalName: String?
   
   public init(
      type: String = "Organization",
      url: String? = nil,
      logo: String? = nil,
      name: String? = nil,
      legalName: String? = nil
   ) {
      self.type = type
      self.url = url
      self.logo = logo
      self.name = name
      self.legalName = legalName
   }
}
