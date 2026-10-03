import Foundation

public struct LDEntryPoint: JsonLDExportable, Sendable {

   enum CodingKeys: String, CodingKey {
      case urlTemplate
      case type = "@type"
   }

   public let type: String
   public let urlTemplate: String

   public init(
      type: String = "EntryPoint",
      urlTemplate: String
   ) {
      self.type = type
      self.urlTemplate = urlTemplate
   }
}
