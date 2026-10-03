import Foundation

/// A media object, such as an image, video, audio, or text object embedded in a web page or a downloadable dataset i.e. DataDownload. Note that a creative work may have many media objects associated with it on the same web page. For example, a page about a single song (MusicRecording) may have a music video (VideoObject), and a high and low bandwidth audio stream (2 AudioObject's).
public struct LDMediaObject: LDSchemaThing, Sendable {

   enum CodingKeys: String, CodingKey {
      case context = "@context"
      case type = "@type"
      case associatedArticle = "associatedArticle"
      case bitrate = "bitrate"
      case contentSize = "contentSize"
      case contentUrl = "contentUrl"
      case duration = "duration"
      case embedUrl = "embedUrl"
      case encodesCreativeWork = "encodesCreativeWork"
      case encodingFormat = "encodingFormat"
      case endTime = "endTime"
      case height = "height"
      case ineligibleRegion = "ineligibleRegion"
      case interpretedAsClaim = "interpretedAsClaim"
      case playerType = "playerType"
      case productionCompany = "productionCompany"
      case regionsAllowed = "regionsAllowed"
      case requiresSubscription = "requiresSubscription"
      case sha256 = "sha256"
      case startTime = "startTime"
      case uploadDate = "uploadDate"
      case width = "width"
   }

   public let context: String
   public let type: String
   public let associatedArticle: String?
   public let bitrate: String?
   public let contentSize: String?
   public let contentUrl: String?
   public let duration: String?
   public let embedUrl: String?
   public let encodesCreativeWork: LDValue<LDCreativeWork>?
   public let encodingFormat: LDEither<String, String>?
   public let endTime: LDEither<String, String>?
   public let height: String?
   public let ineligibleRegion: String?
   public let interpretedAsClaim: String?
   public let playerType: String?
   public let productionCompany: LDValue<LDOrganization>?
   public let regionsAllowed: LDValue<LDPlace>?
   public let requiresSubscription: String?
   public let sha256: String?
   public let startTime: LDEither<String, String>?
   public let uploadDate: LDEither<String, String>?
   public let width: String?

   public init(
      context: String = "https://schema.org",
      type: String = "MediaObject",
      associatedArticle: String? = nil,
      bitrate: String? = nil,
      contentSize: String? = nil,
      contentUrl: String? = nil,
      duration: String? = nil,
      embedUrl: String? = nil,
      encodesCreativeWork: LDValue<LDCreativeWork>? = nil,
      encodingFormat: LDEither<String, String>? = nil,
      endTime: LDEither<String, String>? = nil,
      height: String? = nil,
      ineligibleRegion: String? = nil,
      interpretedAsClaim: String? = nil,
      playerType: String? = nil,
      productionCompany: LDValue<LDOrganization>? = nil,
      regionsAllowed: LDValue<LDPlace>? = nil,
      requiresSubscription: String? = nil,
      sha256: String? = nil,
      startTime: LDEither<String, String>? = nil,
      uploadDate: LDEither<String, String>? = nil,
      width: String? = nil
   ) {
      self.context = context
      self.type = type
      self.associatedArticle = associatedArticle
      self.bitrate = bitrate
      self.contentSize = contentSize
      self.contentUrl = contentUrl
      self.duration = duration
      self.embedUrl = embedUrl
      self.encodesCreativeWork = encodesCreativeWork
      self.encodingFormat = encodingFormat
      self.endTime = endTime
      self.height = height
      self.ineligibleRegion = ineligibleRegion
      self.interpretedAsClaim = interpretedAsClaim
      self.playerType = playerType
      self.productionCompany = productionCompany
      self.regionsAllowed = regionsAllowed
      self.requiresSubscription = requiresSubscription
      self.sha256 = sha256
      self.startTime = startTime
      self.uploadDate = uploadDate
      self.width = width
   }
}
