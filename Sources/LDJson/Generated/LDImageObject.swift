import Foundation

/// An image file.
public struct LDImageObject: LDSchemaThing, Sendable {

   enum CodingKeys: String, CodingKey {
      case context = "@context"
      case type = "@type"
      case caption = "caption"
      case embeddedTextCaption = "embeddedTextCaption"
      case exifData = "exifData"
      case representativeOfPage = "representativeOfPage"
   }

   public let context: String
   public let type: String
   public let caption: LDEither<LDMediaObject, String>?
   public let embeddedTextCaption: String?
   public let exifData: String?
   public let representativeOfPage: Bool?

   public init(
      context: String = "https://schema.org",
      type: String = "ImageObject",
      caption: LDEither<LDMediaObject, String>? = nil,
      embeddedTextCaption: String? = nil,
      exifData: String? = nil,
      representativeOfPage: Bool? = nil
   ) {
      self.context = context
      self.type = type
      self.caption = caption
      self.embeddedTextCaption = embeddedTextCaption
      self.exifData = exifData
      self.representativeOfPage = representativeOfPage
   }
}
