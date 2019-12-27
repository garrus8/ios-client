//
// FundDetailsFull.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class FundDetailsFull: Codable {

    public var id: UUID?
    public var publicInfo: AssetPublicDetails?
    public var entryFeeSelected: Double?
    public var entryFeeCurrent: Double?
    public var exitFeeSelected: Double?
    public var exitFeeCurrent: Double?
    public var assetsStructure: [FundAssetInfo]?
    public var personalDetails: PersonalFundDetails?
    public var owner: ProfilePublic?


    
    public init(id: UUID?, publicInfo: AssetPublicDetails?, entryFeeSelected: Double?, entryFeeCurrent: Double?, exitFeeSelected: Double?, exitFeeCurrent: Double?, assetsStructure: [FundAssetInfo]?, personalDetails: PersonalFundDetails?, owner: ProfilePublic?) {
        self.id = id
        self.publicInfo = publicInfo
        self.entryFeeSelected = entryFeeSelected
        self.entryFeeCurrent = entryFeeCurrent
        self.exitFeeSelected = exitFeeSelected
        self.exitFeeCurrent = exitFeeCurrent
        self.assetsStructure = assetsStructure
        self.personalDetails = personalDetails
        self.owner = owner
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(publicInfo, forKey: "publicInfo")
        try container.encodeIfPresent(entryFeeSelected, forKey: "entryFeeSelected")
        try container.encodeIfPresent(entryFeeCurrent, forKey: "entryFeeCurrent")
        try container.encodeIfPresent(exitFeeSelected, forKey: "exitFeeSelected")
        try container.encodeIfPresent(exitFeeCurrent, forKey: "exitFeeCurrent")
        try container.encodeIfPresent(assetsStructure, forKey: "assetsStructure")
        try container.encodeIfPresent(personalDetails, forKey: "personalDetails")
        try container.encodeIfPresent(owner, forKey: "owner")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        id = try container.decodeIfPresent(UUID.self, forKey: "id")
        publicInfo = try container.decodeIfPresent(AssetPublicDetails.self, forKey: "publicInfo")
        entryFeeSelected = try container.decodeIfPresent(Double.self, forKey: "entryFeeSelected")
        entryFeeCurrent = try container.decodeIfPresent(Double.self, forKey: "entryFeeCurrent")
        exitFeeSelected = try container.decodeIfPresent(Double.self, forKey: "exitFeeSelected")
        exitFeeCurrent = try container.decodeIfPresent(Double.self, forKey: "exitFeeCurrent")
        assetsStructure = try container.decodeIfPresent([FundAssetInfo].self, forKey: "assetsStructure")
        personalDetails = try container.decodeIfPresent(PersonalFundDetails.self, forKey: "personalDetails")
        owner = try container.decodeIfPresent(ProfilePublic.self, forKey: "owner")
    }
}

