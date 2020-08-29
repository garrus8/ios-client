//
// DashboardTradingAssetActions.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct DashboardTradingAssetActions: Codable {


    public var canAddRequestInvest: Bool?

    public var canAddRequestWithdraw: Bool?

    public var canTransferMoney: Bool?

    public var canMakeDemoDeposit: Bool?

    public var canChangePassword: Bool?

    public var canClose: Bool?

    public var hasTerminal: Bool?

    public var canMakeProgramFromPrivateTradingAccount: Bool?

    public var canMakeExchangeProgramFromPrivateTradingAccount: Bool?

    public var canMakeSignalProviderFromPrivateTradingAccount: Bool?

    public var canMakeSignalProviderFromPrivateExternalTradingAccount: Bool?

    public var canMakeProgramFromSignalProvider: Bool?

    public var canMakeSignalProviderFromProgram: Bool?

    public var canEditSignalProviderSettings: Bool?

    public var isEnoughMoneyToCreateProgram: Bool?

    public var canConfirm2FA: Bool?
    public init(canAddRequestInvest: Bool? = nil, canAddRequestWithdraw: Bool? = nil, canTransferMoney: Bool? = nil, canMakeDemoDeposit: Bool? = nil, canChangePassword: Bool? = nil, canClose: Bool? = nil, hasTerminal: Bool? = nil, canMakeProgramFromPrivateTradingAccount: Bool? = nil, canMakeExchangeProgramFromPrivateTradingAccount: Bool? = nil, canMakeSignalProviderFromPrivateTradingAccount: Bool? = nil, canMakeSignalProviderFromPrivateExternalTradingAccount: Bool? = nil, canMakeProgramFromSignalProvider: Bool? = nil, canMakeSignalProviderFromProgram: Bool? = nil, canEditSignalProviderSettings: Bool? = nil, isEnoughMoneyToCreateProgram: Bool? = nil, canConfirm2FA: Bool? = nil) { 
        self.canAddRequestInvest = canAddRequestInvest
        self.canAddRequestWithdraw = canAddRequestWithdraw
        self.canTransferMoney = canTransferMoney
        self.canMakeDemoDeposit = canMakeDemoDeposit
        self.canChangePassword = canChangePassword
        self.canClose = canClose
        self.hasTerminal = hasTerminal
        self.canMakeProgramFromPrivateTradingAccount = canMakeProgramFromPrivateTradingAccount
        self.canMakeExchangeProgramFromPrivateTradingAccount = canMakeExchangeProgramFromPrivateTradingAccount
        self.canMakeSignalProviderFromPrivateTradingAccount = canMakeSignalProviderFromPrivateTradingAccount
        self.canMakeSignalProviderFromPrivateExternalTradingAccount = canMakeSignalProviderFromPrivateExternalTradingAccount
        self.canMakeProgramFromSignalProvider = canMakeProgramFromSignalProvider
        self.canMakeSignalProviderFromProgram = canMakeSignalProviderFromProgram
        self.canEditSignalProviderSettings = canEditSignalProviderSettings
        self.isEnoughMoneyToCreateProgram = isEnoughMoneyToCreateProgram
        self.canConfirm2FA = canConfirm2FA
    }

}
