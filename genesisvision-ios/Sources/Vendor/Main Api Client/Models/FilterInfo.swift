//
// FilterInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct FilterInfo: Codable {


    public var walletTransactions: [FilterItemInfo]?

    public var walletExternalTransactions: [FilterItemInfo]?

    public var events: EventFilters?

    public var assets: [FilterItemInfo]?

    public var fundsHistoryEvents: [FilterItemInfo]?
    public init(walletTransactions: [FilterItemInfo]? = nil, walletExternalTransactions: [FilterItemInfo]? = nil, events: EventFilters? = nil, assets: [FilterItemInfo]? = nil, fundsHistoryEvents: [FilterItemInfo]? = nil) { 
        self.walletTransactions = walletTransactions
        self.walletExternalTransactions = walletExternalTransactions
        self.events = events
        self.assets = assets
        self.fundsHistoryEvents = fundsHistoryEvents
    }

}
