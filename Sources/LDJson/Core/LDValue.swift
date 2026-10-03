import Foundation

/// A polymorphic container for Schema.org properties that can accept:
/// - A single value of type `T`
/// - Multiple values `[T]`
/// - A plain string / text representation (common in Schema.org when an entity is simplified to its name or URL)
///
/// Marked `indirect` to safely support recursive Schema.org graph definitions (e.g. `LDReview` referencing `LDReview`).
public indirect enum LDValue<T: Encodable & Sendable>: LDJsonExportable, Sendable {
   case single(T)
   case multiple([T])
   case text(String)

   public func encode(to encoder: Encoder) throws {
      var container = encoder.singleValueContainer()
      switch self {
      case .single(let value):
         try container.encode(value)
      case .multiple(let values):
         try container.encode(values)
      case .text(let text):
         try container.encode(text)
      }
   }
}

// MARK: - ExpressibleBy Literals for Ergonomics

extension LDValue: ExpressibleByExtendedGraphemeClusterLiteral where T == String {
   public init(extendedGraphemeClusterLiteral value: String) {
      self = .single(value)
   }
}

extension LDValue: ExpressibleByUnicodeScalarLiteral where T == String {
   public init(unicodeScalarLiteral value: String) {
      self = .single(value)
   }
}

extension LDValue: ExpressibleByStringLiteral where T == String {
   public init(stringLiteral value: String) {
      self = .single(value)
   }
}

extension LDValue: ExpressibleByArrayLiteral {
   public init(arrayLiteral elements: T...) {
      self = .multiple(elements)
   }
}

// MARK: - Convenience Helpers

extension LDValue {
   public static func of(_ value: T) -> LDValue<T> {
      .single(value)
   }

   public static func of(_ values: [T]) -> LDValue<T> {
      .multiple(values)
   }

   public static func ofText(_ text: String) -> LDValue<T> {
      .text(text)
   }
}
