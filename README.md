# swift-json-ld

A modern Swift library for **JSON-LD**, **Schema.org** semantic markup, and **ARD (Agentic Resource Discovery v0.91)** for AI agents and Model Context Protocol (MCP) servers.

Designed for high-performance Swift server frameworks like [Vapor](https://vapor.codes) and macOS/iOS applications, with full **Swift 6 Strict Concurrency (`Sendable`)** compliance.

---

## Features

- **Schema.org Semantic Types**: Strongly-typed Swift representations (`LDOrganization`, `LDPerson`, `LDPlace`, `LDEvent`, `LDProduct`, `LDWebPage`, `LDCreativeWork`, and more).
- **Polymorphic Property Support**:
  - `LDValue<T>`: Safely handles single values (`.single(T)`), multiple values (`.multiple([T])`), or simplified string names (`.text(String)`).
  - `LDEither<A, B>`: Safely handles properties that can be one of two distinct types (e.g. `LDPerson` or `LDOrganization`).
  - Recursive graph protection via `indirect enum`.
- **ARD v0.91 (Agentic Resource Discovery)**:
  - Full support for `LDARDEntry` and `LDARDManifest`.
  - Expose discovery manifests for **MCP Servers** and AI agents at `/.well-known/ard.json`.
- **Self-Updating Code Generator**:
  - Built-in CLI tool (`Generator`) that downloads the official machine-readable Schema.org definition and updates the Swift models to the latest release with a single command.

---

## Installation

Manually add the following to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/mynona/swift-json-ld.git", from: "1.0.1")
],
targets: [
    .target(
        name: "MyTarget",
        dependencies: [
            .product(name: "JsonLD", package: "swift-json-ld")
        ]
    )
]
```

*(Note: The package also contains an internal `Generator` executable used solely for updating the schema definitions; only the `JsonLD` library product will be linked to your project.)*

In your Swift files, import the module:

```swift
import JsonLD
```

---

## Usage

### 1. Schema.org Types

All types conform to `JsonLDExportable` and output formatted, valid JSON-LD through `.pretty`:

```swift
import JsonLD

let organization = LDOrganization(
    name: "Example Corp",
    url: "https://example.com/",
    logo: "https://example.com/images/logo.png"
)

print(organization.pretty)
```

#### Output:
```json
{
  "@context" : "https://schema.org",
  "@type" : "Organization",
  "logo" : "https://example.com/images/logo.png",
  "name" : "Example Corp",
  "url" : "https://example.com/"
}
```

### 2. Usage examples

#### 2.1. Breadcrumbs (`LDBreadcrumbList`)

Render structured navigation breadcrumbs for search result hierarchy:

```swift
let breadcrumbs = LDBreadcrumbList(
    itemListElement: [
        LDListItem(
            position: 1,
            item: LDItem(id: "https://example.com/", name: "Home")
        ),
        LDListItem(
            position: 2,
            item: LDItem(id: "https://example.com/blog/", name: "Blog")
        ),
        LDListItem(
            position: 3,
            item: LDItem(id: "https://example.com/blog/article", name: "Understanding JSON-LD")
        )
    ]
)

print(breadcrumbs.pretty)
```

##### Output:
```json
{
  "@context" : "https://schema.org",
  "@type" : "BreadcrumbList",
  "itemListElement" : [
    {
      "@context" : "https://schema.org",
      "@type" : "ListItem",
      "item" : {
        "@id" : "https://example.com/",
        "name" : "Home"
      },
      "position" : 1
    },
    {
      "@context" : "https://schema.org",
      "@type" : "ListItem",
      "item" : {
        "@id" : "https://example.com/blog/",
        "name" : "Blog"
      },
      "position" : 2
    },
    {
      "@context" : "https://schema.org",
      "@type" : "ListItem",
      "item" : {
        "@id" : "https://example.com/blog/article",
        "name" : "Understanding JSON-LD"
      },
      "position" : 3
    }
  ]
}
```

---

#### 2.2. Author Profile Page (`ProfilePage` with `LDPerson`)

To maximize Google **E-E-A-T** credibility, wrap an author in a `ProfilePage`:

```swift
let author = LDPerson(
    name: "John Doe",
    url: "https://example.com/authors/john-doe",
    jobTitle: "Lead Product Designer",
    honorificPrefix: "Dr",
    sameAs: [
        "https://linkedin.com/in/johndoe",
        "https://github.com/johndoe"
    ],
    image: "https://example.com/images/john-doe.jpg",
    description: "Specialist in digital product architecture and service design."
)

