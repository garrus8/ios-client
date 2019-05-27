//
// ProgramRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class ProgramRequest: Codable {

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
        case invest = "Invest"
        case withdrawal = "Withdrawal"
    }
    public enum Status: String, Codable { 
        case new = "New"
        case executed = "Executed"
        case cancelled = "Cancelled"
    }
    public enum ProgramType: String, Codable { 
        case program = "Program"
        case fund = "Fund"
    }
    public var id: UUID?
    public var programId: UUID?
    public var date: Date?
    public var value: Double?
    public var valueGvt: Double?
    public var feeEntry: Double?
    public var feeExit: Double?
    public var currency: Currency?
    /** Used only in fund withdraw request */
    public var fundWithdrawPercent: Double?
    public var type: ModelType?
    public var status: Status?
    public var logo: String?
    public var title: String?
    public var color: String?
    public var canCancelRequest: Bool?
    public var programType: ProgramType?


    
    public init(id: UUID?, programId: UUID?, date: Date?, value: Double?, valueGvt: Double?, feeEntry: Double?, feeExit: Double?, currency: Currency?, fundWithdrawPercent: Double?, type: ModelType?, status: Status?, logo: String?, title: String?, color: String?, canCancelRequest: Bool?, programType: ProgramType?) {
        self.id = id
        self.programId = programId
        self.date = date
        self.value = value
        self.valueGvt = valueGvt
        self.feeEntry = feeEntry
        self.feeExit = feeExit
        self.currency = currency
        self.fundWithdrawPercent = fundWithdrawPercent
        self.type = type
        self.status = status
        self.logo = logo
        self.title = title
        self.color = color
        self.canCancelRequest = canCancelRequest
        self.programType = programType
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(programId, forKey: "programId")
        try container.encodeIfPresent(date, forKey: "date")
        try container.encodeIfPresent(value, forKey: "value")
        try container.encodeIfPresent(valueGvt, forKey: "valueGvt")
        try container.encodeIfPresent(feeEntry, forKey: "feeEntry")
        try container.encodeIfPresent(feeExit, forKey: "feeExit")
        try container.encodeIfPresent(currency, forKey: "currency")
        try container.encodeIfPresent(fundWithdrawPercent, forKey: "fundWithdrawPercent")
        try container.encodeIfPresent(type, forKey: "type")
        try container.encodeIfPresent(status, forKey: "status")
        try container.encodeIfPresent(logo, forKey: "logo")
        try container.encodeIfPresent(title, forKey: "title")
        try container.encodeIfPresent(color, forKey: "color")
        try container.encodeIfPresent(canCancelRequest, forKey: "canCancelRequest")
        try container.encodeIfPresent(programType, forKey: "programType")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        id = try container.decodeIfPresent(UUID.self, forKey: "id")
        programId = try container.decodeIfPresent(UUID.self, forKey: "programId")
        date = try container.decodeIfPresent(Date.self, forKey: "date")
        value = try container.decodeIfPresent(Double.self, forKey: "value")
        valueGvt = try container.decodeIfPresent(Double.self, forKey: "valueGvt")
        feeEntry = try container.decodeIfPresent(Double.self, forKey: "feeEntry")
        feeExit = try container.decodeIfPresent(Double.self, forKey: "feeExit")
        currency = try container.decodeIfPresent(Currency.self, forKey: "currency")
        fundWithdrawPercent = try container.decodeIfPresent(Double.self, forKey: "fundWithdrawPercent")
        type = try container.decodeIfPresent(ModelType.self, forKey: "type")
        status = try container.decodeIfPresent(Status.self, forKey: "status")
        logo = try container.decodeIfPresent(String.self, forKey: "logo")
        title = try container.decodeIfPresent(String.self, forKey: "title")
        color = try container.decodeIfPresent(String.self, forKey: "color")
        canCancelRequest = try container.decodeIfPresent(Bool.self, forKey: "canCancelRequest")
        programType = try container.decodeIfPresent(ProgramType.self, forKey: "programType")
    }
}

