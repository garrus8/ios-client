//
// SignalSubscriberInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class SignalSubscriberInfo: Codable {

    public var tradingAccountId: UUID?
    public var tradingAccountLogin: String?


    
    public init(tradingAccountId: UUID?, tradingAccountLogin: String?) {
        self.tradingAccountId = tradingAccountId
        self.tradingAccountLogin = tradingAccountLogin
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(tradingAccountId, forKey: "tradingAccountId")
        try container.encodeIfPresent(tradingAccountLogin, forKey: "tradingAccountLogin")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        tradingAccountId = try container.decodeIfPresent(UUID.self, forKey: "tradingAccountId")
        tradingAccountLogin = try container.decodeIfPresent(String.self, forKey: "tradingAccountLogin")
    }
}

