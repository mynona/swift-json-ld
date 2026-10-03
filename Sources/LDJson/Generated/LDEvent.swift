import Foundation

/// An event happening at a certain time and location, such as a concert, lecture, or festival. Ticketing information may be added via the [[offers]] property. Repeated events may be structured as separate Event objects.
public struct LDEvent: LDSchemaThing, Sendable {

   enum CodingKeys: String, CodingKey {
      case context = "@context"
      case type = "@type"
      case about = "about"
      case actor = "actor"
      case aggregateRating = "aggregateRating"
      case attendee = "attendee"
      case attendees = "attendees"
      case audience = "audience"
      case composer = "composer"
      case contributor = "contributor"
      case director = "director"
      case doorTime = "doorTime"
      case duration = "duration"
      case endDate = "endDate"
      case eventAttendanceMode = "eventAttendanceMode"
      case eventSchedule = "eventSchedule"
      case eventStatus = "eventStatus"
      case funder = "funder"
      case funding = "funding"
      case hasParticipationOffer = "hasParticipationOffer"
      case hasSponsorshipOffer = "hasSponsorshipOffer"
      case inLanguage = "inLanguage"
      case isAccessibleForFree = "isAccessibleForFree"
      case keywords = "keywords"
      case location = "location"
      case maximumAttendeeCapacity = "maximumAttendeeCapacity"
      case maximumPhysicalAttendeeCapacity = "maximumPhysicalAttendeeCapacity"
      case maximumVirtualAttendeeCapacity = "maximumVirtualAttendeeCapacity"
      case offers = "offers"
      case organizer = "organizer"
      case performer = "performer"
      case performers = "performers"
      case previousStartDate = "previousStartDate"
      case recordedIn = "recordedIn"
      case remainingAttendeeCapacity = "remainingAttendeeCapacity"
      case review = "review"
      case sponsor = "sponsor"
      case startDate = "startDate"
      case subEvent = "subEvent"
      case subEvents = "subEvents"
      case superEvent = "superEvent"
      case translator = "translator"
      case typicalAgeRange = "typicalAgeRange"
      case workFeatured = "workFeatured"
      case workPerformed = "workPerformed"
   }

   public let context: String
   public let type: String
   public let about: LDValue<LDThing>?
   public let actor: String?
   public let aggregateRating: LDValue<LDAggregateRating>?
   public let attendee: LDEither<LDOrganization, LDPerson>?
   public let attendees: LDEither<LDOrganization, LDPerson>?
   public let audience: String?
   public let composer: LDEither<LDOrganization, LDPerson>?
   public let contributor: LDEither<LDOrganization, LDPerson>?
   public let director: LDValue<LDPerson>?
   public let doorTime: LDEither<String, String>?
   public let duration: String?
   public let endDate: LDEither<String, String>?
   public let eventAttendanceMode: String?
   public let eventSchedule: String?
   public let eventStatus: String?
   public let funder: LDEither<LDOrganization, LDPerson>?
   public let funding: String?
   public let hasParticipationOffer: LDValue<LDOffer>?
   public let hasSponsorshipOffer: LDValue<LDOffer>?
   public let inLanguage: String?
   public let isAccessibleForFree: Bool?
   public let keywords: String?
   public let location: String?
   public let maximumAttendeeCapacity: Double?
   public let maximumPhysicalAttendeeCapacity: Double?
   public let maximumVirtualAttendeeCapacity: Double?
   public let offers: String?
   public let organizer: LDEither<LDOrganization, LDPerson>?
   public let performer: LDEither<LDOrganization, LDPerson>?
   public let performers: LDEither<LDOrganization, LDPerson>?
   public let previousStartDate: LDEither<String, String>?
   public let recordedIn: LDValue<LDCreativeWork>?
   public let remainingAttendeeCapacity: Double?
   public let review: LDValue<LDReview>?
   public let sponsor: LDEither<LDOrganization, LDPerson>?
   public let startDate: LDEither<String, String>?
   public let subEvent: LDValue<LDEvent>?
   public let subEvents: LDValue<LDEvent>?
   public let superEvent: LDValue<LDEvent>?
   public let translator: LDEither<LDOrganization, LDPerson>?
   public let typicalAgeRange: String?
   public let workFeatured: LDValue<LDCreativeWork>?
   public let workPerformed: LDValue<LDCreativeWork>?

