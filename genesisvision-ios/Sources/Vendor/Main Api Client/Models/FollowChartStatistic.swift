//
// FollowChartStatistic.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class FollowChartStatistic: Codable {

    public var subscribers: Int?
    public var tradingVolume: Double?
    public var trades: Int?
    public var successTradesPercent: Double?
    public var profitFactor: Double?
    public var balance: Double?
    public var profitPercent: Double?
    public var sharpeRatio: Double?
    public var sortinoRatio: Double?
    public var calmarRatio: Double?
    public var maxDrawdown: Double?


    
    public init(subscribers: Int?, tradingVolume: Double?, trades: Int?, successTradesPercent: Double?, profitFactor: Double?, balance: Double?, profitPercent: Double?, sharpeRatio: Double?, sortinoRatio: Double?, calmarRatio: Double?, maxDrawdown: Double?) {
        self.subscribers = subscribers
        self.tradingVolume = tradingVolume
        self.trades = trades
        self.successTradesPercent = successTradesPercent
        self.profitFactor = profitFactor
        self.balance = balance
        self.profitPercent = profitPercent
        self.sharpeRatio = sharpeRatio
        self.sortinoRatio = sortinoRatio
        self.calmarRatio = calmarRatio
        self.maxDrawdown = maxDrawdown
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(subscribers, forKey: "subscribers")
        try container.encodeIfPresent(tradingVolume, forKey: "tradingVolume")
        try container.encodeIfPresent(trades, forKey: "trades")
        try container.encodeIfPresent(successTradesPercent, forKey: "successTradesPercent")
        try container.encodeIfPresent(profitFactor, forKey: "profitFactor")
        try container.encodeIfPresent(balance, forKey: "balance")
        try container.encodeIfPresent(profitPercent, forKey: "profitPercent")
        try container.encodeIfPresent(sharpeRatio, forKey: "sharpeRatio")
        try container.encodeIfPresent(sortinoRatio, forKey: "sortinoRatio")
        try container.encodeIfPresent(calmarRatio, forKey: "calmarRatio")
        try container.encodeIfPresent(maxDrawdown, forKey: "maxDrawdown")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        subscribers = try container.decodeIfPresent(Int.self, forKey: "subscribers")
        tradingVolume = try container.decodeIfPresent(Double.self, forKey: "tradingVolume")
        trades = try container.decodeIfPresent(Int.self, forKey: "trades")
        successTradesPercent = try container.decodeIfPresent(Double.self, forKey: "successTradesPercent")
        profitFactor = try container.decodeIfPresent(Double.self, forKey: "profitFactor")
        balance = try container.decodeIfPresent(Double.self, forKey: "balance")
        profitPercent = try container.decodeIfPresent(Double.self, forKey: "profitPercent")
        sharpeRatio = try container.decodeIfPresent(Double.self, forKey: "sharpeRatio")
        sortinoRatio = try container.decodeIfPresent(Double.self, forKey: "sortinoRatio")
        calmarRatio = try container.decodeIfPresent(Double.self, forKey: "calmarRatio")
        maxDrawdown = try container.decodeIfPresent(Double.self, forKey: "maxDrawdown")
    }
}

