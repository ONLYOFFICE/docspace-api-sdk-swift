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

public struct AiAgentsUpdateRequest: Sendable, Codable, Hashable {

    /** Profile id to rebind (optional). */
    public var profileId: String?
    /** Chat settings (`ChatSettings`); requires a valid provider/model. */
    public var chatSettings: JSONValue?
    /** Whether form results are sent to an external DB. */
    public var sendFormToExternalDB: Bool?
    /** Whether forms are saved as XLSX. */
    public var saveFormAsXLSX: Bool?
    /** Agent (room) title. */
    public var title: String?
    /** Room quota in bytes. */
    public var quota: Double?
    /** Whether room content is indexed for search. */
    public var indexing: Bool?
    /** Whether downloading room content is denied. */
    public var denyDownload: Bool?
    /** Room data lifetime policy (`RoomDataLifetimeDto`). */
    public var lifetime: JSONValue?
    /** Watermark settings (`WatermarkRequestDto`). */
    public var watermark: JSONValue?
    /** Room logo (`LogoRequest`). */
    public var logo: JSONValue?
    /** Room tags. */
    public var tags: [String]?
    /** Room accent color. */
    public var color: String?
    /** Room cover image id. */
    public var cover: String?

    public init(profileId: String? = nil, chatSettings: JSONValue? = nil, sendFormToExternalDB: Bool? = nil, saveFormAsXLSX: Bool? = nil, title: String? = nil, quota: Double? = nil, indexing: Bool? = nil, denyDownload: Bool? = nil, lifetime: JSONValue? = nil, watermark: JSONValue? = nil, logo: JSONValue? = nil, tags: [String]? = nil, color: String? = nil, cover: String? = nil) {
        self.profileId = profileId
        self.chatSettings = chatSettings
        self.sendFormToExternalDB = sendFormToExternalDB
        self.saveFormAsXLSX = saveFormAsXLSX
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
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case profileId
        case chatSettings
        case sendFormToExternalDB
        case saveFormAsXLSX
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
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(profileId, forKey: .profileId)
        try container.encodeIfPresent(chatSettings, forKey: .chatSettings)
        try container.encodeIfPresent(sendFormToExternalDB, forKey: .sendFormToExternalDB)
        try container.encodeIfPresent(saveFormAsXLSX, forKey: .saveFormAsXLSX)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(quota, forKey: .quota)
        try container.encodeIfPresent(indexing, forKey: .indexing)
        try container.encodeIfPresent(denyDownload, forKey: .denyDownload)
        try container.encodeIfPresent(lifetime, forKey: .lifetime)
        try container.encodeIfPresent(watermark, forKey: .watermark)
        try container.encodeIfPresent(logo, forKey: .logo)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(color, forKey: .color)
        try container.encodeIfPresent(cover, forKey: .cover)
    }
}

