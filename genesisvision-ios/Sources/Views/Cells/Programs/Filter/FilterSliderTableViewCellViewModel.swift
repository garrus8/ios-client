//
//  FilterAmountTableViewCellViewModel.swift
//  genesisvision-ios
//
//  Created by George Shaginyan on 31.01.18.
//  Copyright © 2018 Genesis Vision. All rights reserved.
//

import UIKit
import TTRangeSlider

struct FilterTitles {
    var title: String
    var subtitle: String
}

struct FilterSliderTableViewCellViewModel {
    var minValue: Int?
    var maxValue: Int?
    
    var filterTitles: FilterTitles
    var amountType: SliderType
    
    var selectedMinValue: Int?
    var selectedMaxValue: Int?
    var sliderViewTag: Int
    
    weak var delegate: TTRangeSliderDelegate?
}

extension FilterSliderTableViewCellViewModel: CellViewModel {
    func setup(on cell: FilterAmountTableViewCell) {
        cell.titleLabel.text = filterTitles.title
        cell.subtitleLabel.text = filterTitles.subtitle
        
        let min = minValue ?? 0
        let max = maxValue ?? 100
        cell.sliderView.minValue = Float(min)
        cell.sliderView.maxValue = Float(max)
        cell.sliderView.enableStep = sliderViewTag == 0
        cell.sliderView.step = 1
        cell.sliderView.selectedMinimum = Float(selectedMinValue ?? min)
        cell.sliderView.selectedMaximum = Float(selectedMaxValue ?? max)
        cell.sliderView.tag = sliderViewTag
        
        cell.sliderView.delegate = delegate
    }
}
