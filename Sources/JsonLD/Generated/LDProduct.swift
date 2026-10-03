import Foundation

/// Any offered product or service. For example: a pair of shoes; a concert ticket; the rental of a car; a haircut; or an episode of a TV show streamed online.
public struct LDProduct: LDSchemaThing, Sendable {

   enum CodingKeys: String, CodingKey {
      case context = "@context"
      case type = "@type"
      case additionalProperty = "additionalProperty"
      case aggregateRating = "aggregateRating"
      case asin = "asin"
      case audience = "audience"
      case authorizedRepresentative = "authorizedRepresentative"
      case award = "award"
      case awards = "awards"
      case brand = "brand"
      case category = "category"
      case color = "color"
      case colorSwatch = "colorSwatch"
      case consumerNotice = "consumerNotice"
      case countryOfAssembly = "countryOfAssembly"
      case countryOfLastProcessing = "countryOfLastProcessing"
      case countryOfOrigin = "countryOfOrigin"
      case depth = "depth"
      case displayLocation = "displayLocation"
      case funding = "funding"
      case gtin = "gtin"
      case gtin12 = "gtin12"
      case gtin13 = "gtin13"
      case gtin14 = "gtin14"
      case gtin8 = "gtin8"
      case hasAdultConsideration = "hasAdultConsideration"
      case hasCertification = "hasCertification"
      case hasDigitalProductPassport = "hasDigitalProductPassport"
      case hasEnergyConsumptionDetails = "hasEnergyConsumptionDetails"
      case hasGS1DigitalLink = "hasGS1DigitalLink"
      case hasMeasurement = "hasMeasurement"
      case hasMerchantReturnPolicy = "hasMerchantReturnPolicy"
      case hasProductReturnPolicy = "hasProductReturnPolicy"
      case height = "height"
      case importer = "importer"
      case inProductGroupWithID = "inProductGroupWithID"
      case isAccessoryOrSparePartFor = "isAccessoryOrSparePartFor"
      case isConsumableFor = "isConsumableFor"
      case isFamilyFriendly = "isFamilyFriendly"
      case isOftenBoughtWith = "isOftenBoughtWith"
      case isRelatedTo = "isRelatedTo"
      case isSimilarTo = "isSimilarTo"
      case isVariantOf = "isVariantOf"
      case itemCondition = "itemCondition"
      case keywords = "keywords"
      case logo = "logo"
      case manufacturer = "manufacturer"
      case material = "material"
      case mobileUrl = "mobileUrl"
      case model = "model"
      case mpn = "mpn"
      case negativeNotes = "negativeNotes"
      case nsn = "nsn"
      case offers = "offers"
      case pattern = "pattern"
      case positiveNotes = "positiveNotes"
      case productID = "productID"
      case productionDate = "productionDate"
      case purchaseDate = "purchaseDate"
      case recycledContentPercentage = "recycledContentPercentage"
      case releaseDate = "releaseDate"
      case review = "review"
      case reviews = "reviews"
      case size = "size"
      case sku = "sku"
      case slogan = "slogan"
      case specification = "specification"
      case substanceOfConcern = "substanceOfConcern"
      case weight = "weight"
      case width = "width"
   }

   public let context: String
   public let type: String
   public let additionalProperty: String?
   public let aggregateRating: LDValue<LDAggregateRating>?
   public let asin: LDEither<String, String>?
   public let audience: String?
   public let authorizedRepresentative: LDEither<LDOrganization, LDPerson>?
   public let award: String?
   public let awards: String?
   public let brand: String?
   public let category: String?
   public let color: String?
   public let colorSwatch: LDEither<LDImageObject, String>?
   public let consumerNotice: String?
   public let countryOfAssembly: String?
   public let countryOfLastProcessing: String?
   public let countryOfOrigin: String?
   public let depth: String?
   public let displayLocation: LDValue<LDPlace>?
   public let funding: String?
   public let gtin: LDEither<String, String>?
   public let gtin12: String?
   public let gtin13: String?
   public let gtin14: String?
   public let gtin8: String?
   public let hasAdultConsideration: String?
   public let hasCertification: String?
   public let hasDigitalProductPassport: String?
   public let hasEnergyConsumptionDetails: String?
   public let hasGS1DigitalLink: String?
   public let hasMeasurement: String?
   public let hasMerchantReturnPolicy: String?
   public let hasProductReturnPolicy: String?
   public let height: String?
   public let importer: LDEither<LDOrganization, LDPerson>?
   public let inProductGroupWithID: String?
   public let isAccessoryOrSparePartFor: LDValue<LDProduct>?
   public let isConsumableFor: LDValue<LDProduct>?
   public let isFamilyFriendly: Bool?
   public let isOftenBoughtWith: LDValue<LDProduct>?
   public let isRelatedTo: String?
   public let isSimilarTo: String?
   public let isVariantOf: String?
   public let itemCondition: String?
   public let keywords: String?
   public let logo: LDEither<LDImageObject, String>?
   public let manufacturer: LDValue<LDOrganization>?
   public let material: String?
   public let mobileUrl: String?
   public let model: String?
   public let mpn: String?
   public let negativeNotes: String?
   public let nsn: String?
   public let offers: String?
   public let pattern: String?
   public let positiveNotes: String?
   public let productID: String?
   public let productionDate: String?
   public let purchaseDate: String?
   public let recycledContentPercentage: Double?
   public let releaseDate: String?
   public let review: LDValue<LDReview>?
   public let reviews: LDValue<LDReview>?
   public let size: String?
   public let sku: String?
   public let slogan: String?
   public let specification: String?
   public let substanceOfConcern: String?
   public let weight: String?
   public let width: String?

