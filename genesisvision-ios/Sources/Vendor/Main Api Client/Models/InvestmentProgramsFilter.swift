//
// InvestmentProgramsFilter.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class InvestmentProgramsFilter: Codable {

    public enum Sorting: String, Codable { 
        case byLevelAsc = "ByLevelAsc"
        case byLevelDesc = "ByLevelDesc"
        case byProfitAsc = "ByProfitAsc"
        case byProfitDesc = "ByProfitDesc"
        case byOrdersAsc = "ByOrdersAsc"
        case byOrdersDesc = "ByOrdersDesc"
        case byEndOfPeriodAsc = "ByEndOfPeriodAsc"
        case byEndOfPeriodDesc = "ByEndOfPeriodDesc"
        case byTitleAsc = "ByTitleAsc"
        case byTitleDesc = "ByTitleDesc"
        case byBalanceAsc = "ByBalanceAsc"
        case byBalanceDesc = "ByBalanceDesc"
    }
    public enum ProfitTotalChange: String, Codable { 
        case unchanged = "Unchanged"
        case up = "Up"
        case down = "Down"
    }
    public var managerId: UUID?
    public var brokerId: UUID?
    public var brokerTradeServerId: UUID?
    public var investMaxAmountFrom: Double?
    public var investMaxAmountTo: Double?
    public var sorting: Sorting?
    public var name: String?
    public var levelMin: Int?
    public var levelMax: Int?
    public var balanceUsdMin: Double?
    public var balanceUsdMax: Double?
    public var profitAvgMin: Double?
    public var profitAvgMax: Double?
    public var profitTotalMin: Double?
    public var profitTotalMax: Double?
    public var profitTotalPercentMin: Double?
    public var profitTotalPercentMax: Double?
    public var profitAvgPercentMin: Double?
    public var profitAvgPercentMax: Double?
    public var profitTotalChange: ProfitTotalChange?
    public var periodMin: Int?
    public var periodMax: Int?
    public var showActivePrograms: Bool?
    public var equityChartLength: Int?
    public var showMyFavorites: Bool?
    public var roundNumber: Int?
    public var skip: Int?
    public var take: Int?


    
    public init(managerId: UUID?, brokerId: UUID?, brokerTradeServerId: UUID?, investMaxAmountFrom: Double?, investMaxAmountTo: Double?, sorting: Sorting?, name: String?, levelMin: Int?, levelMax: Int?, balanceUsdMin: Double?, balanceUsdMax: Double?, profitAvgMin: Double?, profitAvgMax: Double?, profitTotalMin: Double?, profitTotalMax: Double?, profitTotalPercentMin: Double?, profitTotalPercentMax: Double?, profitAvgPercentMin: Double?, profitAvgPercentMax: Double?, profitTotalChange: ProfitTotalChange?, periodMin: Int?, periodMax: Int?, showActivePrograms: Bool?, equityChartLength: Int?, showMyFavorites: Bool?, roundNumber: Int?, skip: Int?, take: Int?) {
        self.managerId = managerId
        self.brokerId = brokerId
        self.brokerTradeServerId = brokerTradeServerId
        self.investMaxAmountFrom = investMaxAmountFrom
        self.investMaxAmountTo = investMaxAmountTo
        self.sorting = sorting
        self.name = name
        self.levelMin = levelMin
        self.levelMax = levelMax
        self.balanceUsdMin = balanceUsdMin
        self.balanceUsdMax = balanceUsdMax
        self.profitAvgMin = profitAvgMin
        self.profitAvgMax = profitAvgMax
        self.profitTotalMin = profitTotalMin
        self.profitTotalMax = profitTotalMax
        self.profitTotalPercentMin = profitTotalPercentMin
        self.profitTotalPercentMax = profitTotalPercentMax
        self.profitAvgPercentMin = profitAvgPercentMin
        self.profitAvgPercentMax = profitAvgPercentMax
        self.profitTotalChange = profitTotalChange
        self.periodMin = periodMin
        self.periodMax = periodMax
        self.showActivePrograms = showActivePrograms
        self.equityChartLength = equityChartLength
        self.showMyFavorites = showMyFavorites
        self.roundNumber = roundNumber
        self.skip = skip
        self.take = take
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(managerId, forKey: "managerId")
        try container.encodeIfPresent(brokerId, forKey: "brokerId")
        try container.encodeIfPresent(brokerTradeServerId, forKey: "brokerTradeServerId")
        try container.encodeIfPresent(investMaxAmountFrom, forKey: "investMaxAmountFrom")
        try container.encodeIfPresent(investMaxAmountTo, forKey: "investMaxAmountTo")
        try container.encodeIfPresent(sorting, forKey: "sorting")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(levelMin, forKey: "levelMin")
        try container.encodeIfPresent(levelMax, forKey: "levelMax")
        try container.encodeIfPresent(balanceUsdMin, forKey: "balanceUsdMin")
        try container.encodeIfPresent(balanceUsdMax, forKey: "balanceUsdMax")
        try container.encodeIfPresent(profitAvgMin, forKey: "profitAvgMin")
        try container.encodeIfPresent(profitAvgMax, forKey: "profitAvgMax")
        try container.encodeIfPresent(profitTotalMin, forKey: "profitTotalMin")
        try container.encodeIfPresent(profitTotalMax, forKey: "profitTotalMax")
        try container.encodeIfPresent(profitTotalPercentMin, forKey: "profitTotalPercentMin")
        try container.encodeIfPresent(profitTotalPercentMax, forKey: "profitTotalPercentMax")
        try container.encodeIfPresent(profitAvgPercentMin, forKey: "profitAvgPercentMin")
        try container.encodeIfPresent(profitAvgPercentMax, forKey: "profitAvgPercentMax")
        try container.encodeIfPresent(profitTotalChange, forKey: "profitTotalChange")
        try container.encodeIfPresent(periodMin, forKey: "periodMin")
        try container.encodeIfPresent(periodMax, forKey: "periodMax")
        try container.encodeIfPresent(showActivePrograms, forKey: "showActivePrograms")
        try container.encodeIfPresent(equityChartLength, forKey: "equityChartLength")
        try container.encodeIfPresent(showMyFavorites, forKey: "showMyFavorites")
        try container.encodeIfPresent(roundNumber, forKey: "roundNumber")
        try container.encodeIfPresent(skip, forKey: "skip")
        try container.encodeIfPresent(take, forKey: "take")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        managerId = try container.decodeIfPresent(UUID.self, forKey: "managerId")
        brokerId = try container.decodeIfPresent(UUID.self, forKey: "brokerId")
        brokerTradeServerId = try container.decodeIfPresent(UUID.self, forKey: "brokerTradeServerId")
        investMaxAmountFrom = try container.decodeIfPresent(Double.self, forKey: "investMaxAmountFrom")
        investMaxAmountTo = try container.decodeIfPresent(Double.self, forKey: "investMaxAmountTo")
        sorting = try container.decodeIfPresent(Sorting.self, forKey: "sorting")
        name = try container.decodeIfPresent(String.self, forKey: "name")
        levelMin = try container.decodeIfPresent(Int.self, forKey: "levelMin")
        levelMax = try container.decodeIfPresent(Int.self, forKey: "levelMax")
        balanceUsdMin = try container.decodeIfPresent(Double.self, forKey: "balanceUsdMin")
        balanceUsdMax = try container.decodeIfPresent(Double.self, forKey: "balanceUsdMax")
        profitAvgMin = try container.decodeIfPresent(Double.self, forKey: "profitAvgMin")
        profitAvgMax = try container.decodeIfPresent(Double.self, forKey: "profitAvgMax")
        profitTotalMin = try container.decodeIfPresent(Double.self, forKey: "profitTotalMin")
        profitTotalMax = try container.decodeIfPresent(Double.self, forKey: "profitTotalMax")
        profitTotalPercentMin = try container.decodeIfPresent(Double.self, forKey: "profitTotalPercentMin")
        profitTotalPercentMax = try container.decodeIfPresent(Double.self, forKey: "profitTotalPercentMax")
        profitAvgPercentMin = try container.decodeIfPresent(Double.self, forKey: "profitAvgPercentMin")
        profitAvgPercentMax = try container.decodeIfPresent(Double.self, forKey: "profitAvgPercentMax")
        profitTotalChange = try container.decodeIfPresent(ProfitTotalChange.self, forKey: "profitTotalChange")
        periodMin = try container.decodeIfPresent(Int.self, forKey: "periodMin")
        periodMax = try container.decodeIfPresent(Int.self, forKey: "periodMax")
        showActivePrograms = try container.decodeIfPresent(Bool.self, forKey: "showActivePrograms")
        equityChartLength = try container.decodeIfPresent(Int.self, forKey: "equityChartLength")
        showMyFavorites = try container.decodeIfPresent(Bool.self, forKey: "showMyFavorites")
        roundNumber = try container.decodeIfPresent(Int.self, forKey: "roundNumber")
        skip = try container.decodeIfPresent(Int.self, forKey: "skip")
        take = try container.decodeIfPresent(Int.self, forKey: "take")
    }
}

