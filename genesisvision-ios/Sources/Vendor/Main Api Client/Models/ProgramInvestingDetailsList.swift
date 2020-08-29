//
// ProgramInvestingDetailsList.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct ProgramInvestingDetailsList: Codable {


    public var _id: UUID?

    public var type: ProgramType?

    public var logoUrl: String?

    public var url: String?

    public var color: String?

    public var title: String?

    public var creationDate: Date?

    public var currency: Currency?

    public var availableToInvest: Double?

    public var level: Int?

    public var levelProgress: Double?

    public var periodDuration: Int?

    public var investorsCount: Int?

    public var periodStarts: Date?

    public var periodEnds: Date?

    public var owner: ProfilePublicShort?

    public var brokerDetails: BrokerDetails?

    public var personalDetails: PersonalInvestingProgramDetailsList?

    public var tags: [Tag]?

    public var statistic: ProfitChart?

    public var balance: AmountWithCurrency?
    public init(_id: UUID? = nil, type: ProgramType? = nil, logoUrl: String? = nil, url: String? = nil, color: String? = nil, title: String? = nil, creationDate: Date? = nil, currency: Currency? = nil, availableToInvest: Double? = nil, level: Int? = nil, levelProgress: Double? = nil, periodDuration: Int? = nil, investorsCount: Int? = nil, periodStarts: Date? = nil, periodEnds: Date? = nil, owner: ProfilePublicShort? = nil, brokerDetails: BrokerDetails? = nil, personalDetails: PersonalInvestingProgramDetailsList? = nil, tags: [Tag]? = nil, statistic: ProfitChart? = nil, balance: AmountWithCurrency? = nil) { 
        self._id = _id
        self.type = type
        self.logoUrl = logoUrl
        self.url = url
        self.color = color
        self.title = title
        self.creationDate = creationDate
        self.currency = currency
        self.availableToInvest = availableToInvest
        self.level = level
        self.levelProgress = levelProgress
        self.periodDuration = periodDuration
        self.investorsCount = investorsCount
        self.periodStarts = periodStarts
        self.periodEnds = periodEnds
        self.owner = owner
        self.brokerDetails = brokerDetails
        self.personalDetails = personalDetails
        self.tags = tags
        self.statistic = statistic
        self.balance = balance
    }
    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case type
        case logoUrl
        case url
        case color
        case title
        case creationDate
        case currency
        case availableToInvest
        case level
        case levelProgress
        case periodDuration
        case investorsCount
        case periodStarts
        case periodEnds
        case owner
        case brokerDetails
        case personalDetails
        case tags
        case statistic
        case balance
    }

}
