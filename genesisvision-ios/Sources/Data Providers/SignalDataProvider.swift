//
//  SignalDataProvider.swift
//  genesisvision-ios
//
//  Created by George on 23/02/2019.
//  Copyright © 2019 Genesis Vision. All rights reserved.
//

import Foundation

class SignalDataProvider: DataProvider {
    static func getAccounts(completion: @escaping (_ copyTradingAccountsList: CopyTradingAccountsList?) -> Void, errorCompletion: @escaping CompletionBlock) {
        
        guard let authorization = AuthManager.authorizedToken else { return errorCompletion(.failure(errorType: .apiError(message: nil))) }
        
        SignalAPI.v10SignalAccountsGet(authorization: authorization) { (viewModel, error) in
            DataProvider().responseHandler(viewModel, error: error, successCompletion: completion, errorCompletion: errorCompletion)
        }
    }
    
    static func subscribe(with uuid: UUID, completion: @escaping CompletionBlock) {
        guard let authorization = AuthManager.authorizedToken else { return completion(.failure(errorType: .apiError(message: nil))) }
        
        InvestorAPI.v10InvestorProgramsByIdReinvestOnPost(id: uuid, authorization: authorization) { (error) in
            DataProvider().responseHandler(error, completion: completion)
        }
    }
    
    static func unsubscribe(with uuid: UUID, completion: @escaping CompletionBlock) {
        guard let authorization = AuthManager.authorizedToken else { return completion(.failure(errorType: .apiError(message: nil))) }
        
        InvestorAPI.v10InvestorProgramsByIdReinvestOffPost(id: uuid, authorization: authorization) { (error) in
            DataProvider().responseHandler(error, completion: completion)
        }
    }
    
    static func update(with uuid: UUID, completion: @escaping CompletionBlock) {
        guard let authorization = AuthManager.authorizedToken else { return completion(.failure(errorType: .apiError(message: nil))) }
        
        InvestorAPI.v10InvestorProgramsByIdReinvestOffPost(id: uuid, authorization: authorization) { (error) in
            DataProvider().responseHandler(error, completion: completion)
        }
    }
    
    static func getTradesOpen(with sorting: SignalAPI.Sorting_v10SignalTradesOpenGet?, skip: Int? = nil, take: Int? = nil, completion: @escaping (_ tradesOpenSignalSlaveViewModel: TradesOpenSignalSlaveViewModel?) -> Void, errorCompletion: @escaping CompletionBlock) {
        
        guard let authorization = AuthManager.authorizedToken else { return errorCompletion(.failure(errorType: .apiError(message: nil))) }
        
        SignalAPI.v10SignalTradesOpenGet(authorization: authorization, sorting: sorting, skip: skip, take: take) { (viewModel, error) in
            DataProvider().responseHandler(viewModel, error: error, successCompletion: completion, errorCompletion: errorCompletion)
        }
    }
    
    static func getTrades(with dateFrom: Date? = nil, dateTo: Date? = nil, symbol: String? = nil, sorting: SignalAPI.Sorting_v10SignalTradesGet? = nil, skip: Int? = nil, take: Int? = nil, completion: @escaping (_ tradesHistorySignalSlaveViewModel: TradesHistorySignalSlaveViewModel?) -> Void, errorCompletion: @escaping CompletionBlock) {
        
        guard let authorization = AuthManager.authorizedToken else { return errorCompletion(.failure(errorType: .apiError(message: nil))) }
        
        SignalAPI.v10SignalTradesGet(authorization: authorization, dateFrom: dateFrom, dateTo: dateTo, symbol: symbol, sorting: sorting, skip: skip, take: take) { (viewModel, error) in
            DataProvider().responseHandler(viewModel, error: error, successCompletion: completion, errorCompletion: errorCompletion)
        }
    }
    
    static func close(with programId: String, completion: @escaping CompletionBlock) {
        guard let authorization = AuthManager.authorizedToken,
            let uuid = UUID(uuidString: programId) else { return completion(.failure(errorType: .apiError(message: nil))) }
        
        InvestorAPI.v10InvestorProgramsByIdReinvestOffPost(id: uuid, authorization: authorization) { (error) in
            DataProvider().responseHandler(error, completion: completion)
        }
    }
}

