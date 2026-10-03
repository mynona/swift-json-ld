import Foundation

/// An action performed by a direct agent and indirect participants upon a direct object. Optionally happens at a location with the help of an inanimate instrument. The execution of the action may produce a result. Specific action sub-type documentation specifies the exact expectation of each argument/role.\n\nSee also [blog post](https://blog.schema.org/2014/04/16/announcing-schema-org-actions/) and [Actions overview document](https://schema.org/docs/actions.html).
public struct LDAction: LDSchemaThing, Sendable {

   enum CodingKeys: String, CodingKey {
      case context = "@context"
      case type = "@type"
      case actionProcess = "actionProcess"
      case actionStatus = "actionStatus"
      case agent = "agent"
      case endTime = "endTime"
      case error = "error"
      case instrument = "instrument"
      case location = "location"
      case object = "object"
      case participant = "participant"
      case provider = "provider"
      case result = "result"
      case startTime = "startTime"
      case target = "target"
   }

   public let context: String
   public let type: String
   public let actionProcess: String?
   public let actionStatus: String?
   public let agent: LDEither<LDOrganization, LDPerson>?
   public let endTime: LDEither<String, String>?
   public let error: LDValue<LDThing>?
   public let instrument: LDValue<LDThing>?
   public let location: String?
   public let object: LDValue<LDThing>?
   public let participant: LDEither<LDOrganization, LDPerson>?
   public let provider: LDEither<LDOrganization, LDPerson>?
   public let result: LDValue<LDThing>?
   public let startTime: LDEither<String, String>?
   public let target: LDEither<LDEntryPoint, String>?

   public init(
      context: String = "https://schema.org",
      type: String = "Action",
      actionProcess: String? = nil,
      actionStatus: String? = nil,
      agent: LDEither<LDOrganization, LDPerson>? = nil,
      endTime: LDEither<String, String>? = nil,
      error: LDValue<LDThing>? = nil,
      instrument: LDValue<LDThing>? = nil,
      location: String? = nil,
      object: LDValue<LDThing>? = nil,
      participant: LDEither<LDOrganization, LDPerson>? = nil,
      provider: LDEither<LDOrganization, LDPerson>? = nil,
      result: LDValue<LDThing>? = nil,
      startTime: LDEither<String, String>? = nil,
      target: LDEither<LDEntryPoint, String>? = nil
   ) {
      self.context = context
      self.type = type
      self.actionProcess = actionProcess
      self.actionStatus = actionStatus
      self.agent = agent
      self.endTime = endTime
      self.error = error
      self.instrument = instrument
      self.location = location
      self.object = object
      self.participant = participant
      self.provider = provider
      self.result = result
      self.startTime = startTime
      self.target = target
   }
}
