import Foundation

public struct LDItem: JsonLDExportable, Sendable {

   enum CodingKeys: String, CodingKey {
      case name
      case id = "@id"
   }

   public let id: String
   public let name: String

   public init(
      id: String,
      name: String
   ) {
      self.id = id
      self.name = name
   }
}
