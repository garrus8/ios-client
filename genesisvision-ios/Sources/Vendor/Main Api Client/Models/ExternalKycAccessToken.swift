//
// ExternalKycAccessToken.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct ExternalKycAccessToken: Codable {


    public var baseAddress: String?

    public var accessToken: String?

    public var flowName: String?
    public init(baseAddress: String? = nil, accessToken: String? = nil, flowName: String? = nil) { 
        self.baseAddress = baseAddress
        self.accessToken = accessToken
        self.flowName = flowName
    }

}
