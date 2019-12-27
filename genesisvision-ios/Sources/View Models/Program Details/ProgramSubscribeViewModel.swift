//
//  ProgramSubscribeViewModel.swift
//  genesisvision-ios
//
//  Created by George Shaginyan on 02.05.19.
//  Copyright © 2018 Genesis Vision. All rights reserved.
//

import Foundation

final class ProgramSubscribeViewModel {
    
    enum FollowType {
        case follow
        case edit
        case unfollow
    }
    // MARK: - Variables
    var title: String = ""
    var programId: String?
    var programCurrency: CurrencyType?
    var labelPlaceholder: String = "0"
    
    var followType: FollowType = .follow
    
    var attachToSignal: AttachToSignalProvider!
    var reasonMode: SignalDetachMode = ._none
    
    var signalSubscription: SignalSubscription?
    
    private var router: ProgramInfoRouter!
    private weak var detailProtocol: DetailProtocol?
    
    var usd: Double {
        get {
            guard let value = signalSubscription?.fixedVolume else { return 0.0 }
            return value
        }
        set {
            signalSubscription?.fixedVolume = newValue
        }
    }
    
    var volume: Double {
        get {
            guard let value = signalSubscription?.percent else { return 0.0 }
            return value
        }
        set {
            signalSubscription?.percent = newValue
        }
    }
    
    var tolerance: Double {
        get {
            guard let value = signalSubscription?.openTolerancePercent else { return 0.0 }
            return value
        }
        set {
            signalSubscription?.openTolerancePercent = newValue
        }
    }
    
    // MARK: - Init
    init(withRouter router: ProgramInfoRouter, programId: String, initialDepositCurrency: CurrencyType? = nil, initialDepositAmount: Double? = nil, signalSubscription: SignalSubscription? = nil, detailProtocol: DetailProtocol?, followType: FollowType) {
        self.router = router
        self.programId = programId
        self.detailProtocol = detailProtocol
        self.followType = followType
        
        self.signalSubscription = signalSubscription ?? SignalSubscription(subscriberInfo: nil,
                                                                           asset: nil,
                                                                           status: nil,
                                                                           subscriptionDate: nil,
                                                                           unsubscriptionDate: nil,
                                                                           hasSignalAccount: nil,
                                                                           hasActiveSubscription: nil,
                                                                           isExternal: nil,
                                                                           mode: .byBalance,
                                                                           detachMode: nil,
                                                                           percent: 10,
                                                                           openTolerancePercent: 0.5,
                                                                           fixedVolume: 100,
                                                                           fixedCurrency: .usd,
                                                                           totalProfit: nil,
                                                                           totalVolume: nil)
        //FIXME: add tradingAccountId
        self.attachToSignal = AttachToSignalProvider(tradingAccountId: nil,
                                                     mode: .byBalance,
                                                     percent: signalSubscription?.percent,
                                                     openTolerancePercent: signalSubscription?.openTolerancePercent,
                                                     fixedVolume: signalSubscription?.fixedVolume,
                                                     fixedCurrency: nil)
        
        self.reasonMode = ._none
        
        if let initialDepositCurrency = initialDepositCurrency, let currency =
            AttachToSignalProvider.FixedCurrency(rawValue: initialDepositCurrency.rawValue) {
            self.attachToSignal.fixedCurrency = currency
        }
    }
    
    // MARK: - Public methods
    func getSelectedDescription() -> String {
        switch followType {
        case .follow, .edit:
            return getSelectedTypeDescription()
        case .unfollow:
            return getSelectedReasonDescription()
        }
    }
    
    func getSelected() -> String {
        switch followType {
        case .follow, .edit:
            return getSelectedType()
        case .unfollow:
            return getSelectedReason()
        }
    }
    
    func getFixedCurrency() -> String {
        guard let fixedCurrency = signalSubscription?.fixedCurrency else { return "" }
        
        return fixedCurrency.rawValue
    }
    
