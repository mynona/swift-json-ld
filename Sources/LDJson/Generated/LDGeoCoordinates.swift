import Foundation

/// The geographic coordinates of a place or event.
public struct LDGeoCoordinates: LDSchemaThing, Sendable {

   enum CodingKeys: String, CodingKey {
      case context = "@context"
      case type = "@type"
      case address = "address"
      case addressCountry = "addressCountry"
      case elevation = "elevation"
      case latitude = "latitude"
      case longitude = "longitude"
      case postalCode = "postalCode"
   }

   public let context: String
   public let type: String
   public let address: LDEither<LDPostalAddress, String>?
   public let addressCountry: String?
   public let elevation: LDEither<Double, String>?
   public let latitude: LDEither<Double, String>?
   public let longitude: LDEither<Double, String>?
   public let postalCode: String?

   public init(
      context: String = "https://schema.org",
      type: String = "GeoCoordinates",
      address: LDEither<LDPostalAddress, String>? = nil,
      addressCountry: String? = nil,
      elevation: LDEither<Double, String>? = nil,
      latitude: LDEither<Double, String>? = nil,
      longitude: LDEither<Double, String>? = nil,
      postalCode: String? = nil
   ) {
      self.context = context
      self.type = type
      self.address = address
      self.addressCountry = addressCountry
      self.elevation = elevation
      self.latitude = latitude
      self.longitude = longitude
      self.postalCode = postalCode
   }
}
