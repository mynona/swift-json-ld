import Foundation

/// The most generic type of item.
public struct LDThing: LDSchemaThing, Sendable {

   enum CodingKeys: String, CodingKey {
      case context = "@context"
      case type = "@type"
      case additionalType = "additionalType"
      case alternateName = "alternateName"
      case `description` = "description"
      case disambiguatingDescription = "disambiguatingDescription"
      case identifier = "identifier"
      case image = "image"
      case mainEntityOfPage = "mainEntityOfPage"
      case name = "name"
      case owner = "owner"
      case potentialAction = "potentialAction"
      case sameAs = "sameAs"
      case subjectOf = "subjectOf"
      case url = "url"
   }

   public let context: String
   public let type: String
   public let additionalType: LDEither<String, String>?
   public let alternateName: String?
   public let `description`: String?
   public let disambiguatingDescription: String?
   public let identifier: String?
   public let image: LDEither<LDImageObject, String>?
   public let mainEntityOfPage: LDEither<LDCreativeWork, String>?
   public let name: String?
   public let owner: LDEither<LDOrganization, LDPerson>?
   public let potentialAction: LDValue<LDAction>?
   public let sameAs: String?
   public let subjectOf: LDEither<LDCreativeWork, LDEvent>?
   public let url: String?

   public init(
      context: String = "https://schema.org",
      type: String = "Thing",
      additionalType: LDEither<String, String>? = nil,
      alternateName: String? = nil,
      `description`: String? = nil,
      disambiguatingDescription: String? = nil,
      identifier: String? = nil,
      image: LDEither<LDImageObject, String>? = nil,
      mainEntityOfPage: LDEither<LDCreativeWork, String>? = nil,
      name: String? = nil,
      owner: LDEither<LDOrganization, LDPerson>? = nil,
      potentialAction: LDValue<LDAction>? = nil,
      sameAs: String? = nil,
      subjectOf: LDEither<LDCreativeWork, LDEvent>? = nil,
      url: String? = nil
   ) {
      self.context = context
      self.type = type
      self.additionalType = additionalType
      self.alternateName = alternateName
      self.`description` = `description`
      self.disambiguatingDescription = disambiguatingDescription
      self.identifier = identifier
      self.image = image
      self.mainEntityOfPage = mainEntityOfPage
      self.name = name
      self.owner = owner
      self.potentialAction = potentialAction
      self.sameAs = sameAs
      self.subjectOf = subjectOf
      self.url = url
   }
}
