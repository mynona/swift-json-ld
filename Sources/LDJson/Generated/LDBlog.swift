import Foundation

/// A [blog](https://en.wikipedia.org/wiki/Blog), sometimes known as a "weblog". Note that the individual posts ([[BlogPosting]]s) in a [[Blog]] are often colloquially referred to by the same term.
public struct LDBlog: LDSchemaThing, Sendable {

   enum CodingKeys: String, CodingKey {
      case context = "@context"
      case type = "@type"
      case blogPost = "blogPost"
      case blogPosts = "blogPosts"
      case issn = "issn"
   }

   public let context: String
   public let type: String
   public let blogPost: String?
   public let blogPosts: String?
   public let issn: String?

   public init(
      context: String = "https://schema.org",
      type: String = "Blog",
      blogPost: String? = nil,
      blogPosts: String? = nil,
      issn: String? = nil
   ) {
      self.context = context
      self.type = type
      self.blogPost = blogPost
      self.blogPosts = blogPosts
      self.issn = issn
   }
}
