import Foundation


public struct JsonLD: Sendable {

   public var data: [any JsonLDExportable]

   public init(data: [any JsonLDExportable])
   {
      self.data = data
   }

   public func prettyJson() -> String {

      var result = """

                   [
                   """

      for (index, element) in data.enumerated() {

         result += """

                   \(element.pretty)
                   """
         if index < data.count-1 { result += "," }
      }

      result += """

                ]

                """

      return result
   }
}
