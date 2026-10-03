import Foundation

/// A polymorphic container for Schema.org properties that can accept one of two distinct types `A` or `B`.
/// E.g., `author` can be either an `LDPerson` or an `LDOrganization`.
///
/// Marked `indirect` to safely support mutually recursive Schema.org types.
public indirect enum LDEither<A: Encodable & Sendable, B: Encodable & Sendable>: LDJsonExportable, Sendable {
   case first(A)
   case second(B)

   public func encode(to encoder: Encoder) throws {
      var container = encoder.singleValueContainer()
      switch self {
      case .first(let a):
         try container.encode(a)
      case .second(let b):
         try container.encode(b)
      }
   }
}
