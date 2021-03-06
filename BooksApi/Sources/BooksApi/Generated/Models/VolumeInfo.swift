//
// VolumeInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct VolumeInfo: Codable, Hashable {

    public var title: String
    public var authors: [String]?
    public var publisher: String?
    public var publishedDate: String?
    public var description: String?
    public var industryIdentifiers: [VolumeInfoIndustryIdentifiers]?
    public var readingModes: VolumeInfoReadingModes?
    public var printType: String?
    public var categories: [String]?
    public var maturityRating: String?
    public var allowAnonLogging: Bool?
    public var contentVersion: String?
    public var panelizationSummary: VolumeInfoPanelizationSummary?
    public var imageLinks: VolumeInfoImageLinks?
    public var language: String?
    public var previewLink: String?
    public var infoLink: String?
    public var canonicalVolumeLink: String?

    public init(title: String, authors: [String]? = nil, publisher: String? = nil, publishedDate: String? = nil, description: String?, industryIdentifiers: [VolumeInfoIndustryIdentifiers]? = nil, readingModes: VolumeInfoReadingModes? = nil, printType: String? = nil, categories: [String]? = nil, maturityRating: String? = nil, allowAnonLogging: Bool? = nil, contentVersion: String? = nil, panelizationSummary: VolumeInfoPanelizationSummary? = nil, imageLinks: VolumeInfoImageLinks? = nil, language: String? = nil, previewLink: String? = nil, infoLink: String? = nil, canonicalVolumeLink: String? = nil) {
        self.title = title
        self.authors = authors
        self.publisher = publisher
        self.publishedDate = publishedDate
        self.description = description
        self.industryIdentifiers = industryIdentifiers
        self.readingModes = readingModes
        self.printType = printType
        self.categories = categories
        self.maturityRating = maturityRating
        self.allowAnonLogging = allowAnonLogging
        self.contentVersion = contentVersion
        self.panelizationSummary = panelizationSummary
        self.imageLinks = imageLinks
        self.language = language
        self.previewLink = previewLink
        self.infoLink = infoLink
        self.canonicalVolumeLink = canonicalVolumeLink
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case authors
        case publisher
        case publishedDate
        case description
        case industryIdentifiers
        case readingModes
        case printType
        case categories
        case maturityRating
        case allowAnonLogging
        case contentVersion
        case panelizationSummary
        case imageLinks
        case language
        case previewLink
        case infoLink
        case canonicalVolumeLink
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(title, forKey: .title)
        try container.encodeIfPresent(authors, forKey: .authors)
        try container.encodeIfPresent(publisher, forKey: .publisher)
        try container.encodeIfPresent(publishedDate, forKey: .publishedDate)
        try container.encode(description, forKey: .description)
        try container.encodeIfPresent(industryIdentifiers, forKey: .industryIdentifiers)
        try container.encodeIfPresent(readingModes, forKey: .readingModes)
        try container.encodeIfPresent(printType, forKey: .printType)
        try container.encodeIfPresent(categories, forKey: .categories)
        try container.encodeIfPresent(maturityRating, forKey: .maturityRating)
        try container.encodeIfPresent(allowAnonLogging, forKey: .allowAnonLogging)
        try container.encodeIfPresent(contentVersion, forKey: .contentVersion)
        try container.encodeIfPresent(panelizationSummary, forKey: .panelizationSummary)
        try container.encode(imageLinks, forKey: .imageLinks)
        try container.encodeIfPresent(language, forKey: .language)
        try container.encodeIfPresent(previewLink, forKey: .previewLink)
        try container.encodeIfPresent(infoLink, forKey: .infoLink)
        try container.encodeIfPresent(canonicalVolumeLink, forKey: .canonicalVolumeLink)
    }
}

