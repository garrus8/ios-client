//
//  InfoSignalsTableViewCellViewModel.swift
//  genesisvision-ios
//
//  Created by George on 20/02/2018.
//  Copyright © 2018 Genesis Vision. All rights reserved.
//

import Foundation

struct InfoSignalsTableViewCellViewModel {
    let programDetailsFull: ProgramDetailsFull?
    weak var infoSignalsProtocol: InfoSignalsProtocol?
}

extension InfoSignalsTableViewCellViewModel: CellViewModel {
    func setup(on cell: InfoSignalsTableViewCell) {
        cell.followButton.setEnabled(false)
        
        cell.titleLabel.text = "Signals"
        
        if let personalProgramDetails = programDetailsFull?.personalProgramDetails, let isFollowSignals = personalProgramDetails.isFollowSignals {
            cell.editButton.isHidden = !isFollowSignals
            cell.followButton.setTitle(isFollowSignals ? "Unfollow trades" : "Follow trades", for: .normal)
        }
        
        if let signalSuccessFee = programDetailsFull?.signalSuccessFee {
            cell.successFeeTitleLabel.text = "success fee"
            cell.successFeeValueLabel.text = signalSuccessFee.rounded(withType: .undefined).toString() + "%"
        }

        if let signalSubscriptionFee = programDetailsFull?.signalSubscriptionFee {
            cell.subscriptionFeeTitleLabel.text = "subscription fee"
            cell.subscriptionFeeValueLabel.text = signalSubscriptionFee.rounded(withType: .undefined).toString() + "%"
        }
        
    }
}
