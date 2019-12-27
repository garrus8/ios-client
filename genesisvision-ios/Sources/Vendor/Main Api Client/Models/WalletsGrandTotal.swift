//
// WalletsGrandTotal.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class WalletsGrandTotal: Codable {

    public var currency: Currency?
    public var available: Double?
    public var invested: Double?
    public var trading: Double?
    public var total: Double?


    
    public init(currency: Currency?, available: Double?, invested: Double?, trading: Double?, total: Double?) {
        self.currency = currency
        self.available = available
        self.invested = invested
        self.trading = trading
        self.total = total
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(currency, forKey: "currency")
        try container.encodeIfPresent(available, forKey: "available")
        try container.encodeIfPresent(invested, forKey: "invested")
        try container.encodeIfPresent(trading, forKey: "trading")
        try container.encodeIfPresent(total, forKey: "total")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        currency = try container.decodeIfPresent(Currency.self, forKey: "currency")
        available = try container.decodeIfPresent(Double.self, forKey: "available")
        invested = try container.decodeIfPresent(Double.self, forKey: "invested")
        trading = try container.decodeIfPresent(Double.self, forKey: "trading")
        total = try container.decodeIfPresent(Double.self, forKey: "total")
    }
}

