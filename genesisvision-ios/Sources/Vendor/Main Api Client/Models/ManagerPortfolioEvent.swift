//
// ManagerPortfolioEvent.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class ManagerPortfolioEvent: Codable {

    public enum Currency: String, Codable { 
        case btc = "BTC"
        case eth = "ETH"
        case usdt = "USDT"
        case gvt = "GVT"
        case undefined = "Undefined"
        case ada = "ADA"
        case xrp = "XRP"
        case bch = "BCH"
        case ltc = "LTC"
        case doge = "DOGE"
        case bnb = "BNB"
        case usd = "USD"
        case eur = "EUR"
    }
    public enum ModelType: String, Codable { 
        case all = "All"
        case assetStarted = "AssetStarted"
        case programPeriodStarts = "ProgramPeriodStarts"
        case programPeriodEnds = "ProgramPeriodEnds"
        case investorInvest = "InvestorInvest"
        case investorWithdraw = "InvestorWithdraw"
        case managerInvest = "ManagerInvest"
        case managerWithdraw = "ManagerWithdraw"
        case assetFinished = "AssetFinished"
        case entranceFee = "EntranceFee"
        case exitFee = "ExitFee"
        case programStopOut = "ProgramStopOut"
        case programManagerTradingFeeAccrual = "ProgramManagerTradingFeeAccrual"
        case programSignalSubscribe = "ProgramSignalSubscribe"
    }
    public enum ProgramType: String, Codable { 
        case program = "Program"
        case fund = "Fund"
    }
    public var assetId: UUID?
    public var date: Date?
    public var title: String?
    public var value: Double?
    public var feeValue: Double?
    public var profitPercent: Double?
    public var currency: Currency?
    public var type: ModelType?
    public var programType: ProgramType?
    public var logo: String?
    public var color: String?
    public var description: String?
    public var url: String?
    public var periodNumber: Int?


    
    public init(assetId: UUID?, date: Date?, title: String?, value: Double?, feeValue: Double?, profitPercent: Double?, currency: Currency?, type: ModelType?, programType: ProgramType?, logo: String?, color: String?, description: String?, url: String?, periodNumber: Int?) {
        self.assetId = assetId
        self.date = date
        self.title = title
        self.value = value
        self.feeValue = feeValue
        self.profitPercent = profitPercent
        self.currency = currency
        self.type = type
        self.programType = programType
        self.logo = logo
        self.color = color
        self.description = description
        self.url = url
        self.periodNumber = periodNumber
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(assetId, forKey: "assetId")
        try container.encodeIfPresent(date, forKey: "date")
        try container.encodeIfPresent(title, forKey: "title")
        try container.encodeIfPresent(value, forKey: "value")
        try container.encodeIfPresent(feeValue, forKey: "feeValue")
        try container.encodeIfPresent(profitPercent, forKey: "profitPercent")
        try container.encodeIfPresent(currency, forKey: "currency")
        try container.encodeIfPresent(type, forKey: "type")
        try container.encodeIfPresent(programType, forKey: "programType")
        try container.encodeIfPresent(logo, forKey: "logo")
        try container.encodeIfPresent(color, forKey: "color")
        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(url, forKey: "url")
        try container.encodeIfPresent(periodNumber, forKey: "periodNumber")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        assetId = try container.decodeIfPresent(UUID.self, forKey: "assetId")
        date = try container.decodeIfPresent(Date.self, forKey: "date")
        title = try container.decodeIfPresent(String.self, forKey: "title")
        value = try container.decodeIfPresent(Double.self, forKey: "value")
        feeValue = try container.decodeIfPresent(Double.self, forKey: "feeValue")
        profitPercent = try container.decodeIfPresent(Double.self, forKey: "profitPercent")
        currency = try container.decodeIfPresent(Currency.self, forKey: "currency")
        type = try container.decodeIfPresent(ModelType.self, forKey: "type")
        programType = try container.decodeIfPresent(ProgramType.self, forKey: "programType")
        logo = try container.decodeIfPresent(String.self, forKey: "logo")
        color = try container.decodeIfPresent(String.self, forKey: "color")
        description = try container.decodeIfPresent(String.self, forKey: "description")
        url = try container.decodeIfPresent(String.self, forKey: "url")
        periodNumber = try container.decodeIfPresent(Int.self, forKey: "periodNumber")
    }
}

