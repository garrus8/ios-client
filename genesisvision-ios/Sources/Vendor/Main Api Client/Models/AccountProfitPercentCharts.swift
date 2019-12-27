//
// AccountProfitPercentCharts.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class AccountProfitPercentCharts: Codable {

    public var statistic: AccountChartStatistic?
    public var charts: [SimpleChart]?


    
    public init(statistic: AccountChartStatistic?, charts: [SimpleChart]?) {
        self.statistic = statistic
        self.charts = charts
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(statistic, forKey: "statistic")
        try container.encodeIfPresent(charts, forKey: "charts")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        statistic = try container.decodeIfPresent(AccountChartStatistic.self, forKey: "statistic")
        charts = try container.decodeIfPresent([SimpleChart].self, forKey: "charts")
    }
}

