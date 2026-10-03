import Foundation

/// The most generic kind of creative work, including books, movies, photographs, software programs, etc.
public struct LDCreativeWork: LDSchemaThing, Sendable {

   enum CodingKeys: String, CodingKey {
      case context = "@context"
      case type = "@type"
      case about = "about"
      case abstract = "abstract"
      case accessMode = "accessMode"
      case accessModeSufficient = "accessModeSufficient"
      case accessibilityAPI = "accessibilityAPI"
      case accessibilityControl = "accessibilityControl"
      case accessibilityFeature = "accessibilityFeature"
      case accessibilityHazard = "accessibilityHazard"
      case accessibilitySummary = "accessibilitySummary"
      case accountablePerson = "accountablePerson"
      case acquireLicensePage = "acquireLicensePage"
      case aggregateRating = "aggregateRating"
      case alternativeHeadline = "alternativeHeadline"
      case archivedAt = "archivedAt"
      case assesses = "assesses"
      case associatedMedia = "associatedMedia"
      case audience = "audience"
      case audio = "audio"
      case author = "author"
      case award = "award"
      case awards = "awards"
      case character = "character"
      case citation = "citation"
      case comment = "comment"
      case commentCount = "commentCount"
      case conditionsOfAccess = "conditionsOfAccess"
      case contentLocation = "contentLocation"
      case contentRating = "contentRating"
      case contentReferenceTime = "contentReferenceTime"
      case contributor = "contributor"
      case copyrightHolder = "copyrightHolder"
      case copyrightNotice = "copyrightNotice"
      case copyrightYear = "copyrightYear"
      case correction = "correction"
      case countryOfOrigin = "countryOfOrigin"
      case creativeWorkStatus = "creativeWorkStatus"
      case creator = "creator"
      case creditText = "creditText"
      case dateCreated = "dateCreated"
      case dateModified = "dateModified"
      case datePublished = "datePublished"
      case digitalSourceType = "digitalSourceType"
      case discussionUrl = "discussionUrl"
      case displayLocation = "displayLocation"
      case editEIDR = "editEIDR"
      case editor = "editor"
      case educationalAlignment = "educationalAlignment"
      case educationalLevel = "educationalLevel"
      case educationalUse = "educationalUse"
      case encoding = "encoding"
      case encodingFormat = "encodingFormat"
      case encodings = "encodings"
      case exampleOfWork = "exampleOfWork"
      case expires = "expires"
      case fileFormat = "fileFormat"
      case funder = "funder"
      case funding = "funding"
      case genre = "genre"
      case hasPart = "hasPart"
      case headline = "headline"
      case inLanguage = "inLanguage"
      case interactionStatistic = "interactionStatistic"
      case interactivityType = "interactivityType"
      case interpretedAsClaim = "interpretedAsClaim"
      case isAccessibleForFree = "isAccessibleForFree"
      case isBasedOn = "isBasedOn"
      case isBasedOnUrl = "isBasedOnUrl"
      case isFamilyFriendly = "isFamilyFriendly"
      case isPartOf = "isPartOf"
      case keywords = "keywords"
      case learningResourceType = "learningResourceType"
      case license = "license"
      case locationCreated = "locationCreated"
      case mainEntity = "mainEntity"
      case maintainer = "maintainer"
      case material = "material"
      case materialExtent = "materialExtent"
      case mentions = "mentions"
      case offers = "offers"
      case pattern = "pattern"
      case position = "position"
      case producer = "producer"
      case provider = "provider"
      case publication = "publication"
      case publisher = "publisher"
      case publisherImprint = "publisherImprint"
      case publishingPrinciples = "publishingPrinciples"
      case recordedAt = "recordedAt"
      case releasedEvent = "releasedEvent"
      case review = "review"
      case reviews = "reviews"
      case schemaVersion = "schemaVersion"
      case sdDatePublished = "sdDatePublished"
      case sdLicense = "sdLicense"
      case sdPublisher = "sdPublisher"
      case size = "size"
      case sourceOrganization = "sourceOrganization"
      case spatial = "spatial"
      case spatialCoverage = "spatialCoverage"
      case sponsor = "sponsor"
      case teaches = "teaches"
      case temporal = "temporal"
      case temporalCoverage = "temporalCoverage"
      case text = "text"
      case thumbnail = "thumbnail"
      case thumbnailUrl = "thumbnailUrl"
      case timeRequired = "timeRequired"
      case translationOfWork = "translationOfWork"
      case translator = "translator"
      case typicalAgeRange = "typicalAgeRange"
      case usageInfo = "usageInfo"
      case version = "version"
      case video = "video"
      case wordCount = "wordCount"
      case workExample = "workExample"
      case workTranslation = "workTranslation"
   }

