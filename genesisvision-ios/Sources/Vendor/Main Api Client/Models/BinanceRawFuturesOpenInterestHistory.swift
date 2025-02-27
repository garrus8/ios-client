//
// BinanceRawFuturesOpenInterestHistory.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct BinanceRawFuturesOpenInterestHistory: Codable {


    public var symbol: String?

    public var sumOpenInterest: Double?

    public var sumOpenInterestValue: Double?

    public var timestamp: Date?
    public init(symbol: String? = nil, sumOpenInterest: Double? = nil, sumOpenInterestValue: Double? = nil, timestamp: Date? = nil) { 
        self.symbol = symbol
        self.sumOpenInterest = sumOpenInterest
        self.sumOpenInterestValue = sumOpenInterestValue
        self.timestamp = timestamp
    }

}
