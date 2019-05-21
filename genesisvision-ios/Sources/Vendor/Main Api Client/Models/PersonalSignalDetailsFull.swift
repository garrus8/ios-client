//
// PersonalSignalDetailsFull.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class PersonalSignalDetailsFull: Codable {

    public var subscriptionDate: Date?
    public var tradesCount: Int?
    public var signalSubscription: SignalSubscription?
    public var profit: Double?


    
    public init(subscriptionDate: Date?, tradesCount: Int?, signalSubscription: SignalSubscription?, profit: Double?) {
        self.subscriptionDate = subscriptionDate
        self.tradesCount = tradesCount
        self.signalSubscription = signalSubscription
        self.profit = profit
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(subscriptionDate, forKey: "subscriptionDate")
        try container.encodeIfPresent(tradesCount, forKey: "tradesCount")
        try container.encodeIfPresent(signalSubscription, forKey: "signalSubscription")
        try container.encodeIfPresent(profit, forKey: "profit")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        subscriptionDate = try container.decodeIfPresent(Date.self, forKey: "subscriptionDate")
        tradesCount = try container.decodeIfPresent(Int.self, forKey: "tradesCount")
        signalSubscription = try container.decodeIfPresent(SignalSubscription.self, forKey: "signalSubscription")
        profit = try container.decodeIfPresent(Double.self, forKey: "profit")
    }
}

