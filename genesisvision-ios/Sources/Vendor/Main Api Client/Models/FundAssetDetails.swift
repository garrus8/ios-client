//
// FundAssetDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct FundAssetDetails: Codable {


    public var topFundAssets: [FundAssetPercent]?

    public var totalAssetsCount: Int?

    public var tradingSchedule: TradingScheduleInfo?
    public init(topFundAssets: [FundAssetPercent]? = nil, totalAssetsCount: Int? = nil, tradingSchedule: TradingScheduleInfo? = nil) { 
        self.topFundAssets = topFundAssets
        self.totalAssetsCount = totalAssetsCount
        self.tradingSchedule = tradingSchedule
    }

}
