//
// InternalTransferRequestType.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

public enum InternalTransferRequestType: String, Codable {
    case undefined = "Undefined"
    case wallet = "Wallet"
    case tradingAccount = "TradingAccount"
    case privateTradingAccount = "PrivateTradingAccount"
    case signalTradingAccount = "SignalTradingAccount"
    case publicTradingAccount = "PublicTradingAccount"
    case exchangeAccount = "ExchangeAccount"
}