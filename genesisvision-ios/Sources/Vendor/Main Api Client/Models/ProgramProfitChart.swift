//
// ProgramProfitChart.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class ProgramProfitChart: Codable {

    public enum ProgramCurrency: String, Codable { 
        case undefined = "Undefined"
        case gvt = "GVT"
        case eth = "ETH"
        case btc = "BTC"
        case ada = "ADA"
        case usdt = "USDT"
        case xrp = "XRP"
        case bch = "BCH"
        case ltc = "LTC"
        case doge = "DOGE"
        case usd = "USD"
        case eur = "EUR"
    }
    public var totalProgramCurrencyProfit: Double?
    public var timeframeProgramCurrencyProfit: Double?
    public var programCurrency: ProgramCurrency?
    public var trades: Int?
    public var successTradesPercent: Double?
    public var profitFactor: Double?
    public var profitChangePercent: Double?
    public var pnLChart: [ChartSimple]?
    public var periods: [PeriodDate]?
    public var lastPeriodStarts: Date?
    public var lastPeriodEnds: Date?
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


    
    public init(totalProgramCurrencyProfit: Double?, timeframeProgramCurrencyProfit: Double?, programCurrency: ProgramCurrency?, trades: Int?, successTradesPercent: Double?, profitFactor: Double?, profitChangePercent: Double?, pnLChart: [ChartSimple]?, periods: [PeriodDate]?, lastPeriodStarts: Date?, lastPeriodEnds: Date?, equityChart: [ChartSimple]?, balance: Double?, investors: Int?, sharpeRatio: Double?, sortinoRatio: Double?, calmarRatio: Double?, maxDrawdown: Double?, totalGvtProfit: Double?, timeframeGvtProfit: Double?, rate: Double?) {
        self.totalProgramCurrencyProfit = totalProgramCurrencyProfit
        self.timeframeProgramCurrencyProfit = timeframeProgramCurrencyProfit
        self.programCurrency = programCurrency
        self.trades = trades
        self.successTradesPercent = successTradesPercent
        self.profitFactor = profitFactor
        self.profitChangePercent = profitChangePercent
        self.pnLChart = pnLChart
        self.periods = periods
        self.lastPeriodStarts = lastPeriodStarts
        self.lastPeriodEnds = lastPeriodEnds
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

        try container.encodeIfPresent(totalProgramCurrencyProfit, forKey: "totalProgramCurrencyProfit")
        try container.encodeIfPresent(timeframeProgramCurrencyProfit, forKey: "timeframeProgramCurrencyProfit")
        try container.encodeIfPresent(programCurrency, forKey: "programCurrency")
        try container.encodeIfPresent(trades, forKey: "trades")
        try container.encodeIfPresent(successTradesPercent, forKey: "successTradesPercent")
        try container.encodeIfPresent(profitFactor, forKey: "profitFactor")
        try container.encodeIfPresent(profitChangePercent, forKey: "profitChangePercent")
        try container.encodeIfPresent(pnLChart, forKey: "pnLChart")
        try container.encodeIfPresent(periods, forKey: "periods")
        try container.encodeIfPresent(lastPeriodStarts, forKey: "lastPeriodStarts")
        try container.encodeIfPresent(lastPeriodEnds, forKey: "lastPeriodEnds")
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

        totalProgramCurrencyProfit = try container.decodeIfPresent(Double.self, forKey: "totalProgramCurrencyProfit")
        timeframeProgramCurrencyProfit = try container.decodeIfPresent(Double.self, forKey: "timeframeProgramCurrencyProfit")
        programCurrency = try container.decodeIfPresent(ProgramCurrency.self, forKey: "programCurrency")
        trades = try container.decodeIfPresent(Int.self, forKey: "trades")
        successTradesPercent = try container.decodeIfPresent(Double.self, forKey: "successTradesPercent")
        profitFactor = try container.decodeIfPresent(Double.self, forKey: "profitFactor")
        profitChangePercent = try container.decodeIfPresent(Double.self, forKey: "profitChangePercent")
        pnLChart = try container.decodeIfPresent([ChartSimple].self, forKey: "pnLChart")
        periods = try container.decodeIfPresent([PeriodDate].self, forKey: "periods")
        lastPeriodStarts = try container.decodeIfPresent(Date.self, forKey: "lastPeriodStarts")
        lastPeriodEnds = try container.decodeIfPresent(Date.self, forKey: "lastPeriodEnds")
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

