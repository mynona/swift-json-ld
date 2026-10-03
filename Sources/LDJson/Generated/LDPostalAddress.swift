import Foundation

/// The mailing address.
public struct LDPostalAddress: LDSchemaThing, Sendable {

   enum CodingKeys: String, CodingKey {
      case context = "@context"
      case type = "@type"
      case addressCountry = "addressCountry"
      case addressLocality = "addressLocality"
      case addressRegion = "addressRegion"
      case extendedAddress = "extendedAddress"
      case postOfficeBoxNumber = "postOfficeBoxNumber"
      case postalCode = "postalCode"
      case streetAddress = "streetAddress"
   }

   public let context: String
   public let type: String
   public let addressCountry: String?
   public let addressLocality: String?
   public let addressRegion: String?
   public let extendedAddress: String?
   public let postOfficeBoxNumber: String?
   public let postalCode: String?
   public let streetAddress: String?

   public init(
      context: String = "https://schema.org",
      type: String = "PostalAddress",
      addressCountry: String? = nil,
      addressLocality: String? = nil,
      addressRegion: String? = nil,
      extendedAddress: String? = nil,
      postOfficeBoxNumber: String? = nil,
      postalCode: String? = nil,
      streetAddress: String? = nil
   ) {
      self.context = context
      self.type = type
      self.addressCountry = addressCountry
      self.addressLocality = addressLocality
      self.addressRegion = addressRegion
      self.extendedAddress = extendedAddress
      self.postOfficeBoxNumber = postOfficeBoxNumber
      self.postalCode = postalCode
      self.streetAddress = streetAddress
   }
}