   public let context: String
   public let type: String
   public let about: LDValue<LDThing>?
   public let abstract: String?
   public let accessMode: String?
   public let accessModeSufficient: String?
   public let accessibilityAPI: String?
   public let accessibilityControl: String?
   public let accessibilityFeature: String?
   public let accessibilityHazard: String?
   public let accessibilitySummary: String?
   public let accountablePerson: LDValue<LDPerson>?
   public let acquireLicensePage: LDEither<LDCreativeWork, String>?
   public let aggregateRating: LDValue<LDAggregateRating>?
   public let alternativeHeadline: String?
   public let archivedAt: LDEither<String, LDWebPage>?
   public let assesses: String?
   public let associatedMedia: LDValue<LDMediaObject>?
   public let audience: String?
   public let audio: String?
   public let author: LDEither<LDOrganization, LDPerson>?
   public let award: String?
   public let awards: String?
   public let character: LDValue<LDPerson>?
   public let citation: LDEither<LDCreativeWork, String>?
   public let comment: String?
   public let commentCount: Double?
   public let conditionsOfAccess: String?
   public let contentLocation: LDValue<LDPlace>?
   public let contentRating: LDEither<LDRating, String>?
   public let contentReferenceTime: String?
   public let contributor: LDEither<LDOrganization, LDPerson>?
   public let copyrightHolder: LDEither<LDOrganization, LDPerson>?
   public let copyrightNotice: String?
   public let copyrightYear: Double?
   public let correction: String?
   public let countryOfOrigin: String?
   public let creativeWorkStatus: String?
   public let creator: LDEither<LDOrganization, LDPerson>?
   public let creditText: String?
   public let dateCreated: LDEither<String, String>?
   public let dateModified: LDEither<String, String>?
   public let datePublished: LDEither<String, String>?
   public let digitalSourceType: String?
   public let discussionUrl: String?
   public let displayLocation: LDValue<LDPlace>?
   public let editEIDR: LDEither<String, String>?
   public let editor: LDValue<LDPerson>?
   public let educationalAlignment: String?
   public let educationalLevel: String?
   public let educationalUse: String?
   public let encoding: LDValue<LDMediaObject>?
   public let encodingFormat: LDEither<String, String>?
   public let encodings: LDValue<LDMediaObject>?
   public let exampleOfWork: LDValue<LDCreativeWork>?
   public let expires: LDEither<String, String>?
   public let fileFormat: LDEither<String, String>?
   public let funder: LDEither<LDOrganization, LDPerson>?
   public let funding: String?
   public let genre: String?
   public let hasPart: LDValue<LDCreativeWork>?
   public let headline: String?
   public let inLanguage: String?
   public let interactionStatistic: String?
   public let interactivityType: String?
   public let interpretedAsClaim: String?
   public let isAccessibleForFree: Bool?
   public let isBasedOn: String?
   public let isBasedOnUrl: String?
   public let isFamilyFriendly: Bool?
   public let isPartOf: LDEither<LDCreativeWork, String>?
   public let keywords: String?
   public let learningResourceType: String?
   public let license: LDEither<LDCreativeWork, String>?
   public let locationCreated: LDValue<LDPlace>?
   public let mainEntity: LDValue<LDThing>?
   public let maintainer: LDEither<LDOrganization, LDPerson>?
   public let material: String?
   public let materialExtent: String?
   public let mentions: LDValue<LDThing>?
   public let offers: String?
   public let pattern: String?
   public let position: LDEither<Double, String>?
   public let producer: LDEither<LDOrganization, LDPerson>?
   public let provider: LDEither<LDOrganization, LDPerson>?
   public let publication: String?
   public let publisher: LDEither<LDOrganization, LDPerson>?
   public let publisherImprint: LDValue<LDOrganization>?
   public let publishingPrinciples: LDEither<LDCreativeWork, String>?
   public let recordedAt: LDValue<LDEvent>?
   public let releasedEvent: String?
   public let review: LDValue<LDReview>?
   public let reviews: LDValue<LDReview>?
   public let schemaVersion: LDEither<String, String>?
   public let sdDatePublished: String?
   public let sdLicense: LDEither<LDCreativeWork, String>?
   public let sdPublisher: LDEither<LDOrganization, LDPerson>?
   public let size: String?
   public let sourceOrganization: LDValue<LDOrganization>?
   public let spatial: LDValue<LDPlace>?
   public let spatialCoverage: LDValue<LDPlace>?
   public let sponsor: LDEither<LDOrganization, LDPerson>?
   public let teaches: String?
   public let temporal: LDEither<String, String>?
   public let temporalCoverage: String?
   public let text: String?
   public let thumbnail: LDValue<LDImageObject>?
   public let thumbnailUrl: String?
   public let timeRequired: String?
   public let translationOfWork: LDValue<LDCreativeWork>?
   public let translator: LDEither<LDOrganization, LDPerson>?
   public let typicalAgeRange: String?
   public let usageInfo: LDEither<LDCreativeWork, String>?
   public let version: LDEither<Double, String>?
   public let video: String?
   public let wordCount: Double?
   public let workExample: LDValue<LDCreativeWork>?
   public let workTranslation: LDValue<LDCreativeWork>?

