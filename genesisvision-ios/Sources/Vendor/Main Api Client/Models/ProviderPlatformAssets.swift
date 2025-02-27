//
// ProviderPlatformAssets.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct ProviderPlatformAssets: Codable {


    public var type: AssetProvider?

    public var tradingSchedule: TradingScheduleInfo?
    public init(type: AssetProvider? = nil, tradingSchedule: TradingScheduleInfo? = nil) { 
        self.type = type
        self.tradingSchedule = tradingSchedule
    }

}
