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
    
    var programInvestInfo: ProgramInvestInfo?

    private weak var programDetailProtocol: ProgramDetailProtocol?
    
    private var router: ProgramInvestRouter!
    
    // MARK: - Init
    init(withRouter router: ProgramInvestRouter, programId: String, programDetailProtocol: ProgramDetailProtocol?) {
        self.router = router
        self.programId = programId
        self.programDetailProtocol = programDetailProtocol
    }
    
    // MARK: - Public methods
    func getInfo(completion: @escaping CompletionBlock, completionError: @escaping CompletionBlock) {
        guard let currency = InvestorAPI.Currency_v10InvestorProgramsByIdInvestInfoByCurrencyGet(rawValue: getSelectedCurrency()), let programId = programId else { return completionError(.failure(errorType: .apiError(message: nil))) }
        
        ProgramDataProvider.getProgramInvestInfo(programId: programId, currencySecondary: currency, completion: { [weak self] (programInvestInfo) in
            guard let programInvestInfo = programInvestInfo else {
                return completionError(.failure(errorType: .apiError(message: nil)))
            }
            
            self?.programInvestInfo = programInvestInfo
            completion(.success)
        }, errorCompletion: completionError)
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