let profilePage = LDProfilePage(mainEntity: author)
print(profilePage.pretty)
```

##### Output:
```json
{
  "@context" : "https://schema.org",
  "@type" : "ProfilePage",
  "mainEntity" : {
    "@type" : "Person",
    "description" : "Specialist in digital product architecture and service design.",
    "honorificPrefix" : "Dr",
    "image" : "https://example.com/images/john-doe.jpg",
    "jobTitle" : "Lead Product Designer",
    "name" : "John Doe",
    "sameAs" : [
      "https://linkedin.com/in/johndoe",
      "https://github.com/johndoe"
    ],
    "url" : "https://example.com/authors/john-doe"
  }
}
```

---

#### 2.3. Image Metadata (`ImageObject` for Google Images Licensing)

Add image licensing and copyright attribution for Google Images:

```swift
let imageMetadata = ArticleImageMetadata(
    contentUrl: "https://example.com/images/diagram.png",
    creator: author,
    creditText: "Dr. John Doe / Example Corp",
    copyrightNotice: "© Example Corp",
    license: "https://example.com/license",
    acquireLicensePage: "https://example.com/license"
)

print(imageMetadata.pretty)
```

##### Output:
```json
{
  "@context" : "https://schema.org",
  "@type" : "ImageObject",
  "acquireLicensePage" : "https://example.com/license",
  "contentUrl" : "https://example.com/images/diagram.png",
  "copyrightNotice" : "© Example Corp",
  "creator" : {
    "@context" : "https://schema.org",
    "@type" : "Person",
    "description" : "Specialist in digital product architecture and service design.",
    "honorificPrefix" : "Dr",
    "image" : "https://example.com/images/john-doe.jpg",
    "jobTitle" : "Lead Product Designer",
    "name" : "John Doe",
    "sameAs" : [
      "https://linkedin.com/in/johndoe",
      "https://github.com/johndoe"
    ],
    "url" : "https://example.com/authors/john-doe"
  },
  "creditText" : "Dr. John Doe / Example Corp",
  "license" : "https://example.com/license"
}
```

---

### 3. Multi-Entity JSON-LD Arrays

Render multiple Schema.org entities together for embedding in an HTML `<script type="application/ld+json">` tag:

```swift
let jsonBlock = JsonLD(data: [
    organization,
    breadcrumbs
])

let htmlScript = "<script type=\"application/ld+json\">\n\(jsonBlock.prettyJson())\n</script>"
```

##### Output:
```json
[
{
  "@context" : "https://schema.org",
  "@type" : "Organization",
  "logo" : "https://example.com/images/logo.png",
  "name" : "Example Corp",
  "url" : "https://example.com/"
},
{
  "@context" : "https://schema.org",
  "@type" : "BreadcrumbList",
  "itemListElement" : [
    {
      "@context" : "https://schema.org",
      "@type" : "ListItem",
      "item" : {
        "@id" : "https://example.com/",
        "name" : "Home"
      },
      "position" : 1
    },
    {
      "@context" : "https://schema.org",
      "@type" : "ListItem",
      "item" : {
        "@id" : "https://example.com/blog/",
        "name" : "Blog"
      },
      "position" : 2
    },
    {
      "@context" : "https://schema.org",
      "@type" : "ListItem",
      "item" : {
        "@id" : "https://example.com/blog/article",
        "name" : "Understanding JSON-LD"
      },
      "position" : 3
    }
  ]
}
]
```

---

## Validation

To validate your generated structured data and verify rich snippet eligibility, use the official **Google Rich Results Test**:

- [Google Rich Results Test Validator](https://search.google.com/test/rich-results/result?id=BXtXhTjiuWC9XryxVkh0bA&hl=de)

This validator tests your JSON-LD against official Schema.org standards as well as Google-specific rich result requirements (e.g., Article, Organization, BreadcrumbList, ProfilePage, ImageObject).

---

### 4. ARD v0.91 (Agentic Resource Discovery for MCP Servers)

The **Agentic Resource Discovery Specification** allows AI agents, LLMs, and discovery crawlers to find and connect to your callable MCP tools dynamically.

#### Serving `/.well-known/ard.json` in Vapor:

Add the route to your Vapor application (e.g. in `routes.swift`):

```swift
import Vapor
import LDJson

