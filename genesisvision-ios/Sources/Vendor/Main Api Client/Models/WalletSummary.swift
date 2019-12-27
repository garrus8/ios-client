//
// WalletSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class WalletSummary: Codable {

    public var grandTotal: WalletsGrandTotal?
    public var wallets: [WalletData]?
    public var payFeesWithGvt: Bool?


    
    public init(grandTotal: WalletsGrandTotal?, wallets: [WalletData]?, payFeesWithGvt: Bool?) {
        self.grandTotal = grandTotal
        self.wallets = wallets
        self.payFeesWithGvt = payFeesWithGvt
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(grandTotal, forKey: "grandTotal")
        try container.encodeIfPresent(wallets, forKey: "wallets")
        try container.encodeIfPresent(payFeesWithGvt, forKey: "payFeesWithGvt")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        grandTotal = try container.decodeIfPresent(WalletsGrandTotal.self, forKey: "grandTotal")
        wallets = try container.decodeIfPresent([WalletData].self, forKey: "wallets")
        payFeesWithGvt = try container.decodeIfPresent(Bool.self, forKey: "payFeesWithGvt")
    }
}

