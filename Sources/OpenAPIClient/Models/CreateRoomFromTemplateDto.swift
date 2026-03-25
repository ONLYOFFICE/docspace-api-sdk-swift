//
//  Copyright (c) Ascensio System SIA 2026
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
import Foundation

/** The parameters for creating a room from a template. */
public struct CreateRoomFromTemplateDto: Sendable, Codable, Hashable {

    public static let colorRule = StringRule(minLength: 0, maxLength: 6, pattern: nil)
    public static let coverRule = StringRule(minLength: 0, maxLength: 50, pattern: nil)
    /** The template ID from which the room to be created. */
    public var templateId: Int
    /** The room title. */
    public var title: String?
    public var logo: LogoRequest?
    /** Specifies whether to copy a logo or not. */
    public var copyLogo: Bool?
    /** The collection of tags. */
    public var tags: [String]?
    /** The color of the room to be created. */
    public var color: String?
    /** The cover of the room to be created. */
    public var cover: String?
    /** The room quota. */
    public var quota: Int64?
    /** Specifies whether to create a room with indexing. */
    public var indexing: Bool?
    /** Specifies whether to deny downloads from the room. */
    public var denyDownload: Bool?
    public var lifetime: RoomDataLifetimeDto?
    public var watermark: WatermarkRequestDto?
    /** Specifies whether the room to be created is private or not. */
    public var _private: Bool?

    public init(templateId: Int, title: String?, logo: LogoRequest? = nil, copyLogo: Bool? = nil, tags: [String]? = nil, color: String? = nil, cover: String? = nil, quota: Int64? = nil, indexing: Bool? = nil, denyDownload: Bool? = nil, lifetime: RoomDataLifetimeDto? = nil, watermark: WatermarkRequestDto? = nil, _private: Bool? = nil) {
        self.templateId = templateId
        self.title = title
        self.logo = logo
        self.copyLogo = copyLogo
        self.tags = tags
        self.color = color
        self.cover = cover
        self.quota = quota
        self.indexing = indexing
        self.denyDownload = denyDownload
        self.lifetime = lifetime
        self.watermark = watermark
        self._private = _private
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case templateId
        case title
        case logo
        case copyLogo
        case tags
        case color
        case cover
        case quota
        case indexing
        case denyDownload
        case lifetime
        case watermark
        case _private = "private"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(templateId, forKey: .templateId)
        try container.encode(title, forKey: .title)
        try container.encodeIfPresent(logo, forKey: .logo)
        try container.encodeIfPresent(copyLogo, forKey: .copyLogo)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(color, forKey: .color)
        try container.encodeIfPresent(cover, forKey: .cover)
        try container.encodeIfPresent(quota, forKey: .quota)
        try container.encodeIfPresent(indexing, forKey: .indexing)
        try container.encodeIfPresent(denyDownload, forKey: .denyDownload)
        try container.encodeIfPresent(lifetime, forKey: .lifetime)
        try container.encodeIfPresent(watermark, forKey: .watermark)
        try container.encodeIfPresent(_private, forKey: ._private)
    }
}

