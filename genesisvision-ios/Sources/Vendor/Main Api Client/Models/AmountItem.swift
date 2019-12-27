//
// AmountItem.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class AmountItem: Codable {

    public var amount: Double?
    public var currency: Currency?
    public var color: Color?
    public var logo: String?


    
    public init(amount: Double?, currency: Currency?, color: Color?, logo: String?) {
        self.amount = amount
        self.currency = currency
        self.color = color
        self.logo = logo
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(amount, forKey: "amount")
        try container.encodeIfPresent(currency, forKey: "currency")
        try container.encodeIfPresent(color, forKey: "color")
        try container.encodeIfPresent(logo, forKey: "logo")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        amount = try container.decodeIfPresent(Double.self, forKey: "amount")
        currency = try container.decodeIfPresent(Currency.self, forKey: "currency")
        color = try container.decodeIfPresent(Color.self, forKey: "color")
        logo = try container.decodeIfPresent(String.self, forKey: "logo")
    }
}

