//
// SocialLinkViewModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class SocialLinkViewModel: Codable {

    public var id: UUID?
    public var url: String?
    public var logo: String?
    public var name: String?
    public var value: String?


    
    public init(id: UUID?, url: String?, logo: String?, name: String?, value: String?) {
        self.id = id
        self.url = url
        self.logo = logo
        self.name = name
        self.value = value
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(url, forKey: "url")
        try container.encodeIfPresent(logo, forKey: "logo")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(value, forKey: "value")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        id = try container.decodeIfPresent(UUID.self, forKey: "id")
        url = try container.decodeIfPresent(String.self, forKey: "url")
        logo = try container.decodeIfPresent(String.self, forKey: "logo")
        name = try container.decodeIfPresent(String.self, forKey: "name")
        value = try container.decodeIfPresent(String.self, forKey: "value")
    }
}

