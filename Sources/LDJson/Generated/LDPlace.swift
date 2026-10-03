import Foundation

/// Entities that have a somewhat fixed, physical extension.
public struct LDPlace: LDSchemaThing, Sendable {

   enum CodingKeys: String, CodingKey {
      case context = "@context"
      case type = "@type"
      case additionalProperty = "additionalProperty"
      case address = "address"
      case aggregateRating = "aggregateRating"
      case amenityFeature = "amenityFeature"
      case branchCode = "branchCode"
      case containedIn = "containedIn"
      case containedInPlace = "containedInPlace"
      case containsPlace = "containsPlace"
      case event = "event"
      case events = "events"
      case faxNumber = "faxNumber"
      case geo = "geo"
      case geoContains = "geoContains"
      case geoCoveredBy = "geoCoveredBy"
      case geoCovers = "geoCovers"
      case geoCrosses = "geoCrosses"
      case geoDisjoint = "geoDisjoint"
      case geoEquals = "geoEquals"
      case geoIntersects = "geoIntersects"
      case geoOverlaps = "geoOverlaps"
      case geoTouches = "geoTouches"
      case geoWithin = "geoWithin"
      case globalLocationNumber = "globalLocationNumber"
      case hasCertification = "hasCertification"
      case hasDriveThroughService = "hasDriveThroughService"
      case hasGS1DigitalLink = "hasGS1DigitalLink"
      case hasMap = "hasMap"
      case isAccessibleForFree = "isAccessibleForFree"
      case isicV4 = "isicV4"
      case keywords = "keywords"
      case latitude = "latitude"
      case logo = "logo"
      case longitude = "longitude"
      case map = "map"
      case maps = "maps"
      case maximumAttendeeCapacity = "maximumAttendeeCapacity"
      case openingHoursSpecification = "openingHoursSpecification"
      case photo = "photo"
      case photos = "photos"
      case publicAccess = "publicAccess"
      case review = "review"
      case reviews = "reviews"
      case slogan = "slogan"
      case smokingAllowed = "smokingAllowed"
      case specialOpeningHoursSpecification = "specialOpeningHoursSpecification"
      case telephone = "telephone"
      case tourBookingPage = "tourBookingPage"
   }

   public let context: String
   public let type: String
   public let additionalProperty: String?
   public let address: LDEither<LDPostalAddress, String>?
   public let aggregateRating: LDValue<LDAggregateRating>?
   public let amenityFeature: String?
   public let branchCode: String?
   public let containedIn: LDValue<LDPlace>?
   public let containedInPlace: LDValue<LDPlace>?
   public let containsPlace: LDValue<LDPlace>?
   public let event: LDValue<LDEvent>?
   public let events: LDValue<LDEvent>?
   public let faxNumber: String?
   public let geo: String?
   public let geoContains: String?
   public let geoCoveredBy: String?
   public let geoCovers: String?
   public let geoCrosses: String?
   public let geoDisjoint: String?
   public let geoEquals: String?
   public let geoIntersects: String?
   public let geoOverlaps: String?
   public let geoTouches: String?
   public let geoWithin: String?
   public let globalLocationNumber: String?
   public let hasCertification: String?
   public let hasDriveThroughService: Bool?
   public let hasGS1DigitalLink: String?
   public let hasMap: String?
   public let isAccessibleForFree: Bool?
   public let isicV4: String?
   public let keywords: String?
   public let latitude: LDEither<Double, String>?
   public let logo: LDEither<LDImageObject, String>?
   public let longitude: LDEither<Double, String>?
   public let map: String?
   public let maps: String?
   public let maximumAttendeeCapacity: Double?
   public let openingHoursSpecification: String?
   public let photo: String?
   public let photos: String?
   public let publicAccess: Bool?
   public let review: LDValue<LDReview>?
   public let reviews: LDValue<LDReview>?
   public let slogan: String?
   public let smokingAllowed: Bool?
   public let specialOpeningHoursSpecification: String?
   public let telephone: String?
   public let tourBookingPage: String?