    func getMode() -> SubscriptionMode {
        return signalSubscription?.mode ?? .byBalance
    }
    func changeMode(_ mode: SubscriptionMode) {
        signalSubscription?.mode = mode
    }

    func getReason() -> SignalDetachMode {
        return reasonMode
    }
    
    func changeReason(_ mode: SignalDetachMode) {
        reasonMode = mode
    }
    
    // MARK: - Private methods
    private func getSelectedType() -> String {
        guard let mode = signalSubscription?.mode else { return "" }
        
        switch mode {
        case .byBalance:
            return "By balance"
        case .percent:
            return "Percentage"
        case .fixed:
            return "Fixed"
        }
    }
    
    private func getSelectedTypeDescription() -> String {
        guard let mode = signalSubscription?.mode else { return "" }
        
        switch mode {
        case .byBalance:
            return "The volume of the opened positions is proportional to the balance of the signal provider and an investor."
        case .percent:
            return "Positions are opened according to the percentage of the volume of positions opened by the signal provider."
        case .fixed:
            return "Each new position is opened at a fixed amount."
        }
    }
    
    private func getSelectedReason() -> String {
        switch reasonMode {
        case ._none:
            return "Manual closing"
        case .closeAllImmediately:
            return "Close all immediately"
        case .providerCloseOnly:
            return "Close only"
        }
    }
    
    private func getSelectedReasonDescription() -> String {
        switch reasonMode {
        case ._none:
            return "An investor at any time can perform a manual closing of all of the open positions."
        case .closeAllImmediately:
            return "Instant closing of all open positions."
        case .providerCloseOnly:
            return "New trades do not open, open positions are closed as the manager closes them."
        }
    }

    
    // MARK: - Navigation
    func subscribe(completion: @escaping CompletionBlock) {
        attachToSignal.fixedVolume = signalSubscription?.fixedVolume
        attachToSignal.percent = signalSubscription?.percent
        attachToSignal.openTolerancePercent = signalSubscription?.openTolerancePercent

        if let fixedCurrency = signalSubscription?.fixedCurrency {
            attachToSignal.fixedCurrency = AttachToSignalProvider.FixedCurrency(rawValue: fixedCurrency.rawValue)
        }
        if let mode = signalSubscription?.mode {
            attachToSignal.mode = SubscriptionMode(rawValue: mode.rawValue)
        }
        
        guard let programId = programId else { return completion(.failure(errorType: .apiError(message: nil))) }
        SignalDataProvider.attach(on: programId, model: attachToSignal, completion: completion)
    }
    
    func update(completion: @escaping CompletionBlock) {
        attachToSignal.fixedVolume = signalSubscription?.fixedVolume
        attachToSignal.percent = signalSubscription?.percent
        attachToSignal.openTolerancePercent = signalSubscription?.openTolerancePercent

        if let fixedCurrency = signalSubscription?.fixedCurrency {
            attachToSignal.fixedCurrency = AttachToSignalProvider.FixedCurrency(rawValue: fixedCurrency.rawValue)
        }
        if let mode = signalSubscription?.mode {
            attachToSignal.mode = SubscriptionMode(rawValue: mode.rawValue)
        }
        
        guard let programId = programId else { return completion(.failure(errorType: .apiError(message: nil))) }
        
        SignalDataProvider.update(with: programId, model: attachToSignal, completion: completion)
    }
    
    func unsubscribe(completion: @escaping CompletionBlock) {
        guard let programId = programId else { return completion(.failure(errorType: .apiError(message: nil))) }
    
        //FIXME: add tradingAccountId
        let model = DetachFromSignalProvider(tradingAccountId: nil, mode: reasonMode)
        SignalDataProvider.detach(with: programId, model: model, completion: completion)
    }
    
    func goToBack() {
        detailProtocol?.didReload()

        //FIXME: fixedCurrency
        if self.attachToSignal.fixedCurrency != nil {
            router.goToSecond()
        } else {
            router.goToBack()
        }
    }
    
    func close() {
        router.closeVC()
    }
}
