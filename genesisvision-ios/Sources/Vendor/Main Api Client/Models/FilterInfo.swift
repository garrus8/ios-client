//
// FilterInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class FilterInfo: Codable {

    public var walletTransactions: [FilterItemInfo]?
    public var walletExternalTransactions: [FilterItemInfo]?
    public var events: EventFilters?
    public var assets: [FilterItemInfo]?


    
    public init(walletTransactions: [FilterItemInfo]?, walletExternalTransactions: [FilterItemInfo]?, events: EventFilters?, assets: [FilterItemInfo]?) {
        self.walletTransactions = walletTransactions
        self.walletExternalTransactions = walletExternalTransactions
        self.events = events
        self.assets = assets
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(walletTransactions, forKey: "walletTransactions")
        try container.encodeIfPresent(walletExternalTransactions, forKey: "walletExternalTransactions")
        try container.encodeIfPresent(events, forKey: "events")
        try container.encodeIfPresent(assets, forKey: "assets")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        walletTransactions = try container.decodeIfPresent([FilterItemInfo].self, forKey: "walletTransactions")
        walletExternalTransactions = try container.decodeIfPresent([FilterItemInfo].self, forKey: "walletExternalTransactions")
        events = try container.decodeIfPresent(EventFilters.self, forKey: "events")
        assets = try container.decodeIfPresent([FilterItemInfo].self, forKey: "assets")
    }
}

