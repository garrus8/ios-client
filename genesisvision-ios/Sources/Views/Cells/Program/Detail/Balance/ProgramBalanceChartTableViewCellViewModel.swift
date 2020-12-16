//
//  ProgramBalanceChartTableViewCellViewModel.swift
//  genesisvision-ios
//
//  Created by George on 01/10/2018.
//  Copyright © 2018 Genesis Vision. All rights reserved.
//

import Foundation

struct ProgramBalanceChartTableViewCellViewModel {
    let programBalanceChart: ProgramBalanceChart
    weak var chartViewProtocol: ChartViewProtocol?
}

extension ProgramBalanceChartTableViewCellViewModel: CellViewModel {
    func setup(on cell: DetailBalanceChartTableViewCell) {
        cell.amountTitleLabel.text = "Amount"
        
        cell.chartViewProtocol = chartViewProtocol
        
        if let amountValue = programBalanceChart.balance {
            cell.amountValueLabel.text = amountValue.rounded(with: getPlatformCurrencyType()).toString() + " \(getPlatformCurrencyType().rawValue)"
        } else {
            cell.amountValueLabel.isHidden = true
        }
        
        if let amountCurrency = programBalanceChart.balance {
            cell.amountCurrencyLabel.text = amountCurrency.rounded(with: getPlatformCurrencyType()).toString() + " " + getPlatformCurrencyType().rawValue
        } else {
            cell.amountCurrencyLabel.isHidden = true
        }
        
        if let balanceChartData = programBalanceChart.chart, balanceChartData.count > 0 {
            cell.chartViewHeightConstraint.constant = 200.0
            let chart = balanceChartData.map { (point) -> BalanceChartPoint? in
                guard point.date != nil else { return nil }
                return BalanceChartPoint(date: Int64(Double(point.date!)*0.001), managerFunds: point.managerFunds, investorsFunds: point.investorsFunds)
            }.compactMap{ $0 }
            cell.chartView.setup(programBalanceChartData: chart, dateRangeModel: chartViewProtocol?.filterDateRangeModel)
            cell.chartView.isHidden = false
        } else {
            cell.chartViewHeightConstraint.constant = 0.0
            cell.chartView.isHidden = true
        }
        
        cell.managersFundsTitleLabel.text = "Manager funds"
        cell.investorsFundsTitleLabel.text = "Investors funds"
        cell.profitTitleLabel.text = "Profit"
        
        cell.chartModel = programBalanceChart
    }
}
