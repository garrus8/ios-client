//
// DashboardTradingAsset.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class DashboardTradingAsset: Codable {

    public var id: UUID?
    public var assetType: AssetType?
    public var assetTypeExt: AssetTypeExt?
    public var statistic: ProfitChart?
    public var publicInfo: DashboardTradingAssetPublicDetails?
    public var accountInfo: DashboardTradingAssetCommonDetails?
    public var signalInfo: DashboardTradingAssetSignalDetails?
    public var broker: DashboardTradingAssetBrokerDetails?
    public var actions: DashboardTradingAssetActions?


    
    public init(id: UUID?, assetType: AssetType?, assetTypeExt: AssetTypeExt?, statistic: ProfitChart?, publicInfo: DashboardTradingAssetPublicDetails?, accountInfo: DashboardTradingAssetCommonDetails?, signalInfo: DashboardTradingAssetSignalDetails?, broker: DashboardTradingAssetBrokerDetails?, actions: DashboardTradingAssetActions?) {
        self.id = id
        self.assetType = assetType
        self.assetTypeExt = assetTypeExt
        self.statistic = statistic
        self.publicInfo = publicInfo
        self.accountInfo = accountInfo
        self.signalInfo = signalInfo
        self.broker = broker
        self.actions = actions
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(assetType, forKey: "assetType")
        try container.encodeIfPresent(assetTypeExt, forKey: "assetTypeExt")
        try container.encodeIfPresent(statistic, forKey: "statistic")
        try container.encodeIfPresent(publicInfo, forKey: "publicInfo")
        try container.encodeIfPresent(accountInfo, forKey: "accountInfo")
        try container.encodeIfPresent(signalInfo, forKey: "signalInfo")
        try container.encodeIfPresent(broker, forKey: "broker")
        try container.encodeIfPresent(actions, forKey: "actions")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        id = try container.decodeIfPresent(UUID.self, forKey: "id")
        assetType = try container.decodeIfPresent(AssetType.self, forKey: "assetType")
        assetTypeExt = try container.decodeIfPresent(AssetTypeExt.self, forKey: "assetTypeExt")
        statistic = try container.decodeIfPresent(ProfitChart.self, forKey: "statistic")
        publicInfo = try container.decodeIfPresent(DashboardTradingAssetPublicDetails.self, forKey: "publicInfo")
        accountInfo = try container.decodeIfPresent(DashboardTradingAssetCommonDetails.self, forKey: "accountInfo")
        signalInfo = try container.decodeIfPresent(DashboardTradingAssetSignalDetails.self, forKey: "signalInfo")
        broker = try container.decodeIfPresent(DashboardTradingAssetBrokerDetails.self, forKey: "broker")
        actions = try container.decodeIfPresent(DashboardTradingAssetActions.self, forKey: "actions")
    }
}

