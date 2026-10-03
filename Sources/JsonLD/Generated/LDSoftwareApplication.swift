import Foundation

/// A software application.
public struct LDSoftwareApplication: LDSchemaThing, Sendable {

   enum CodingKeys: String, CodingKey {
      case context = "@context"
      case type = "@type"
      case applicationCategory = "applicationCategory"
      case applicationSubCategory = "applicationSubCategory"
      case applicationSuite = "applicationSuite"
      case availableOnDevice = "availableOnDevice"
      case countriesNotSupported = "countriesNotSupported"
      case countriesSupported = "countriesSupported"
      case device = "device"
      case downloadUrl = "downloadUrl"
      case featureList = "featureList"
      case fileSize = "fileSize"
      case installUrl = "installUrl"
      case memoryRequirements = "memoryRequirements"
      case operatingSystem = "operatingSystem"
      case permissions = "permissions"
      case processorRequirements = "processorRequirements"
      case releaseNotes = "releaseNotes"
      case requirements = "requirements"
      case runtimePlatform = "runtimePlatform"
      case screenshot = "screenshot"
      case softwareAddOn = "softwareAddOn"
      case softwareHelp = "softwareHelp"
      case softwareRequirements = "softwareRequirements"
      case softwareVersion = "softwareVersion"
      case storageRequirements = "storageRequirements"
      case supportingData = "supportingData"
   }

   public let context: String
   public let type: String
   public let applicationCategory: LDEither<String, String>?
   public let applicationSubCategory: LDEither<String, String>?
   public let applicationSuite: String?
   public let availableOnDevice: String?
   public let countriesNotSupported: String?
   public let countriesSupported: String?
   public let device: String?
   public let downloadUrl: String?
   public let featureList: LDEither<String, String>?
   public let fileSize: String?
   public let installUrl: String?
   public let memoryRequirements: LDEither<String, String>?
   public let operatingSystem: String?
   public let permissions: String?
   public let processorRequirements: String?
   public let releaseNotes: LDEither<String, String>?
   public let requirements: LDEither<String, String>?
   public let runtimePlatform: String?
   public let screenshot: LDEither<LDImageObject, String>?
   public let softwareAddOn: LDValue<LDSoftwareApplication>?
   public let softwareHelp: LDValue<LDCreativeWork>?
   public let softwareRequirements: String?
   public let softwareVersion: String?
   public let storageRequirements: LDEither<String, String>?
   public let supportingData: String?

   public init(
      context: String = "https://schema.org",
      type: String = "SoftwareApplication",
      applicationCategory: LDEither<String, String>? = nil,
      applicationSubCategory: LDEither<String, String>? = nil,
      applicationSuite: String? = nil,
      availableOnDevice: String? = nil,
      countriesNotSupported: String? = nil,
      countriesSupported: String? = nil,
      device: String? = nil,
      downloadUrl: String? = nil,
      featureList: LDEither<String, String>? = nil,
      fileSize: String? = nil,
      installUrl: String? = nil,
      memoryRequirements: LDEither<String, String>? = nil,
      operatingSystem: String? = nil,
      permissions: String? = nil,
      processorRequirements: String? = nil,
      releaseNotes: LDEither<String, String>? = nil,
      requirements: LDEither<String, String>? = nil,
      runtimePlatform: String? = nil,
      screenshot: LDEither<LDImageObject, String>? = nil,
      softwareAddOn: LDValue<LDSoftwareApplication>? = nil,
      softwareHelp: LDValue<LDCreativeWork>? = nil,
      softwareRequirements: String? = nil,
      softwareVersion: String? = nil,
      storageRequirements: LDEither<String, String>? = nil,
      supportingData: String? = nil
   ) {
      self.context = context
      self.type = type
      self.applicationCategory = applicationCategory
      self.applicationSubCategory = applicationSubCategory
      self.applicationSuite = applicationSuite
      self.availableOnDevice = availableOnDevice
      self.countriesNotSupported = countriesNotSupported
      self.countriesSupported = countriesSupported
      self.device = device
      self.downloadUrl = downloadUrl
      self.featureList = featureList
      self.fileSize = fileSize
      self.installUrl = installUrl
      self.memoryRequirements = memoryRequirements
      self.operatingSystem = operatingSystem
      self.permissions = permissions
      self.processorRequirements = processorRequirements
      self.releaseNotes = releaseNotes
      self.requirements = requirements
      self.runtimePlatform = runtimePlatform
      self.screenshot = screenshot
      self.softwareAddOn = softwareAddOn
      self.softwareHelp = softwareHelp
      self.softwareRequirements = softwareRequirements
      self.softwareVersion = softwareVersion
      self.storageRequirements = storageRequirements
      self.supportingData = supportingData
   }
}
