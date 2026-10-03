import Foundation

public protocol JsonLDExportable: Encodable, Sendable {
   var pretty: String { get }
}

extension JsonLDExportable {

   public var pretty: String {
      get {
         let encoder = JSONEncoder()
         encoder.outputFormatting = [
            .sortedKeys,
            .withoutEscapingSlashes,
            .prettyPrinted
         ]
         encoder.dateEncodingStrategy = .iso8601
         if let data = try? encoder.encode(self),
            let result = String(data: data, encoding: .utf8) {
            return result
         }
         return ""
      }
   }
}
