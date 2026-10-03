import Foundation

/// An offer to transfer some rights to an item or to provide a service — for example, an offer to sell tickets to an event, to rent the DVD of a movie, to stream a TV show over the internet, to repair a motorcycle, or to loan a book.\n\nNote: As the [[businessFunction]] property, which identifies the form of offer (e.g. sell, lease, repair, dispose), defaults to http://purl.org/goodrelations/v1#Sell; an Offer without a defined businessFunction value can be assumed to be an offer to sell.\n\nFor [GTIN](http://www.gs1.org/barcodes/technical/idkeys/gtin)-related fields, see [Check Digit calculator](http://www.gs1.org/barcodes/support/check_digit_calculator) and [validation guide](http://www.gs1us.org/resources/standards/gtin-validation-guide) from [GS1](http://www.gs1.org/).
public struct LDOffer: LDSchemaThing, Sendable {

   enum CodingKeys: String, CodingKey {
      case context = "@context"
      case type = "@type"
      case acceptedPaymentMethod = "acceptedPaymentMethod"
      case addOn = "addOn"
      case additionalProperty = "additionalProperty"
      case advanceBookingRequirement = "advanceBookingRequirement"
      case aggregateRating = "aggregateRating"
      case areaServed = "areaServed"
      case asin = "asin"
      case availability = "availability"
      case availabilityEnds = "availabilityEnds"
      case availabilityStarts = "availabilityStarts"
      case availableAtOrFrom = "availableAtOrFrom"
      case availableDeliveryMethod = "availableDeliveryMethod"
      case businessFunction = "businessFunction"
      case category = "category"
      case checkoutPageURLTemplate = "checkoutPageURLTemplate"
      case deliveryLeadTime = "deliveryLeadTime"
      case eligibleCustomerType = "eligibleCustomerType"
      case eligibleDuration = "eligibleDuration"
      case eligibleQuantity = "eligibleQuantity"
      case eligibleRegion = "eligibleRegion"
      case eligibleTransactionVolume = "eligibleTransactionVolume"
      case gtin = "gtin"
      case gtin12 = "gtin12"
      case gtin13 = "gtin13"
      case gtin14 = "gtin14"
      case gtin8 = "gtin8"
      case hasAdultConsideration = "hasAdultConsideration"
      case hasDigitalProductPassport = "hasDigitalProductPassport"
      case hasGS1DigitalLink = "hasGS1DigitalLink"
      case hasMeasurement = "hasMeasurement"
      case hasMerchantReturnPolicy = "hasMerchantReturnPolicy"
      case includesObject = "includesObject"
      case ineligibleRegion = "ineligibleRegion"
      case inventoryLevel = "inventoryLevel"
      case isFamilyFriendly = "isFamilyFriendly"
      case itemCondition = "itemCondition"
      case itemOffered = "itemOffered"
      case itemPopularity = "itemPopularity"
      case leaseLength = "leaseLength"
      case mobileUrl = "mobileUrl"
      case mpn = "mpn"
      case offeredBy = "offeredBy"
      case price = "price"
      case priceCurrency = "priceCurrency"
      case priceSpecification = "priceSpecification"
      case priceValidUntil = "priceValidUntil"
      case review = "review"
      case reviews = "reviews"
      case seller = "seller"
      case serialNumber = "serialNumber"
      case shippingDetails = "shippingDetails"
      case sku = "sku"
      case validForMemberTier = "validForMemberTier"
      case validFrom = "validFrom"
      case validThrough = "validThrough"
      case warranty = "warranty"
   }

   public let context: String
   public let type: String
   public let acceptedPaymentMethod: String?
   public let addOn: LDValue<LDOffer>?
   public let additionalProperty: String?
   public let advanceBookingRequirement: String?
   public let aggregateRating: LDValue<LDAggregateRating>?
   public let areaServed: String?
   public let asin: LDEither<String, String>?
   public let availability: String?
   public let availabilityEnds: String?
   public let availabilityStarts: String?
   public let availableAtOrFrom: LDValue<LDPlace>?
   public let availableDeliveryMethod: String?
   public let businessFunction: String?
   public let category: String?
   public let checkoutPageURLTemplate: String?
   public let deliveryLeadTime: String?
   public let eligibleCustomerType: String?
   public let eligibleDuration: String?
   public let eligibleQuantity: String?
   public let eligibleRegion: String?
   public let eligibleTransactionVolume: String?
   public let gtin: LDEither<String, String>?
   public let gtin12: String?
   public let gtin13: String?
   public let gtin14: String?
   public let gtin8: String?
   public let hasAdultConsideration: String?
   public let hasDigitalProductPassport: String?
   public let hasGS1DigitalLink: String?
   public let hasMeasurement: String?
   public let hasMerchantReturnPolicy: String?
   public let includesObject: String?
   public let ineligibleRegion: String?
   public let inventoryLevel: String?
   public let isFamilyFriendly: Bool?
   public let itemCondition: String?
   public let itemOffered: String?
   public let itemPopularity: String?
   public let leaseLength: String?
   public let mobileUrl: String?
   public let mpn: String?
   public let offeredBy: LDEither<LDOrganization, LDPerson>?
   public let price: LDEither<Double, String>?
   public let priceCurrency: String?
   public let priceSpecification: String?
   public let priceValidUntil: String?
   public let review: LDValue<LDReview>?
   public let reviews: LDValue<LDReview>?
   public let seller: LDEither<LDOrganization, LDPerson>?
   public let serialNumber: String?
   public let shippingDetails: String?
   public let sku: String?
   public let validForMemberTier: String?
   public let validFrom: LDEither<String, String>?
   public let validThrough: LDEither<String, String>?
   public let warranty: String?

