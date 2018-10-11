//
//  ProgramInvestViewModel.swift
//  genesisvision-ios
//
//  Created by George Shaginyan on 21.02.18.
//  Copyright © 2018 Genesis Vision. All rights reserved.
//

import Foundation

final class ProgramInvestViewModel {
    // MARK: - Variables
    var title: String = "Investment"
    var programId: String?
    var labelPlaceholder: String = "0"
    
    private var rate: Double = 0.0
    private var availableToInvest: Double = 0.0
    
    private var minAvailableToInvest: Double = 0.0 {
        didSet {
            self.exchangedMinAvailableToInvest = minAvailableToInvest * self.rate
        }
    }
    private var exchangedMinAvailableToInvest: Double = 0.0
    
    var currency: String = "GVT"
    
    private weak var programDetailProtocol: ProgramDetailProtocol?
    
    private var router: ProgramInvestRouter!
    
    // MARK: - Init
    init(withRouter router: ProgramInvestRouter, programId: String, currency: String, availableToInvest: Double, programDetailProtocol: ProgramDetailProtocol?) {
        self.router = router
        self.programId = programId
        self.currency = currency
        self.programDetailProtocol = programDetailProtocol
        self.availableToInvest = availableToInvest
    }
    
    // MARK: - Public methods
    func getAvailableToInvest(completion: @escaping (_ availableToInvest: Double, _ exchangedAvailableToInvest: Double) -> Void, completionError: @escaping CompletionBlock) {
        
        RateDataProvider.getRate(from: "GVT", to: self.currency, completion: { (rate) in
            guard let rate = rate else {
                return completionError(.failure(errorType: .apiError(message: nil)))
            }
            
            self.rate = rate
            
            AuthManager.getBalance(completion: { [weak self] (balance) in
                guard let availableToInvest = self?.availableToInvest  else {
                    let exchangedMinAvailableToInvest = balance * rate
                    return completion(balance, exchangedMinAvailableToInvest)
                }
                
                let minAvailableToInvest = min(balance, availableToInvest)
                let exchangedMinAvailableToInvest = minAvailableToInvest * rate
                
                completion(minAvailableToInvest, exchangedMinAvailableToInvest)
                }, completionError: completionError)
        }, errorCompletion: completionError)
    }
    
    func getExchangedAmount(amount: Double, completion: @escaping (_ exchangedAmount: Double) -> Void, completionError: @escaping CompletionBlock) {
        guard amount > 0 else {
            return completion(0.0)
        }
        guard self.rate > 0 else {
            RateDataProvider.getRate(from: "GVT", to: self.currency, completion: { (rate) in
                if let rate = rate {
                    self.rate = rate
                }
                
                let exchangedBalance = amount * self.rate
                
                completion(exchangedBalance)
            }, errorCompletion: completionError)
            
            return
        }
        
        let exchangedBalance = amount * self.rate
        completion(exchangedBalance)
    }
    
    // MARK: - Navigation
    func invest(with value: Double, completion: @escaping CompletionBlock) {
        apiInvest(with: value, completion: completion)
    }
    
    func showInvestmentRequestedVC(investedAmount: Double) {
        programDetailProtocol?.didInvested()
        router.show(routeType: .investmentRequested(investedAmount: investedAmount))
    }
    
    func goToBack() {
        programDetailProtocol?.didInvested()
        router.goToBack()
    }
    
    func close() {
        router.closeVC()
    }
    
    // MARK: - Private methods
    // MARK: - API
    private func apiInvest(with value: Double, completion: @escaping CompletionBlock) {
        ProgramDataProvider.investProgram(withAmount: value, programId: programId, errorCompletion: { (result) in
            completion(result)
        })
    }
}
