import Foundation

/// Base protocol for all Schema.org entities.
/// Guarantees that every Schema.org type carries `@context` and `@type`.
public protocol LDSchemaThing: JsonLDExportable, Sendable {
   var context: String { get }
   var type: String { get }
}

extension LDSchemaThing {
   public var context: String {
      "https://schema.org"
   }
}
