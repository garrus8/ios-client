//
// DashboardTradingAsset.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct DashboardTradingAsset: Codable {


    public var _id: UUID?

    public var assetType: AssetType?

    public var assetTypeExt: AssetTypeExt?

    public var statistic: ProfitChart?

    public var publicInfo: DashboardTradingAssetPublicDetails?

    public var accountInfo: DashboardTradingAssetCommonDetails?

    public var credentials: DashboardTradingAssetCredentials?

    public var signalInfo: DashboardTradingAssetSignalDetails?

    public var broker: DashboardTradingAssetBrokerDetails?

    public var actions: DashboardTradingAssetActions?

    public var tags: [Tag]?
    public init(_id: UUID? = nil, assetType: AssetType? = nil, assetTypeExt: AssetTypeExt? = nil, statistic: ProfitChart? = nil, publicInfo: DashboardTradingAssetPublicDetails? = nil, accountInfo: DashboardTradingAssetCommonDetails? = nil, credentials: DashboardTradingAssetCredentials? = nil, signalInfo: DashboardTradingAssetSignalDetails? = nil, broker: DashboardTradingAssetBrokerDetails? = nil, actions: DashboardTradingAssetActions? = nil, tags: [Tag]? = nil) { 
        self._id = _id
        self.assetType = assetType
        self.assetTypeExt = assetTypeExt
        self.statistic = statistic
        self.publicInfo = publicInfo
        self.accountInfo = accountInfo
        self.credentials = credentials
        self.signalInfo = signalInfo
        self.broker = broker
        self.actions = actions
        self.tags = tags
    }
    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case assetType
        case assetTypeExt
        case statistic
        case publicInfo
        case accountInfo
        case credentials
        case signalInfo
        case broker
        case actions
        case tags
    }

}
