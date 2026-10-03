import Foundation

public struct SchemaOrgGeneratorConfig {
    /// List of legacy handwritten types that we preserve to avoid duplicate symbols or breaking changes
    public static let existingHandwrittenTypes: Set<String> = [
        "Organization",
        "Person",
        "Article",
        "EntryPoint",
        "ListItem",
        "SearchAction",
        "BreadcrumbList",
        "Item",
        "WebSite",
        "SpeakableSpecification",
        "EducationalOccupationalCredential"
    ]

    /// Key Schema.org core classes to generate first in Phase 3
    public static let targetSchemaClasses: [String] = [
        "Thing",
        "Place",
        "Event",
        "CreativeWork",
        "Product",
        "Offer",
        "Review",
        "Action",
        "Intangible",
        "Rating",
        "AggregateRating",
        "PostalAddress",
        "GeoCoordinates",
        "ImageObject",
        "MediaObject",
        "AudioObject",
        "VideoObject",
        "SoftwareApplication",
        "WebPage",
        "Blog",
        "Book"
    ]
}
