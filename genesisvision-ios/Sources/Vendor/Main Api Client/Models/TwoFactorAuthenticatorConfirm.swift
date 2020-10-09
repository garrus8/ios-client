//
// TwoFactorAuthenticatorConfirm.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct TwoFactorAuthenticatorConfirm: Codable {


    public var password: String

    public var code: String

    public var sharedKey: String
    public init(password: String, code: String, sharedKey: String) { 
        self.password = password
        self.code = code
        self.sharedKey = sharedKey
    }

}
