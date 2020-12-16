//
// BinanceRawSymbolMarketLotSizeFilter.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct BinanceRawSymbolMarketLotSizeFilter: Codable {


    public var filterType: BinanceSymbolFilterType?

    public var minQuantity: Double?

    public var maxQuantity: Double?

    public var stepSize: Double?
    public init(filterType: BinanceSymbolFilterType? = nil, minQuantity: Double? = nil, maxQuantity: Double? = nil, stepSize: Double? = nil) { 
        self.filterType = filterType
        self.minQuantity = minQuantity
        self.maxQuantity = maxQuantity
        self.stepSize = stepSize
    }

}