   public init(
      context: String = "https://schema.org",
      type: String = "Event",
      about: LDValue<LDThing>? = nil,
      actor: String? = nil,
      aggregateRating: LDValue<LDAggregateRating>? = nil,
      attendee: LDEither<LDOrganization, LDPerson>? = nil,
      attendees: LDEither<LDOrganization, LDPerson>? = nil,
      audience: String? = nil,
      composer: LDEither<LDOrganization, LDPerson>? = nil,
      contributor: LDEither<LDOrganization, LDPerson>? = nil,
      director: LDValue<LDPerson>? = nil,
      doorTime: LDEither<String, String>? = nil,
      duration: String? = nil,
      endDate: LDEither<String, String>? = nil,
      eventAttendanceMode: String? = nil,
      eventSchedule: String? = nil,
      eventStatus: String? = nil,
      funder: LDEither<LDOrganization, LDPerson>? = nil,
      funding: String? = nil,
      hasParticipationOffer: LDValue<LDOffer>? = nil,
      hasSponsorshipOffer: LDValue<LDOffer>? = nil,
      inLanguage: String? = nil,
      isAccessibleForFree: Bool? = nil,
      keywords: String? = nil,
      location: String? = nil,
      maximumAttendeeCapacity: Double? = nil,
      maximumPhysicalAttendeeCapacity: Double? = nil,
      maximumVirtualAttendeeCapacity: Double? = nil,
      offers: String? = nil,
      organizer: LDEither<LDOrganization, LDPerson>? = nil,
      performer: LDEither<LDOrganization, LDPerson>? = nil,
      performers: LDEither<LDOrganization, LDPerson>? = nil,
      previousStartDate: LDEither<String, String>? = nil,
      recordedIn: LDValue<LDCreativeWork>? = nil,
      remainingAttendeeCapacity: Double? = nil,
      review: LDValue<LDReview>? = nil,
      sponsor: LDEither<LDOrganization, LDPerson>? = nil,
      startDate: LDEither<String, String>? = nil,
      subEvent: LDValue<LDEvent>? = nil,
      subEvents: LDValue<LDEvent>? = nil,
      superEvent: LDValue<LDEvent>? = nil,
      translator: LDEither<LDOrganization, LDPerson>? = nil,
      typicalAgeRange: String? = nil,
      workFeatured: LDValue<LDCreativeWork>? = nil,
      workPerformed: LDValue<LDCreativeWork>? = nil
   ) {
      self.context = context
      self.type = type
      self.about = about
      self.actor = actor
      self.aggregateRating = aggregateRating
      self.attendee = attendee
      self.attendees = attendees
      self.audience = audience
      self.composer = composer
      self.contributor = contributor
      self.director = director
      self.doorTime = doorTime
      self.duration = duration
      self.endDate = endDate
      self.eventAttendanceMode = eventAttendanceMode
      self.eventSchedule = eventSchedule
      self.eventStatus = eventStatus
      self.funder = funder
      self.funding = funding
      self.hasParticipationOffer = hasParticipationOffer
      self.hasSponsorshipOffer = hasSponsorshipOffer
      self.inLanguage = inLanguage
      self.isAccessibleForFree = isAccessibleForFree
      self.keywords = keywords
      self.location = location
      self.maximumAttendeeCapacity = maximumAttendeeCapacity
      self.maximumPhysicalAttendeeCapacity = maximumPhysicalAttendeeCapacity
      self.maximumVirtualAttendeeCapacity = maximumVirtualAttendeeCapacity
      self.offers = offers
      self.organizer = organizer
      self.performer = performer
      self.performers = performers
      self.previousStartDate = previousStartDate
      self.recordedIn = recordedIn
      self.remainingAttendeeCapacity = remainingAttendeeCapacity
      self.review = review
      self.sponsor = sponsor
      self.startDate = startDate
      self.subEvent = subEvent
      self.subEvents = subEvents
      self.superEvent = superEvent
      self.translator = translator
      self.typicalAgeRange = typicalAgeRange
      self.workFeatured = workFeatured
      self.workPerformed = workPerformed
   }
}
