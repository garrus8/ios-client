//
// BinanceRawAccountInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct BinanceRawAccountInfo: Codable {


    public var makerCommission: Double?

    public var takerCommission: Double?

    public var buyerCommission: Double?

    public var sellerCommission: Double?

    public var canTrade: Bool?

    public var canWithdraw: Bool?

    public var canDeposit: Bool?

    public var updateTime: Date?

    public var accountType: BinanceAccountType?

    public var permissions: [BinanceAccountType]?

    public var balances: [BinanceRawBinanceBalance]?
    public init(makerCommission: Double? = nil, takerCommission: Double? = nil, buyerCommission: Double? = nil, sellerCommission: Double? = nil, canTrade: Bool? = nil, canWithdraw: Bool? = nil, canDeposit: Bool? = nil, updateTime: Date? = nil, accountType: BinanceAccountType? = nil, permissions: [BinanceAccountType]? = nil, balances: [BinanceRawBinanceBalance]? = nil) { 
        self.makerCommission = makerCommission
        self.takerCommission = takerCommission
        self.buyerCommission = buyerCommission
        self.sellerCommission = sellerCommission
        self.canTrade = canTrade
        self.canWithdraw = canWithdraw
        self.canDeposit = canDeposit
        self.updateTime = updateTime
        self.accountType = accountType
        self.permissions = permissions
        self.balances = balances
    }

}
