import Foundation

public struct LDSearchAction: JsonLDExportable, Sendable {

   enum CodingKeys: String, CodingKey {
      case target
      case type = "@type"
      case queryInput = "query-input"
   }

   public let type: String
   public let target: LDEntryPoint
   public let queryInput: String

   public init(
      type: String = "SearchAction",
      target: LDEntryPoint,
      queryInput: String = "required name=search_term_string"
   ) {
      self.type = type
      self.target = target
      self.queryInput = queryInput
   }
}
