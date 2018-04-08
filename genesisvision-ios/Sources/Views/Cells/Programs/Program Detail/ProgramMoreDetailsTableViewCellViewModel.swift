//
//  ProgramMoreDetailsTableViewCellViewModel.swift
//  genesisvision-ios
//
//  Created by George Shaginyan on 01.03.18.
//  Copyright © 2018 Genesis Vision. All rights reserved.
//

import Foundation

struct ProgramMoreDetailsTableViewCellViewModel {
    let investmentProgramDetails: InvestmentProgramDetails
    weak var reloadDataProtocol: ReloadDataProtocol?
}

extension ProgramMoreDetailsTableViewCellViewModel: CellViewModel {
    func setup(on cell: ProgramMoreDetailsTableViewCell) {
        if let isEnabled = self.investmentProgramDetails.isEnabled,
            isEnabled,
            let freeTokens = self.investmentProgramDetails.freeTokens,
            let total = freeTokens.total,
            let investorsTokens = freeTokens.investorsTokens,
            let requestsTokens = freeTokens.requestsTokens {
            cell.stackedProgressView.setup(totalValue: total, investedValue: investorsTokens, requestsValue: requestsTokens)
        }
        cell.programPropertiesView.setup(with: investmentProgramDetails.endOfPeriod,
                                         periodDuration: investmentProgramDetails.periodDuration,
                                         feeSuccess: investmentProgramDetails.feeSuccess,
                                         feeManagement: investmentProgramDetails.feeManagement,
                                         trades: investmentProgramDetails.tradesCount,
                                         ownBalance: investmentProgramDetails.ownBalance,
                                         balance: investmentProgramDetails.balance,
                                         isEnable: investmentProgramDetails.isEnabled ?? false,
                                         reloadDataProtocol: reloadDataProtocol)
    }
}