   public init(
      context: String = "https://schema.org",
      type: String = "CreativeWork",
      about: LDValue<LDThing>? = nil,
      abstract: String? = nil,
      accessMode: String? = nil,
      accessModeSufficient: String? = nil,
      accessibilityAPI: String? = nil,
      accessibilityControl: String? = nil,
      accessibilityFeature: String? = nil,
      accessibilityHazard: String? = nil,
      accessibilitySummary: String? = nil,
      accountablePerson: LDValue<LDPerson>? = nil,
      acquireLicensePage: LDEither<LDCreativeWork, String>? = nil,
      aggregateRating: LDValue<LDAggregateRating>? = nil,
      alternativeHeadline: String? = nil,
      archivedAt: LDEither<String, LDWebPage>? = nil,
      assesses: String? = nil,
      associatedMedia: LDValue<LDMediaObject>? = nil,
      audience: String? = nil,
      audio: String? = nil,
      author: LDEither<LDOrganization, LDPerson>? = nil,
      award: String? = nil,
      awards: String? = nil,
      character: LDValue<LDPerson>? = nil,
      citation: LDEither<LDCreativeWork, String>? = nil,
      comment: String? = nil,
      commentCount: Double? = nil,
      conditionsOfAccess: String? = nil,
      contentLocation: LDValue<LDPlace>? = nil,
      contentRating: LDEither<LDRating, String>? = nil,
      contentReferenceTime: String? = nil,
      contributor: LDEither<LDOrganization, LDPerson>? = nil,
      copyrightHolder: LDEither<LDOrganization, LDPerson>? = nil,
      copyrightNotice: String? = nil,
      copyrightYear: Double? = nil,
      correction: String? = nil,
      countryOfOrigin: String? = nil,
      creativeWorkStatus: String? = nil,
      creator: LDEither<LDOrganization, LDPerson>? = nil,
      creditText: String? = nil,
      dateCreated: LDEither<String, String>? = nil,
      dateModified: LDEither<String, String>? = nil,
      datePublished: LDEither<String, String>? = nil,
      digitalSourceType: String? = nil,
      discussionUrl: String? = nil,
      displayLocation: LDValue<LDPlace>? = nil,
      editEIDR: LDEither<String, String>? = nil,
      editor: LDValue<LDPerson>? = nil,
      educationalAlignment: String? = nil,
      educationalLevel: String? = nil,
      educationalUse: String? = nil,
      encoding: LDValue<LDMediaObject>? = nil,
      encodingFormat: LDEither<String, String>? = nil,
      encodings: LDValue<LDMediaObject>? = nil,
      exampleOfWork: LDValue<LDCreativeWork>? = nil,
      expires: LDEither<String, String>? = nil,
      fileFormat: LDEither<String, String>? = nil,
      funder: LDEither<LDOrganization, LDPerson>? = nil,
      funding: String? = nil,
      genre: String? = nil,
      hasPart: LDValue<LDCreativeWork>? = nil,
      headline: String? = nil,
      inLanguage: String? = nil,
      interactionStatistic: String? = nil,
      interactivityType: String? = nil,
      interpretedAsClaim: String? = nil,
      isAccessibleForFree: Bool? = nil,
      isBasedOn: String? = nil,
      isBasedOnUrl: String? = nil,
      isFamilyFriendly: Bool? = nil,
      isPartOf: LDEither<LDCreativeWork, String>? = nil,
      keywords: String? = nil,
      learningResourceType: String? = nil,
      license: LDEither<LDCreativeWork, String>? = nil,
      locationCreated: LDValue<LDPlace>? = nil,
      mainEntity: LDValue<LDThing>? = nil,
      maintainer: LDEither<LDOrganization, LDPerson>? = nil,
      material: String? = nil,
      materialExtent: String? = nil,
      mentions: LDValue<LDThing>? = nil,
      offers: String? = nil,
      pattern: String? = nil,
      position: LDEither<Double, String>? = nil,
      producer: LDEither<LDOrganization, LDPerson>? = nil,
      provider: LDEither<LDOrganization, LDPerson>? = nil,
      publication: String? = nil,
      publisher: LDEither<LDOrganization, LDPerson>? = nil,
      publisherImprint: LDValue<LDOrganization>? = nil,
      publishingPrinciples: LDEither<LDCreativeWork, String>? = nil,
      recordedAt: LDValue<LDEvent>? = nil,
      releasedEvent: String? = nil,
      review: LDValue<LDReview>? = nil,
      reviews: LDValue<LDReview>? = nil,
      schemaVersion: LDEither<String, String>? = nil,
      sdDatePublished: String? = nil,
      sdLicense: LDEither<LDCreativeWork, String>? = nil,
      sdPublisher: LDEither<LDOrganization, LDPerson>? = nil,
      size: String? = nil,
      sourceOrganization: LDValue<LDOrganization>? = nil,
      spatial: LDValue<LDPlace>? = nil,
      spatialCoverage: LDValue<LDPlace>? = nil,
      sponsor: LDEither<LDOrganization, LDPerson>? = nil,
      teaches: String? = nil,
      temporal: LDEither<String, String>? = nil,
      temporalCoverage: String? = nil,
      text: String? = nil,
      thumbnail: LDValue<LDImageObject>? = nil,
      thumbnailUrl: String? = nil,
      timeRequired: String? = nil,
      translationOfWork: LDValue<LDCreativeWork>? = nil,
      translator: LDEither<LDOrganization, LDPerson>? = nil,
      typicalAgeRange: String? = nil,
      usageInfo: LDEither<LDCreativeWork, String>? = nil,
      version: LDEither<Double, String>? = nil,
      video: String? = nil,
      wordCount: Double? = nil,
      workExample: LDValue<LDCreativeWork>? = nil,
      workTranslation: LDValue<LDCreativeWork>? = nil
   ) {
      self.context = context
      self.type = type
      self.about = about
      self.abstract = abstract
      self.accessMode = accessMode
      self.accessModeSufficient = accessModeSufficient
      self.accessibilityAPI = accessibilityAPI
      self.accessibilityControl = accessibilityControl
      self.accessibilityFeature = accessibilityFeature
      self.accessibilityHazard = accessibilityHazard
      self.accessibilitySummary = accessibilitySummary
      self.accountablePerson = accountablePerson
      self.acquireLicensePage = acquireLicensePage
      self.aggregateRating = aggregateRating
      self.alternativeHeadline = alternativeHeadline
      self.archivedAt = archivedAt
      self.assesses = assesses
      self.associatedMedia = associatedMedia
      self.audience = audience
      self.audio = audio
      self.author = author
      self.award = award
      self.awards = awards
      self.character = character
      self.citation = citation
      self.comment = comment
      self.commentCount = commentCount
      self.conditionsOfAccess = conditionsOfAccess
      self.contentLocation = contentLocation
      self.contentRating = contentRating
      self.contentReferenceTime = contentReferenceTime
      self.contributor = contributor
      self.copyrightHolder = copyrightHolder
      self.copyrightNotice = copyrightNotice
      self.copyrightYear = copyrightYear
      self.correction = correction
      self.countryOfOrigin = countryOfOrigin
      self.creativeWorkStatus = creativeWorkStatus
      self.creator = creator
      self.creditText = creditText
      self.dateCreated = dateCreated
      self.dateModified = dateModified
      self.datePublished = datePublished
      self.digitalSourceType = digitalSourceType
      self.discussionUrl = discussionUrl
      self.displayLocation = displayLocation
      self.editEIDR = editEIDR
      self.editor = editor
      self.educationalAlignment = educationalAlignment
      self.educationalLevel = educationalLevel
      self.educationalUse = educationalUse
      self.encoding = encoding
      self.encodingFormat = encodingFormat
      self.encodings = encodings
      self.exampleOfWork = exampleOfWork
      self.expires = expires
      self.fileFormat = fileFormat
      self.funder = funder
      self.funding = funding
      self.genre = genre
      self.hasPart = hasPart
      self.headline = headline
      self.inLanguage = inLanguage
      self.interactionStatistic = interactionStatistic
      self.interactivityType = interactivityType
      self.interpretedAsClaim = interpretedAsClaim
      self.isAccessibleForFree = isAccessibleForFree
      self.isBasedOn = isBasedOn
      self.isBasedOnUrl = isBasedOnUrl
      self.isFamilyFriendly = isFamilyFriendly
      self.isPartOf = isPartOf
      self.keywords = keywords
      self.learningResourceType = learningResourceType
      self.license = license
      self.locationCreated = locationCreated
      self.mainEntity = mainEntity
      self.maintainer = maintainer
      self.material = material
      self.materialExtent = materialExtent
      self.mentions = mentions
      self.offers = offers
      self.pattern = pattern
      self.position = position
      self.producer = producer
      self.provider = provider
      self.publication = publication
      self.publisher = publisher
      self.publisherImprint = publisherImprint
      self.publishingPrinciples = publishingPrinciples
      self.recordedAt = recordedAt
      self.releasedEvent = releasedEvent
      self.review = review
      self.reviews = reviews
      self.schemaVersion = schemaVersion
      self.sdDatePublished = sdDatePublished
      self.sdLicense = sdLicense
      self.sdPublisher = sdPublisher
      self.size = size
      self.sourceOrganization = sourceOrganization
      self.spatial = spatial
      self.spatialCoverage = spatialCoverage
      self.sponsor = sponsor
      self.teaches = teaches
      self.temporal = temporal
      self.temporalCoverage = temporalCoverage
      self.text = text
      self.thumbnail = thumbnail
      self.thumbnailUrl = thumbnailUrl
      self.timeRequired = timeRequired
      self.translationOfWork = translationOfWork
      self.translator = translator
      self.typicalAgeRange = typicalAgeRange
      self.usageInfo = usageInfo
      self.version = version
      self.video = video
      self.wordCount = wordCount
      self.workExample = workExample
      self.workTranslation = workTranslation
   }
}