   public init(
      context: String = "https://schema.org",
      type: String = "Product",
      additionalProperty: String? = nil,
      aggregateRating: LDValue<LDAggregateRating>? = nil,
      asin: LDEither<String, String>? = nil,
      audience: String? = nil,
      authorizedRepresentative: LDEither<LDOrganization, LDPerson>? = nil,
      award: String? = nil,
      awards: String? = nil,
      brand: String? = nil,
      category: String? = nil,
      color: String? = nil,
      colorSwatch: LDEither<LDImageObject, String>? = nil,
      consumerNotice: String? = nil,
      countryOfAssembly: String? = nil,
      countryOfLastProcessing: String? = nil,
      countryOfOrigin: String? = nil,
      depth: String? = nil,
      displayLocation: LDValue<LDPlace>? = nil,
      funding: String? = nil,
      gtin: LDEither<String, String>? = nil,
      gtin12: String? = nil,
      gtin13: String? = nil,
      gtin14: String? = nil,
      gtin8: String? = nil,
      hasAdultConsideration: String? = nil,
      hasCertification: String? = nil,
      hasDigitalProductPassport: String? = nil,
      hasEnergyConsumptionDetails: String? = nil,
      hasGS1DigitalLink: String? = nil,
      hasMeasurement: String? = nil,
      hasMerchantReturnPolicy: String? = nil,
      hasProductReturnPolicy: String? = nil,
      height: String? = nil,
      importer: LDEither<LDOrganization, LDPerson>? = nil,
      inProductGroupWithID: String? = nil,
      isAccessoryOrSparePartFor: LDValue<LDProduct>? = nil,
      isConsumableFor: LDValue<LDProduct>? = nil,
      isFamilyFriendly: Bool? = nil,
      isOftenBoughtWith: LDValue<LDProduct>? = nil,
      isRelatedTo: String? = nil,
      isSimilarTo: String? = nil,
      isVariantOf: String? = nil,
      itemCondition: String? = nil,
      keywords: String? = nil,
      logo: LDEither<LDImageObject, String>? = nil,
      manufacturer: LDValue<LDOrganization>? = nil,
      material: String? = nil,
      mobileUrl: String? = nil,
      model: String? = nil,
      mpn: String? = nil,
      negativeNotes: String? = nil,
      nsn: String? = nil,
      offers: String? = nil,
      pattern: String? = nil,
      positiveNotes: String? = nil,
      productID: String? = nil,
      productionDate: String? = nil,
      purchaseDate: String? = nil,
      recycledContentPercentage: Double? = nil,
      releaseDate: String? = nil,
      review: LDValue<LDReview>? = nil,
      reviews: LDValue<LDReview>? = nil,
      size: String? = nil,
      sku: String? = nil,
      slogan: String? = nil,
      specification: String? = nil,
      substanceOfConcern: String? = nil,
      weight: String? = nil,
      width: String? = nil
   ) {
      self.context = context
      self.type = type
      self.additionalProperty = additionalProperty
      self.aggregateRating = aggregateRating
      self.asin = asin
      self.audience = audience
      self.authorizedRepresentative = authorizedRepresentative
      self.award = award
      self.awards = awards
      self.brand = brand
      self.category = category
      self.color = color
      self.colorSwatch = colorSwatch
      self.consumerNotice = consumerNotice
      self.countryOfAssembly = countryOfAssembly
      self.countryOfLastProcessing = countryOfLastProcessing
      self.countryOfOrigin = countryOfOrigin
      self.depth = depth
      self.displayLocation = displayLocation
      self.funding = funding
      self.gtin = gtin
      self.gtin12 = gtin12
      self.gtin13 = gtin13
      self.gtin14 = gtin14
      self.gtin8 = gtin8
      self.hasAdultConsideration = hasAdultConsideration
      self.hasCertification = hasCertification
      self.hasDigitalProductPassport = hasDigitalProductPassport
      self.hasEnergyConsumptionDetails = hasEnergyConsumptionDetails
      self.hasGS1DigitalLink = hasGS1DigitalLink
      self.hasMeasurement = hasMeasurement
      self.hasMerchantReturnPolicy = hasMerchantReturnPolicy
      self.hasProductReturnPolicy = hasProductReturnPolicy
      self.height = height
      self.importer = importer
      self.inProductGroupWithID = inProductGroupWithID
      self.isAccessoryOrSparePartFor = isAccessoryOrSparePartFor
      self.isConsumableFor = isConsumableFor
      self.isFamilyFriendly = isFamilyFriendly
      self.isOftenBoughtWith = isOftenBoughtWith
      self.isRelatedTo = isRelatedTo
      self.isSimilarTo = isSimilarTo
      self.isVariantOf = isVariantOf
      self.itemCondition = itemCondition
      self.keywords = keywords
      self.logo = logo
      self.manufacturer = manufacturer
      self.material = material
      self.mobileUrl = mobileUrl
      self.model = model
      self.mpn = mpn
      self.negativeNotes = negativeNotes
      self.nsn = nsn
      self.offers = offers
      self.pattern = pattern
      self.positiveNotes = positiveNotes
      self.productID = productID
      self.productionDate = productionDate
      self.purchaseDate = purchaseDate
      self.recycledContentPercentage = recycledContentPercentage
      self.releaseDate = releaseDate
      self.review = review
      self.reviews = reviews
      self.size = size
      self.sku = sku
      self.slogan = slogan
      self.specification = specification
      self.substanceOfConcern = substanceOfConcern
      self.weight = weight
      self.width = width
   }
}
