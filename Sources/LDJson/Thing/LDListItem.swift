import Foundation

public struct LDListItem: LDJsonExportable, Sendable {

   enum CodingKeys: String, CodingKey {
      case position, item
      case type = "@type"
      case context = "@context"
   }

   public let context: String = "https://schema.org"
   public let type: String
   public let position: Int
   public let item: LDItem

   public init(
      type: String = "ListItem",
      position: Int,
      item: LDItem
   ) {
      self.type = type
      self.position = position
      self.item = item
   }
}
