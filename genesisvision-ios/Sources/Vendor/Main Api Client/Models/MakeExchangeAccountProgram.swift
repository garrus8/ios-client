//
// MakeExchangeAccountProgram.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct MakeExchangeAccountProgram: Codable {


    public var _id: UUID?

    public var currency: Currency?

    public var hourProcessing: Int?

    public var isProcessingRealTime: Bool?

    public var tradesDelay: TradesDelay?

    public var managementFee: Double?

    public var successFee: Double?

    public var investmentLimit: Double?

    public var title: String?

    public var _description: String?

    public var logo: String?
    public init(_id: UUID? = nil, currency: Currency? = nil, hourProcessing: Int? = nil, isProcessingRealTime: Bool? = nil, tradesDelay: TradesDelay? = nil, managementFee: Double? = nil, successFee: Double? = nil, investmentLimit: Double? = nil, title: String? = nil, _description: String? = nil, logo: String? = nil) { 
        self._id = _id
        self.currency = currency
        self.hourProcessing = hourProcessing
        self.isProcessingRealTime = isProcessingRealTime
        self.tradesDelay = tradesDelay
        self.managementFee = managementFee
        self.successFee = successFee
        self.investmentLimit = investmentLimit
        self.title = title
        self._description = _description
        self.logo = logo
    }
    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case currency
        case hourProcessing
        case isProcessingRealTime
        case tradesDelay
        case managementFee
        case successFee
        case investmentLimit
        case title
        case _description = "description"
        case logo
    }

}
