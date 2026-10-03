import Foundation


public struct LDJson: Sendable {

   public var data: [any LDJsonExportable]

   public init(data: [any LDJsonExportable])
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
