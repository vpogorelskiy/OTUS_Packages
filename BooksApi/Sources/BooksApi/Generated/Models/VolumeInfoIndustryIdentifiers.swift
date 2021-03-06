//
// VolumeInfoIndustryIdentifiers.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct VolumeInfoIndustryIdentifiers: Codable, Hashable {

    public var type: String?
    public var identifier: String?

    public init(type: String? = nil, identifier: String? = nil) {
        self.type = type
        self.identifier = identifier
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case identifier
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(identifier, forKey: .identifier)
    }
}

