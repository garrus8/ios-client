//
// BinanceRawFuturesCancelOrder.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct BinanceRawFuturesCancelOrder: Codable {


    public var symbol: String?

    public var orderId: Int64?

    public var clientOrderId: String?

    public var price: Double?

    public var cumulativeQuantity: Double?

    public var cumulativeQuoteQuantity: Double?

    public var executedQuantity: Double?

    public var originalQuantity: Double?

    public var reduceOnly: Bool?

    public var closePosition: Bool?

    public var side: BinanceOrderSide?

    public var status: BinanceOrderStatus?

    public var stopPrice: Double?

    public var timeInForce: BinanceTimeInForce?

    public var originalType: BinanceOrderType?

    public var type: BinanceOrderType?

    public var activatePrice: Double?

    public var priceRate: Double?

    public var updateTime: Date?

    public var workingType: BinanceWorkingType?

    public var positionSide: BinancePositionSide?
    public init(symbol: String? = nil, orderId: Int64? = nil, clientOrderId: String? = nil, price: Double? = nil, cumulativeQuantity: Double? = nil, cumulativeQuoteQuantity: Double? = nil, executedQuantity: Double? = nil, originalQuantity: Double? = nil, reduceOnly: Bool? = nil, closePosition: Bool? = nil, side: BinanceOrderSide? = nil, status: BinanceOrderStatus? = nil, stopPrice: Double? = nil, timeInForce: BinanceTimeInForce? = nil, originalType: BinanceOrderType? = nil, type: BinanceOrderType? = nil, activatePrice: Double? = nil, priceRate: Double? = nil, updateTime: Date? = nil, workingType: BinanceWorkingType? = nil, positionSide: BinancePositionSide? = nil) { 
        self.symbol = symbol
        self.orderId = orderId
        self.clientOrderId = clientOrderId
        self.price = price
        self.cumulativeQuantity = cumulativeQuantity
        self.cumulativeQuoteQuantity = cumulativeQuoteQuantity
        self.executedQuantity = executedQuantity
        self.originalQuantity = originalQuantity
        self.reduceOnly = reduceOnly
        self.closePosition = closePosition
        self.side = side
        self.status = status
        self.stopPrice = stopPrice
        self.timeInForce = timeInForce
        self.originalType = originalType
        self.type = type
        self.activatePrice = activatePrice
        self.priceRate = priceRate
        self.updateTime = updateTime
        self.workingType = workingType
        self.positionSide = positionSide
    }

}
