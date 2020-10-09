//
// DashboardProgramDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct DashboardProgramDetails: Codable {


    public var level: Int?

    public var levelProgress: Double?

    public var managementFeeSelected: Double?

    public var managementFeeCurrent: Double?

    public var successFeeSelected: Double?

    public var successFeeCurrent: Double?

    public var dailyPeriodDetails: ProgramDailyPeriodDetails?
    public init(level: Int? = nil, levelProgress: Double? = nil, managementFeeSelected: Double? = nil, managementFeeCurrent: Double? = nil, successFeeSelected: Double? = nil, successFeeCurrent: Double? = nil, dailyPeriodDetails: ProgramDailyPeriodDetails? = nil) { 
        self.level = level
        self.levelProgress = levelProgress
        self.managementFeeSelected = managementFeeSelected
        self.managementFeeCurrent = managementFeeCurrent
        self.successFeeSelected = successFeeSelected
        self.successFeeCurrent = successFeeCurrent
        self.dailyPeriodDetails = dailyPeriodDetails
    }

}
