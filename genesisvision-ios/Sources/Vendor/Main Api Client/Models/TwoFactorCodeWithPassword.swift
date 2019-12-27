//
// TwoFactorCodeWithPassword.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class TwoFactorCodeWithPassword: Codable {

    public var twoFactorCode: String
    public var password: String


    
    public init(twoFactorCode: String, password: String) {
        self.twoFactorCode = twoFactorCode
        self.password = password
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(twoFactorCode, forKey: "twoFactorCode")
        try container.encode(password, forKey: "password")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        twoFactorCode = try container.decode(String.self, forKey: "twoFactorCode")
        password = try container.decode(String.self, forKey: "password")
    }
}

