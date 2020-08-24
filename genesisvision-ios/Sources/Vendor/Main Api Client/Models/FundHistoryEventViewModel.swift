//
// FundHistoryEventViewModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct FundHistoryEventViewModel: Codable {


    public var date: Date?

    public var type: FundHistoryEventType?

    public var _description: String?

    public var logoUrl: String?

    public var trades: [FundTradingEventViewModel]?

    /** Reallocation/fund creation */
    public var newAssets: [FundAssetPartWithIcon]?
    public init(date: Date? = nil, type: FundHistoryEventType? = nil, _description: String? = nil, logoUrl: String? = nil, trades: [FundTradingEventViewModel]? = nil, newAssets: [FundAssetPartWithIcon]? = nil) { 
        self.date = date
        self.type = type
        self._description = _description
        self.logoUrl = logoUrl
        self.trades = trades
        self.newAssets = newAssets
    }
    public enum CodingKeys: String, CodingKey { 
        case date
        case type
        case _description = "description"
        case logoUrl
        case trades
        case newAssets
    }

}
