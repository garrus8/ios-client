//
// FundProfitChart.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class FundProfitChart: Codable {

    public var totalUsdProfit: Double?
    public var timeframeUsdProfit: Double?
    public var rebalances: Int?
    public var creationDate: Date?
    public var equityChart: [ChartSimple]?
    public var balance: Double?
    public var investors: Int?
    public var sharpeRatio: Double?
    public var sortinoRatio: Double?
    public var calmarRatio: Double?
    public var maxDrawdown: Double?
    public var totalGvtProfit: Double?
    public var timeframeGvtProfit: Double?
    public var rate: Double?


    
    public init(totalUsdProfit: Double?, timeframeUsdProfit: Double?, rebalances: Int?, creationDate: Date?, equityChart: [ChartSimple]?, balance: Double?, investors: Int?, sharpeRatio: Double?, sortinoRatio: Double?, calmarRatio: Double?, maxDrawdown: Double?, totalGvtProfit: Double?, timeframeGvtProfit: Double?, rate: Double?) {
        self.totalUsdProfit = totalUsdProfit
        self.timeframeUsdProfit = timeframeUsdProfit
        self.rebalances = rebalances
        self.creationDate = creationDate
        self.equityChart = equityChart
        self.balance = balance
        self.investors = investors
        self.sharpeRatio = sharpeRatio
        self.sortinoRatio = sortinoRatio
        self.calmarRatio = calmarRatio
        self.maxDrawdown = maxDrawdown
        self.totalGvtProfit = totalGvtProfit
        self.timeframeGvtProfit = timeframeGvtProfit
        self.rate = rate
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(totalUsdProfit, forKey: "totalUsdProfit")
        try container.encodeIfPresent(timeframeUsdProfit, forKey: "timeframeUsdProfit")
        try container.encodeIfPresent(rebalances, forKey: "rebalances")
        try container.encodeIfPresent(creationDate, forKey: "creationDate")
        try container.encodeIfPresent(equityChart, forKey: "equityChart")
        try container.encodeIfPresent(balance, forKey: "balance")
        try container.encodeIfPresent(investors, forKey: "investors")
        try container.encodeIfPresent(sharpeRatio, forKey: "sharpeRatio")
        try container.encodeIfPresent(sortinoRatio, forKey: "sortinoRatio")
        try container.encodeIfPresent(calmarRatio, forKey: "calmarRatio")
        try container.encodeIfPresent(maxDrawdown, forKey: "maxDrawdown")
        try container.encodeIfPresent(totalGvtProfit, forKey: "totalGvtProfit")
        try container.encodeIfPresent(timeframeGvtProfit, forKey: "timeframeGvtProfit")
        try container.encodeIfPresent(rate, forKey: "rate")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        totalUsdProfit = try container.decodeIfPresent(Double.self, forKey: "totalUsdProfit")
        timeframeUsdProfit = try container.decodeIfPresent(Double.self, forKey: "timeframeUsdProfit")
        rebalances = try container.decodeIfPresent(Int.self, forKey: "rebalances")
        creationDate = try container.decodeIfPresent(Date.self, forKey: "creationDate")
        equityChart = try container.decodeIfPresent([ChartSimple].self, forKey: "equityChart")
        balance = try container.decodeIfPresent(Double.self, forKey: "balance")
        investors = try container.decodeIfPresent(Int.self, forKey: "investors")
        sharpeRatio = try container.decodeIfPresent(Double.self, forKey: "sharpeRatio")
        sortinoRatio = try container.decodeIfPresent(Double.self, forKey: "sortinoRatio")
        calmarRatio = try container.decodeIfPresent(Double.self, forKey: "calmarRatio")
        maxDrawdown = try container.decodeIfPresent(Double.self, forKey: "maxDrawdown")
        totalGvtProfit = try container.decodeIfPresent(Double.self, forKey: "totalGvtProfit")
        timeframeGvtProfit = try container.decodeIfPresent(Double.self, forKey: "timeframeGvtProfit")
        rate = try container.decodeIfPresent(Double.self, forKey: "rate")
    }
}

