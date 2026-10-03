import Foundation

public struct LDBreadcrumbList: JsonLDExportable, Sendable {

   enum CodingKeys: String, CodingKey {
      case itemListElement
      case type = "@type"
      case context = "@context"
   }

   public let context: String = "https://schema.org"
   public let type: String
   public let itemListElement: [LDListItem]

   public init(
      type: String = "BreadcrumbList",
      itemListElement: [LDListItem]
   ) {
      self.type = type
      self.itemListElement = itemListElement
   }
}
