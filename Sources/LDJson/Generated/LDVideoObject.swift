import Foundation

/// A video file.
public struct LDVideoObject: LDSchemaThing, Sendable {

   enum CodingKeys: String, CodingKey {
      case context = "@context"
      case type = "@type"
      case actor = "actor"
      case actors = "actors"
      case caption = "caption"
      case director = "director"
      case directors = "directors"
      case embeddedTextCaption = "embeddedTextCaption"
      case musicBy = "musicBy"
      case transcript = "transcript"
      case videoFrameSize = "videoFrameSize"
      case videoQuality = "videoQuality"
   }

   public let context: String
   public let type: String
   public let actor: String?
   public let actors: LDValue<LDPerson>?
   public let caption: LDEither<LDMediaObject, String>?
   public let director: LDValue<LDPerson>?
   public let directors: LDValue<LDPerson>?
   public let embeddedTextCaption: String?
   public let musicBy: String?
   public let transcript: String?
   public let videoFrameSize: String?
   public let videoQuality: String?

   public init(
      context: String = "https://schema.org",
      type: String = "VideoObject",
      actor: String? = nil,
      actors: LDValue<LDPerson>? = nil,
      caption: LDEither<LDMediaObject, String>? = nil,
      director: LDValue<LDPerson>? = nil,
      directors: LDValue<LDPerson>? = nil,
      embeddedTextCaption: String? = nil,
      musicBy: String? = nil,
      transcript: String? = nil,
      videoFrameSize: String? = nil,
      videoQuality: String? = nil
   ) {
      self.context = context
      self.type = type
      self.actor = actor
      self.actors = actors
      self.caption = caption
      self.director = director
      self.directors = directors
      self.embeddedTextCaption = embeddedTextCaption
      self.musicBy = musicBy
      self.transcript = transcript
      self.videoFrameSize = videoFrameSize
      self.videoQuality = videoQuality
   }
}
