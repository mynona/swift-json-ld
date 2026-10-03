import Foundation

/// Represents an ARD manifest containing an array of ARD entries.
/// Typically served at `/.well-known/ard.json` per the ARD specification.
public struct LDARDManifest: LDJsonExportable, Sendable {

   public let entries: [LDARDEntry]

   public init(entries: [LDARDEntry]) {
      self.entries = entries
   }
}
