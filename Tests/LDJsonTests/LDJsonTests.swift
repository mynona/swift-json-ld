import Testing
import Foundation
@testable import LDJson

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
            identifier: "urn:air:test.com:mcp:test",
            displayName: "Test Server",
            url: "https://test.com/mcp"
        )
        let manifest = LDARDManifest(entries: [entry])
        let json = manifest.pretty

        #expect(json.contains("\"entries\" : ["))
        #expect(json.contains("\"identifier\" : \"urn:air:test.com:mcp:test\""))
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
