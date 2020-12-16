//
// BinanceRawFuturesCompositeIndexInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct BinanceRawFuturesCompositeIndexInfo: Codable {


    public var symbol: String?

    public var timestamp: Date?

    public var baseAssets: [BinanceRawFuturesCompositeIndexInfoAsset]?
    public init(symbol: String? = nil, timestamp: Date? = nil, baseAssets: [BinanceRawFuturesCompositeIndexInfoAsset]? = nil) { 
        self.symbol = symbol
        self.timestamp = timestamp
        self.baseAssets = baseAssets
    }

}
