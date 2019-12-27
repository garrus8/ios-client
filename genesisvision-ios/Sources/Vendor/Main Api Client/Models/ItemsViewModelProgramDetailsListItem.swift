//
// ItemsViewModelProgramDetailsListItem.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class ItemsViewModelProgramDetailsListItem: Codable {

    public var items: [ProgramDetailsListItem]?
    public var total: Int?


    
    public init(items: [ProgramDetailsListItem]?, total: Int?) {
        self.items = items
        self.total = total
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(items, forKey: "items")
        try container.encodeIfPresent(total, forKey: "total")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        items = try container.decodeIfPresent([ProgramDetailsListItem].self, forKey: "items")
        total = try container.decodeIfPresent(Int.self, forKey: "total")
    }
}

