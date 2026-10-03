import Testing
import Foundation
@testable import JsonLD

@Suite("ARD v0.91 Tests")
struct ARDTests {

    @Test("ARD Entry serialization includes mandatory terms and default context")
    func testARDEntrySerialization() throws {
        let entry = LDARDEntry(
            identifier: "urn:air:example.com:mcp:sample-server",
            displayName: "Example MCP Server",
            type: "application/mcp-server-card+json",
            url: "https://example.com/mcp",
            description: "Test description",
            capabilities: ["list_items", "search_items"],
            representativeQueries: [
                "what items are available",
                "search for sample items"
            ],
            tags: ["mcp", "sample"]
        )

        let json = entry.pretty
        #expect(json.contains("\"@context\" : \"https://agenticresourcediscovery.org/context/v1\""))
        #expect(json.contains("\"identifier\" : \"urn:air:example.com:mcp:sample-server\""))
        #expect(json.contains("\"displayName\" : \"Example MCP Server\""))
        #expect(json.contains("\"type\" : \"application/mcp-server-card+json\""))
        #expect(json.contains("\"url\" : \"https://example.com/mcp\""))
        #expect(json.contains("\"list_items\""))
    }

    @Test("ARD Manifest wraps entries array correctly")
    func testARDManifestSerialization() throws {
        let entry = LDARDEntry(
            identifier: "urn:air:raumnebenan.de:mcp:raumnebenan-mcp",
            displayName: "raumnebenan MCP Server",
            type: "application/mcp-server-card+json",
            url: "https://www.raumnebenan.de/mcp",
            description: "MCP HTTP server for www.raumnebenan.de resource hub focused on actionable product thinking for product owners, product designers, business analysts, product managers, agile coaches, and user researchers.",
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
                "design-thinking",
                "user-research",
                "agile",
                "product-management"
            ],
            version: "1.0.0"
        )
        let manifest = LDARDManifest(entries: [entry])
        let json = manifest.pretty

        #expect(json.contains("\"entries\" : ["))
        #expect(json.contains("\"identifier\" : \"urn:air:raumnebenan.de:mcp:raumnebenan-mcp\""))
    }
}

@Suite("Schema.org Core Tests")
struct SchemaOrgTests {

    @Test("Polymorphic LDValue encodes single, multiple, and text values")
    func testLDValueEncoding() throws {
        let singleVal: LDValue<String> = .single("Hello")
        #expect(singleVal.pretty.contains("Hello"))

        let multiVal: LDValue<String> = .multiple(["A", "B"])
        #expect(multiVal.pretty.contains("\"A\""))
        #expect(multiVal.pretty.contains("\"B\""))

        let textVal: LDValue<String> = .text("Direct String")
        #expect(textVal.pretty.contains("Direct String"))
    }

    @Test("Polymorphic LDEither encodes first or second branch correctly")
    func testLDEitherEncoding() throws {
        let org = LDOrganization(name: "Acme Corp")
        let eitherFirst: LDEither<LDOrganization, String> = .first(org)
        #expect(eitherFirst.pretty.contains("Acme Corp"))

        let eitherSecond: LDEither<LDOrganization, String> = .second("Alternative Text")
        #expect(eitherSecond.pretty.contains("Alternative Text"))
    }

    @Test("Schema.org Thing carries standard context and type")
    func testSchemaThingContext() throws {
        let thing = LDThing(name: "Vienna Office")
        let json = thing.pretty

        #expect(json.contains("\"@context\" : \"https://schema.org\""))
        #expect(json.contains("\"@type\" : \"Thing\""))
        #expect(json.contains("\"name\" : \"Vienna Office\""))
    }
}
