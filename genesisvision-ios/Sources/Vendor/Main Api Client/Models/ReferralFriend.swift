//
// ReferralFriend.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class ReferralFriend: Codable {

    public var date: Date?
    public var emailMask: String?


    
    public init(date: Date?, emailMask: String?) {
        self.date = date
        self.emailMask = emailMask
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(date, forKey: "date")
        try container.encodeIfPresent(emailMask, forKey: "emailMask")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        date = try container.decodeIfPresent(Date.self, forKey: "date")
        emailMask = try container.decodeIfPresent(String.self, forKey: "emailMask")
    }
}