   public init(
      context: String = "https://schema.org",
      type: String = "Place",
      additionalProperty: String? = nil,
      address: LDEither<LDPostalAddress, String>? = nil,
      aggregateRating: LDValue<LDAggregateRating>? = nil,
      amenityFeature: String? = nil,
      branchCode: String? = nil,
      containedIn: LDValue<LDPlace>? = nil,
      containedInPlace: LDValue<LDPlace>? = nil,
      containsPlace: LDValue<LDPlace>? = nil,
      event: LDValue<LDEvent>? = nil,
      events: LDValue<LDEvent>? = nil,
      faxNumber: String? = nil,
      geo: String? = nil,
      geoContains: String? = nil,
      geoCoveredBy: String? = nil,
      geoCovers: String? = nil,
      geoCrosses: String? = nil,
      geoDisjoint: String? = nil,
      geoEquals: String? = nil,
      geoIntersects: String? = nil,
      geoOverlaps: String? = nil,
      geoTouches: String? = nil,
      geoWithin: String? = nil,
      globalLocationNumber: String? = nil,
      hasCertification: String? = nil,
      hasDriveThroughService: Bool? = nil,
      hasGS1DigitalLink: String? = nil,
      hasMap: String? = nil,
      isAccessibleForFree: Bool? = nil,
      isicV4: String? = nil,
      keywords: String? = nil,
      latitude: LDEither<Double, String>? = nil,
      logo: LDEither<LDImageObject, String>? = nil,
      longitude: LDEither<Double, String>? = nil,
      map: String? = nil,
      maps: String? = nil,
      maximumAttendeeCapacity: Double? = nil,
      openingHoursSpecification: String? = nil,
      photo: String? = nil,
      photos: String? = nil,
      publicAccess: Bool? = nil,
      review: LDValue<LDReview>? = nil,
      reviews: LDValue<LDReview>? = nil,
      slogan: String? = nil,
      smokingAllowed: Bool? = nil,
      specialOpeningHoursSpecification: String? = nil,
      telephone: String? = nil,
      tourBookingPage: String? = nil
   ) {
      self.context = context
      self.type = type
      self.additionalProperty = additionalProperty
      self.address = address
      self.aggregateRating = aggregateRating
      self.amenityFeature = amenityFeature
      self.branchCode = branchCode
      self.containedIn = containedIn
      self.containedInPlace = containedInPlace
      self.containsPlace = containsPlace
      self.event = event
      self.events = events
      self.faxNumber = faxNumber
      self.geo = geo
      self.geoContains = geoContains
      self.geoCoveredBy = geoCoveredBy
      self.geoCovers = geoCovers
      self.geoCrosses = geoCrosses
      self.geoDisjoint = geoDisjoint
      self.geoEquals = geoEquals
      self.geoIntersects = geoIntersects
      self.geoOverlaps = geoOverlaps
      self.geoTouches = geoTouches
      self.geoWithin = geoWithin
      self.globalLocationNumber = globalLocationNumber
      self.hasCertification = hasCertification
      self.hasDriveThroughService = hasDriveThroughService
      self.hasGS1DigitalLink = hasGS1DigitalLink
      self.hasMap = hasMap
      self.isAccessibleForFree = isAccessibleForFree
      self.isicV4 = isicV4
      self.keywords = keywords
      self.latitude = latitude
      self.logo = logo
      self.longitude = longitude
      self.map = map
      self.maps = maps
      self.maximumAttendeeCapacity = maximumAttendeeCapacity
      self.openingHoursSpecification = openingHoursSpecification
      self.photo = photo
      self.photos = photos
      self.publicAccess = publicAccess
      self.review = review
      self.reviews = reviews
      self.slogan = slogan
      self.smokingAllowed = smokingAllowed
      self.specialOpeningHoursSpecification = specialOpeningHoursSpecification
      self.telephone = telephone
      self.tourBookingPage = tourBookingPage
   }
}