   public init(
      context: String = "https://schema.org",
      type: String = "Offer",
      acceptedPaymentMethod: String? = nil,
      addOn: LDValue<LDOffer>? = nil,
      additionalProperty: String? = nil,
      advanceBookingRequirement: String? = nil,
      aggregateRating: LDValue<LDAggregateRating>? = nil,
      areaServed: String? = nil,
      asin: LDEither<String, String>? = nil,
      availability: String? = nil,
      availabilityEnds: String? = nil,
      availabilityStarts: String? = nil,
      availableAtOrFrom: LDValue<LDPlace>? = nil,
      availableDeliveryMethod: String? = nil,
      businessFunction: String? = nil,
      category: String? = nil,
      checkoutPageURLTemplate: String? = nil,
      deliveryLeadTime: String? = nil,
      eligibleCustomerType: String? = nil,
      eligibleDuration: String? = nil,
      eligibleQuantity: String? = nil,
      eligibleRegion: String? = nil,
      eligibleTransactionVolume: String? = nil,
      gtin: LDEither<String, String>? = nil,
      gtin12: String? = nil,
      gtin13: String? = nil,
      gtin14: String? = nil,
      gtin8: String? = nil,
      hasAdultConsideration: String? = nil,
      hasDigitalProductPassport: String? = nil,
      hasGS1DigitalLink: String? = nil,
      hasMeasurement: String? = nil,
      hasMerchantReturnPolicy: String? = nil,
      includesObject: String? = nil,
      ineligibleRegion: String? = nil,
      inventoryLevel: String? = nil,
      isFamilyFriendly: Bool? = nil,
      itemCondition: String? = nil,
      itemOffered: String? = nil,
      itemPopularity: String? = nil,
      leaseLength: String? = nil,
      mobileUrl: String? = nil,
      mpn: String? = nil,
      offeredBy: LDEither<LDOrganization, LDPerson>? = nil,
      price: LDEither<Double, String>? = nil,
      priceCurrency: String? = nil,
      priceSpecification: String? = nil,
      priceValidUntil: String? = nil,
      review: LDValue<LDReview>? = nil,
      reviews: LDValue<LDReview>? = nil,
      seller: LDEither<LDOrganization, LDPerson>? = nil,
      serialNumber: String? = nil,
      shippingDetails: String? = nil,
      sku: String? = nil,
      validForMemberTier: String? = nil,
      validFrom: LDEither<String, String>? = nil,
      validThrough: LDEither<String, String>? = nil,
      warranty: String? = nil
   ) {
      self.context = context
      self.type = type
      self.acceptedPaymentMethod = acceptedPaymentMethod
      self.addOn = addOn
      self.additionalProperty = additionalProperty
      self.advanceBookingRequirement = advanceBookingRequirement
      self.aggregateRating = aggregateRating
      self.areaServed = areaServed
      self.asin = asin
      self.availability = availability
      self.availabilityEnds = availabilityEnds
      self.availabilityStarts = availabilityStarts
      self.availableAtOrFrom = availableAtOrFrom
      self.availableDeliveryMethod = availableDeliveryMethod
      self.businessFunction = businessFunction
      self.category = category
      self.checkoutPageURLTemplate = checkoutPageURLTemplate
      self.deliveryLeadTime = deliveryLeadTime
      self.eligibleCustomerType = eligibleCustomerType
      self.eligibleDuration = eligibleDuration
      self.eligibleQuantity = eligibleQuantity
      self.eligibleRegion = eligibleRegion
      self.eligibleTransactionVolume = eligibleTransactionVolume
      self.gtin = gtin
      self.gtin12 = gtin12
      self.gtin13 = gtin13
      self.gtin14 = gtin14
      self.gtin8 = gtin8
      self.hasAdultConsideration = hasAdultConsideration
      self.hasDigitalProductPassport = hasDigitalProductPassport
      self.hasGS1DigitalLink = hasGS1DigitalLink
      self.hasMeasurement = hasMeasurement
      self.hasMerchantReturnPolicy = hasMerchantReturnPolicy
      self.includesObject = includesObject
      self.ineligibleRegion = ineligibleRegion
      self.inventoryLevel = inventoryLevel
      self.isFamilyFriendly = isFamilyFriendly
      self.itemCondition = itemCondition
      self.itemOffered = itemOffered
      self.itemPopularity = itemPopularity
      self.leaseLength = leaseLength
      self.mobileUrl = mobileUrl
      self.mpn = mpn
      self.offeredBy = offeredBy
      self.price = price
      self.priceCurrency = priceCurrency
      self.priceSpecification = priceSpecification
      self.priceValidUntil = priceValidUntil
      self.review = review
      self.reviews = reviews
      self.seller = seller
      self.serialNumber = serialNumber
      self.shippingDetails = shippingDetails
      self.sku = sku
      self.validForMemberTier = validForMemberTier
      self.validFrom = validFrom
      self.validThrough = validThrough
      self.warranty = warranty
   }
}
