//
// InvestmentEventType.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public enum InvestmentEventType: String, Codable {
    case all = "All"
    case assetFinished = "AssetFinished"
    case assetPeriodStarted = "AssetPeriodStarted"
    case assetPeriodEnded = "AssetPeriodEnded"
    case assetPeriodEndedDueToStopOut = "AssetPeriodEndedDueToStopOut"
    case assetBrokerChanged = "AssetBrokerChanged"
    case assetEnterInvestment = "AssetEnterInvestment"
    case assetSubscriptionEdit = "AssetSubscriptionEdit"
    case assetInvestByInvestor = "AssetInvestByInvestor"
    case assetWithdrawalByInvestor = "AssetWithdrawalByInvestor"
    case assetReallocation = "AssetReallocation"
    case assetStarted = "AssetStarted"
    case assetPeriodProcessed = "AssetPeriodProcessed"
    case assetInvestByManager = "AssetInvestByManager"
    case assetWithdrawalByManager = "AssetWithdrawalByManager"
    case assetSubscribeByInvestor = "AssetSubscribeByInvestor"
    case assetUnsubscribeByInvestor = "AssetUnsubscribeByInvestor"
    case assetTradeOpen = "AssetTradeOpen"
    case assetTradeClosed = "AssetTradeClosed"

}
