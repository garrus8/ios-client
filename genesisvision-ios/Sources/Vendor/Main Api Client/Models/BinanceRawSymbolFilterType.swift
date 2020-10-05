//
// BinanceRawSymbolFilterType.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

public enum BinanceRawSymbolFilterType: String, Codable {
    case unknown = "Unknown"
    case price = "Price"
    case pricePercent = "PricePercent"
    case lotSize = "LotSize"
    case marketLotSize = "MarketLotSize"
    case minNotional = "MinNotional"
    case maxNumberOrders = "MaxNumberOrders"
    case maxNumberAlgorithmicOrders = "MaxNumberAlgorithmicOrders"
    case icebergParts = "IcebergParts"
}