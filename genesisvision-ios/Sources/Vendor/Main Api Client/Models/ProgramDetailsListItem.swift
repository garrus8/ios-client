//
// ProgramDetailsListItem.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct ProgramDetailsListItem: Codable {


    public var _id: UUID?

    public var type: ProgramType?

    public var logoUrl: String?

    public var url: String?

    public var index: Int?

    public var _description: String?

    public var color: String?

    public var title: String?

    public var creationDate: Date?

    public var currency: Currency?

    public var level: Int?

    public var levelProgress: Double?

    public var periodDuration: Int?

    public var availableToInvest: Double?

    public var investorsCount: Int?

    public var periodStarts: Date?

    public var periodEnds: Date?

    public var status: String?

    public var entryFeeSelected: Double?

    public var entryFeeCurrent: Double?

    public var brokerId: UUID?

    public var owner: ProfilePublicShort?

    public var personalDetails: PersonalProgramDetailsList?

    public var tags: [Tag]?

    public var statistic: ProfitChart?

    public var balance: AmountWithCurrency?
    public init(_id: UUID? = nil, type: ProgramType? = nil, logoUrl: String? = nil, url: String? = nil, index: Int? = nil, _description: String? = nil, color: String? = nil, title: String? = nil, creationDate: Date? = nil, currency: Currency? = nil, level: Int? = nil, levelProgress: Double? = nil, periodDuration: Int? = nil, availableToInvest: Double? = nil, investorsCount: Int? = nil, periodStarts: Date? = nil, periodEnds: Date? = nil, status: String? = nil, entryFeeSelected: Double? = nil, entryFeeCurrent: Double? = nil, brokerId: UUID? = nil, owner: ProfilePublicShort? = nil, personalDetails: PersonalProgramDetailsList? = nil, tags: [Tag]? = nil, statistic: ProfitChart? = nil, balance: AmountWithCurrency? = nil) { 
        self._id = _id
        self.type = type
        self.logoUrl = logoUrl
        self.url = url
        self.index = index
        self._description = _description
        self.color = color
        self.title = title
        self.creationDate = creationDate
        self.currency = currency
        self.level = level
        self.levelProgress = levelProgress
        self.periodDuration = periodDuration
        self.availableToInvest = availableToInvest
        self.investorsCount = investorsCount
        self.periodStarts = periodStarts
        self.periodEnds = periodEnds
        self.status = status
        self.entryFeeSelected = entryFeeSelected
        self.entryFeeCurrent = entryFeeCurrent
        self.brokerId = brokerId
        self.owner = owner
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
        case index
        case _description = "description"
        case color
        case title
        case creationDate
        case currency
        case level
        case levelProgress
        case periodDuration
        case availableToInvest
        case investorsCount
        case periodStarts
        case periodEnds
        case status
        case entryFeeSelected
        case entryFeeCurrent
        case brokerId
        case owner
        case personalDetails
        case tags
        case statistic
        case balance
    }

}