app.get(".well-known", "ard.json") { req -> Response in
    let mcpEntry = LDARDEntry(
        identifier: "urn:air:example.com:mcp:example-mcp",
        displayName: "Example MCP Server",
        type: "application/mcp-server-card+json",
        url: "https://example.com/mcp",
        description: "Resource hub and tools focused on actionable product thinking for product owners, designers, and agile teams.",
        capabilities: [
            "list_articles",
            "list_stories",
            "list_categories",
            "search_articles",
            "get_articles_by_tag",
            "get_stories_by_category",
            "get_article_details_by_slugs",
            "get_article_details_by_uuids"
        ],
        representativeQueries: [
            "what articles are available on product thinking and service design",
            "show me articles in the foundation and discovery categories",
            "search for articles about the kano model and empathy map",
            "summarize published stories"
        ],
        tags: [
            "mcp",
            "product-thinking",
            "service-design",
            "agile",
            "product-management"
        ]
    )

    let manifest = LDARDManifest(entries: [mcpEntry])

    return Response(
        status: .ok,
        headers: ["Content-Type": "application/json; charset=utf-8"],
        body: .init(string: manifest.pretty)
    )
}
```

##### Output (`/.well-known/ard.json`):
```json
{
  "@context" : "https://agenticresourcediscovery.org/context/v1",
  "entries" : [
    {
      "@context" : "https://agenticresourcediscovery.org/context/v1",
      "capabilities" : [
        "list_articles",
        "list_stories",
        "list_categories",
        "search_articles",
        "get_articles_by_tag",
        "get_stories_by_category",
        "get_article_details_by_slugs",
        "get_article_details_by_uuids"
      ],
      "description" : "Resource hub and tools focused on actionable product thinking for product owners, designers, and agile teams.",
      "displayName" : "Example MCP Server",
      "identifier" : "urn:air:example.com:mcp:example-mcp",
      "representativeQueries" : [
        "what articles are available on product thinking and service design",
        "show me articles in the foundation and discovery categories",
        "search for articles about the kano model and empathy map",
        "summarize published stories"
      ],
      "tags" : [
        "mcp",
        "product-thinking",
        "service-design",
        "agile",
        "product-management"
      ],
      "type" : "application/mcp-server-card+json",
      "url" : "https://example.com/mcp"
    }
  ]
}
```

---

## Updating Schema.org Types via Code Generator

Whenever Schema.org publishes a new release (or you want to expand the generated types), run the included CLI generator:

```bash
swift run Generator
```

### Schema.org (Dynamic, Automated)

- **Where it comes from:** The generator fetches the live definition directly from:
  `https://schema.org/version/latest/schemaorg-current-https.jsonld`
- **How it updates:** Whenever Schema.org publishes a new release (adding new classes, properties, or domains), running `swift run Generator` downloads the updated graph, diffs it against existing files, and regenerates only what changed.
- **Output:** Automatically emits clean, documented, and type-safe Swift structs in `Sources/LDJson/Generated/`.

---

## License

MIT
