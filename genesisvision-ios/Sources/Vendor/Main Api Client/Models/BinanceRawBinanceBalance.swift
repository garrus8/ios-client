//
// BinanceRawBinanceBalance.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct BinanceRawBinanceBalance: Codable {


    public var asset: String?

    public var free: Double?

    public var locked: Double?

    public var total: Double?
    public init(asset: String? = nil, free: Double? = nil, locked: Double? = nil, total: Double? = nil) { 
        self.asset = asset
        self.free = free
        self.locked = locked
        self.total = total
    }

}
