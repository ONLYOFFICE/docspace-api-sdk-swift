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

/** Request to create a new AI agent room. */
public struct CreateAgentRequestDto: Sendable, Codable, Hashable {

    public static let titleRule = StringRule(minLength: 0, maxLength: 170, pattern: nil)
    public static let colorRule = StringRule(minLength: 0, maxLength: 6, pattern: nil)
    public static let coverRule = StringRule(minLength: 0, maxLength: 50, pattern: nil)
    /** The room name. */
    public var title: String?
    /** The room quota. */
    public var quota: Int64?
    /** Specifies whether to create a room with indexing. */
    public var indexing: Bool?
    /** Specifies whether to deny downloads from the room. */
    public var denyDownload: Bool?
    public var lifetime: RoomDataLifetimeDto?
    public var watermark: WatermarkRequestDto?
    public var logo: LogoRequest?
    /** The list of tags. */
    public var tags: [String]?
    /** The room color. */
    public var color: String?
    /** The room cover. */
    public var cover: String?
    /** Specifies whether the room to be created is private or not. */
    public var _private: Bool?
    /** The collection of sharing parameters. */
    public var share: [FileShareParams]?
    public var chatSettings: ChatSettings
    /** Specifies whether to attach default tools to the agent or not. */
    public var attachDefaultTools: Bool?

    public init(title: String?, quota: Int64? = nil, indexing: Bool? = nil, denyDownload: Bool? = nil, lifetime: RoomDataLifetimeDto? = nil, watermark: WatermarkRequestDto? = nil, logo: LogoRequest? = nil, tags: [String]? = nil, color: String? = nil, cover: String? = nil, _private: Bool? = nil, share: [FileShareParams]? = nil, chatSettings: ChatSettings, attachDefaultTools: Bool? = nil) {
        self.title = title
        self.quota = quota
        self.indexing = indexing
        self.denyDownload = denyDownload
        self.lifetime = lifetime
        self.watermark = watermark
        self.logo = logo
        self.tags = tags
        self.color = color
        self.cover = cover
        self._private = _private
        self.share = share
        self.chatSettings = chatSettings
        self.attachDefaultTools = attachDefaultTools
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case quota
        case indexing
        case denyDownload
        case lifetime
        case watermark
        case logo
        case tags
        case color
        case cover
        case _private = "private"
        case share
        case chatSettings
        case attachDefaultTools
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(title, forKey: .title)
        try container.encodeIfPresent(quota, forKey: .quota)
        try container.encodeIfPresent(indexing, forKey: .indexing)
        try container.encodeIfPresent(denyDownload, forKey: .denyDownload)
        try container.encodeIfPresent(lifetime, forKey: .lifetime)
        try container.encodeIfPresent(watermark, forKey: .watermark)
        try container.encodeIfPresent(logo, forKey: .logo)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(color, forKey: .color)
        try container.encodeIfPresent(cover, forKey: .cover)
        try container.encodeIfPresent(_private, forKey: ._private)
        try container.encodeIfPresent(share, forKey: .share)
        try container.encode(chatSettings, forKey: .chatSettings)
        try container.encodeIfPresent(attachDefaultTools, forKey: .attachDefaultTools)
    }
}

