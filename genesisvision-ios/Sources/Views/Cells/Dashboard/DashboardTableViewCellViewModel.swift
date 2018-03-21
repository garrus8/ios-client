//
//  DashboardTableViewCellViewModel.swift
//  genesisvision-ios
//
//  Created by George Shaginyan on 27.02.18.
//  Copyright © 2018 Genesis Vision. All rights reserved.
//

import Foundation
import Kingfisher

struct DashboardTableViewCellViewModel {
    let investmentProgram: InvestmentProgramDashboard
}

extension DashboardTableViewCellViewModel: CellViewModel {
    func setup(on cell: DashboardTableViewCell) {
        cell.chartView.isHidden = true
        cell.noDataLabel.isHidden = false
        
        cell.noDataLabel.text = "Not enough data"
        
        if let chart = investmentProgram.chart, let title = investmentProgram.title, chart.count > 0 {
            cell.chartView.isHidden = false
            cell.noDataLabel.isHidden = true
            cell.chartView.setup(dataSet: chart, name: title)
        }
        
        if let title = investmentProgram.title {
            cell.programTitleLabel.text = title
        }
        
        if let managerName = investmentProgram.manager?.username {
            cell.managerNameLabel.text = managerName
        }
        
        if let tokensCount = investmentProgram.investedTokens {
            cell.tokensCountValueLabel.text = tokensCount.toString()
            cell.investedTokens = tokensCount
        }
        
        if let endOfPeriod = investmentProgram.endOfPeriod {
            let periodLeft = getPeriodLeft(endOfPeriod: endOfPeriod)
            cell.periodLeftValueLabel.text = periodLeft.0
            cell.periodLeftTitleLabel.text = periodLeft.1.uppercased() + " LEFT"
        }
        
        if let profit = investmentProgram.profitTotal {
            cell.profitValueLabel.text = profit.toString() + "%"
            cell.profitValueLabel.textColor = profit >= 0 ? UIColor.Font.dark : UIColor.Font.red
            cell.profitTitleLabel.text = profit >= 0 ? "PROFIT" : "LOSS"
            cell.profitTitleLabel.textColor = profit >= 0 ? UIColor.Font.dark : UIColor.Font.red
        }
        
        if let investmentProgramId = investmentProgram.id?.uuidString {
            cell.investmentProgramId = investmentProgramId
        }
        
        if let level = investmentProgram.level {
            cell.programLogoImageView.levelLabel.text = level.toString()
        }
        
        cell.programLogoImageView.profilePhotoImageView.image = UIImage.placeholder
        
        if let logo = investmentProgram.logo {
            let logoURL = getFileURL(fileName: logo)
            cell.programLogoImageView.profilePhotoImageView.kf.indicatorType = .activity
            cell.programLogoImageView.profilePhotoImageView.kf.setImage(with: logoURL, placeholder: UIImage.placeholder)
        }
    }
}
