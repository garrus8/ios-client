//
// ProgramUpdate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct ProgramUpdate: Codable {


    public var title: String?

    public var _description: String?

    public var logo: String?

    public var entryFee: Double?

    public var exitFee: Double?

    public var successFee: Double?

    public var stopOutLevel: Double?

    public var investmentLimit: Double?

    public var tradesDelay: TradesDelay?

    public var hourProcessing: Int?

    public var isProcessingRealTime: Bool?

    public var _id: UUID?
    public init(title: String? = nil, _description: String? = nil, logo: String? = nil, entryFee: Double? = nil, exitFee: Double? = nil, successFee: Double? = nil, stopOutLevel: Double? = nil, investmentLimit: Double? = nil, tradesDelay: TradesDelay? = nil, hourProcessing: Int? = nil, isProcessingRealTime: Bool? = nil, _id: UUID? = nil) { 
        self.title = title
        self._description = _description
        self.logo = logo
        self.entryFee = entryFee
        self.exitFee = exitFee
        self.successFee = successFee
        self.stopOutLevel = stopOutLevel
        self.investmentLimit = investmentLimit
        self.tradesDelay = tradesDelay
        self.hourProcessing = hourProcessing
        self.isProcessingRealTime = isProcessingRealTime
        self._id = _id
    }
    public enum CodingKeys: String, CodingKey { 
        case title
        case _description = "description"
        case logo
        case entryFee
        case exitFee
        case successFee
        case stopOutLevel
        case investmentLimit
        case tradesDelay
        case hourProcessing
        case isProcessingRealTime
        case _id = "id"
    }

}
