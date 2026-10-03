import Foundation

/// An audio file.
public struct LDAudioObject: LDSchemaThing, Sendable {

   enum CodingKeys: String, CodingKey {
      case context = "@context"
      case type = "@type"
      case caption = "caption"
      case embeddedTextCaption = "embeddedTextCaption"
      case transcript = "transcript"
   }

   public let context: String
   public let type: String
   public let caption: LDEither<LDMediaObject, String>?
   public let embeddedTextCaption: String?
   public let transcript: String?

   public init(
      context: String = "https://schema.org",
      type: String = "AudioObject",
      caption: LDEither<LDMediaObject, String>? = nil,
      embeddedTextCaption: String? = nil,
      transcript: String? = nil
   ) {
      self.context = context
      self.type = type
      self.caption = caption
      self.embeddedTextCaption = embeddedTextCaption
      self.transcript = transcript
   }
}
