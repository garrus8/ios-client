//
// WalletTransaction.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class WalletTransaction: Codable {

    public enum SourceType: String, Codable { 
        case wallet = "Wallet"
        case program = "Program"
        case fund = "Fund"
        case programRequest = "ProgramRequest"
        case fundRequest = "FundRequest"
        case withdrawalRequest = "WithdrawalRequest"
        case paymentTransaction = "PaymentTransaction"
        case blockchain = "Blockchain"
        case genesisVisionPlatform = "GenesisVisionPlatform"
        case signalMasterSetting = "SignalMasterSetting"
        case signalTradingAccount = "SignalTradingAccount"
    }
    public enum SourceCurrency: String, Codable { 
        case btc = "BTC"
        case eth = "ETH"
        case usdt = "USDT"
        case gvt = "GVT"
        case undefined = "Undefined"
        case ada = "ADA"
        case xrp = "XRP"
        case bch = "BCH"
        case ltc = "LTC"
        case doge = "DOGE"
        case bnb = "BNB"
        case usd = "USD"
        case eur = "EUR"
    }
    public enum Action: String, Codable { 
        case transfer = "Transfer"
        case programOpen = "ProgramOpen"
        case programProfit = "ProgramProfit"
        case programInvest = "ProgramInvest"
        case programWithdrawal = "ProgramWithdrawal"
        case programRefundPartialExecution = "ProgramRefundPartialExecution"
        case programRefundClose = "ProgramRefundClose"
        case programRefundStopOut = "ProgramRefundStopOut"
        case programRequestInvest = "ProgramRequestInvest"
        case programRequestWithdrawal = "ProgramRequestWithdrawal"
        case programRequestCancel = "ProgramRequestCancel"
        case payingFee = "PayingFee"
        case signalSlaveSubscribe = "SignalSlaveSubscribe"
        case signalMasterReceiveSubscription = "SignalMasterReceiveSubscription"
    }
    public enum DestinationType: String, Codable { 
        case wallet = "Wallet"
        case program = "Program"
        case fund = "Fund"
        case programRequest = "ProgramRequest"
        case fundRequest = "FundRequest"
        case withdrawalRequest = "WithdrawalRequest"
        case paymentTransaction = "PaymentTransaction"
        case blockchain = "Blockchain"
        case genesisVisionPlatform = "GenesisVisionPlatform"
        case signalMasterSetting = "SignalMasterSetting"
        case signalTradingAccount = "SignalTradingAccount"
    }
    public enum DestinationCurrency: String, Codable { 
        case btc = "BTC"
        case eth = "ETH"
        case usdt = "USDT"
        case gvt = "GVT"
        case undefined = "Undefined"
        case ada = "ADA"
        case xrp = "XRP"
        case bch = "BCH"
        case ltc = "LTC"
        case doge = "DOGE"
        case bnb = "BNB"
        case usd = "USD"
        case eur = "EUR"
    }
    public var id: UUID?
    public var amount: Double?
    public var amountConverted: Double?
    public var date: Date?
    public var number: Int64?
    public var sourceId: UUID?
    public var sourceType: SourceType?
    public var sourceCurrency: SourceCurrency?
    public var sourceProgramInfo: ProgramInfo?
    public var sourceBlockchainInfo: BlockchainInfo?
    public var sourceWithdrawalInfo: WithdrawalInfo?
    public var action: Action?
    public var information: String?
    public var destinationId: UUID?
    public var destinationType: DestinationType?
    public var destinationCurrency: DestinationCurrency?
    public var destinationProgramInfo: ProgramInfo?
    public var destinationBlockchainInfo: BlockchainInfo?
    public var destinationWithdrawalInfo: WithdrawalInfo?


    
    public init(id: UUID?, amount: Double?, amountConverted: Double?, date: Date?, number: Int64?, sourceId: UUID?, sourceType: SourceType?, sourceCurrency: SourceCurrency?, sourceProgramInfo: ProgramInfo?, sourceBlockchainInfo: BlockchainInfo?, sourceWithdrawalInfo: WithdrawalInfo?, action: Action?, information: String?, destinationId: UUID?, destinationType: DestinationType?, destinationCurrency: DestinationCurrency?, destinationProgramInfo: ProgramInfo?, destinationBlockchainInfo: BlockchainInfo?, destinationWithdrawalInfo: WithdrawalInfo?) {
        self.id = id
        self.amount = amount
        self.amountConverted = amountConverted
        self.date = date
        self.number = number
        self.sourceId = sourceId
        self.sourceType = sourceType
        self.sourceCurrency = sourceCurrency
        self.sourceProgramInfo = sourceProgramInfo
        self.sourceBlockchainInfo = sourceBlockchainInfo
        self.sourceWithdrawalInfo = sourceWithdrawalInfo
        self.action = action
        self.information = information
        self.destinationId = destinationId
        self.destinationType = destinationType
        self.destinationCurrency = destinationCurrency
        self.destinationProgramInfo = destinationProgramInfo
        self.destinationBlockchainInfo = destinationBlockchainInfo
        self.destinationWithdrawalInfo = destinationWithdrawalInfo
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(amount, forKey: "amount")
        try container.encodeIfPresent(amountConverted, forKey: "amountConverted")
        try container.encodeIfPresent(date, forKey: "date")
        try container.encodeIfPresent(number, forKey: "number")
        try container.encodeIfPresent(sourceId, forKey: "sourceId")
        try container.encodeIfPresent(sourceType, forKey: "sourceType")
        try container.encodeIfPresent(sourceCurrency, forKey: "sourceCurrency")
        try container.encodeIfPresent(sourceProgramInfo, forKey: "sourceProgramInfo")
        try container.encodeIfPresent(sourceBlockchainInfo, forKey: "sourceBlockchainInfo")
        try container.encodeIfPresent(sourceWithdrawalInfo, forKey: "sourceWithdrawalInfo")
        try container.encodeIfPresent(action, forKey: "action")
        try container.encodeIfPresent(information, forKey: "information")
        try container.encodeIfPresent(destinationId, forKey: "destinationId")
        try container.encodeIfPresent(destinationType, forKey: "destinationType")
        try container.encodeIfPresent(destinationCurrency, forKey: "destinationCurrency")
        try container.encodeIfPresent(destinationProgramInfo, forKey: "destinationProgramInfo")
        try container.encodeIfPresent(destinationBlockchainInfo, forKey: "destinationBlockchainInfo")
        try container.encodeIfPresent(destinationWithdrawalInfo, forKey: "destinationWithdrawalInfo")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        id = try container.decodeIfPresent(UUID.self, forKey: "id")
        amount = try container.decodeIfPresent(Double.self, forKey: "amount")
        amountConverted = try container.decodeIfPresent(Double.self, forKey: "amountConverted")
        date = try container.decodeIfPresent(Date.self, forKey: "date")
        number = try container.decodeIfPresent(Int64.self, forKey: "number")
        sourceId = try container.decodeIfPresent(UUID.self, forKey: "sourceId")
        sourceType = try container.decodeIfPresent(SourceType.self, forKey: "sourceType")
        sourceCurrency = try container.decodeIfPresent(SourceCurrency.self, forKey: "sourceCurrency")
        sourceProgramInfo = try container.decodeIfPresent(ProgramInfo.self, forKey: "sourceProgramInfo")
        sourceBlockchainInfo = try container.decodeIfPresent(BlockchainInfo.self, forKey: "sourceBlockchainInfo")
        sourceWithdrawalInfo = try container.decodeIfPresent(WithdrawalInfo.self, forKey: "sourceWithdrawalInfo")
        action = try container.decodeIfPresent(Action.self, forKey: "action")
        information = try container.decodeIfPresent(String.self, forKey: "information")
        destinationId = try container.decodeIfPresent(UUID.self, forKey: "destinationId")
        destinationType = try container.decodeIfPresent(DestinationType.self, forKey: "destinationType")
        destinationCurrency = try container.decodeIfPresent(DestinationCurrency.self, forKey: "destinationCurrency")
        destinationProgramInfo = try container.decodeIfPresent(ProgramInfo.self, forKey: "destinationProgramInfo")
        destinationBlockchainInfo = try container.decodeIfPresent(BlockchainInfo.self, forKey: "destinationBlockchainInfo")
        destinationWithdrawalInfo = try container.decodeIfPresent(WithdrawalInfo.self, forKey: "destinationWithdrawalInfo")
    }
}

