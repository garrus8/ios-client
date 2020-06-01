//
// DashboardTradingAssetCredentials.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct DashboardTradingAssetCredentials: Codable {


    public var apiKey: String?

    public var apiSecret: String?
    public init(apiKey: String? = nil, apiSecret: String? = nil) { 
        self.apiKey = apiKey
        self.apiSecret = apiSecret
    }

}
