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

/** The fields of a room that a partial update changes. */
public struct UpdateRoomRequest: Sendable, Codable, Hashable {

    public static let titleRule = StringRule(minLength: 0, maxLength: 170, pattern: nil)
    public static let colorRule = StringRule(minLength: nil, maxLength: nil, pattern: "/^[0-9a-fA-F]{6}$/")
    public static let coverRule = StringRule(minLength: 0, maxLength: 50, pattern: nil)
    /** The new name of the room. It is trimmed and sanitised the way a room title is at creation, and a blank or  missing value leaves the current name alone rather than clearing it. */
    public var title: String?
    /** The new storage limit of the room, in bytes. A value of -1 leaves the room with no limit of its own, any other  negative value puts it back on the portal default, and a positive one is accepted only while the per-room  quota feature is on. */
    public var quota: Int64?
    /** Whether the room keeps a manual order of its contents. With it on every file and folder carries a position  that listings follow and that `PUT api/2.0/files/rooms/{id}/reorder` compacts; with it off the contents are  ordered by the sorting of the request. Turning it on renumbers the existing contents at once. */
    public var indexing: Bool?
    /** Whether members without editing rights are stopped from downloading and printing the contents of the room.  They can still open the documents in the editor. */
    public var denyDownload: Bool?
    /** How long files may stay in the room before they are deleted automatically. The countdown starts when the  setting is saved, and leaving the field out keeps the files forever. Sending it with the switch off stops the  automatic deletion. */
    public var lifetime: RoomDataLifetimeDto?
    /** The watermark drawn over documents opened in the room. Leaving the field out adds no watermark, and sending it  with the switch turned off removes the one the room has. */
    public var watermark: WatermarkRequestDto?
    /** The picture to use as the room logo, named by the path that `POST api/2.0/files/logos` returned for an image  uploaded beforehand, plus the crop to take from it. Leaving the field out keeps the room on its cover and  colour. */
    public var logo: LogoRequest?
    /** The labels the room is to carry from now on. The list replaces the whole tag set rather than adding to it, an  empty list clears it, and names the portal catalogue does not hold yet are added to it. */
    public var tags: [String]?
    /** The background colour the room is drawn with while it has no logo, as six hexadecimal digits with no leading  number sign. An empty value restores the default colour of the room type. */
    public var color: String?
    /** The picture drawn on the room while it has no logo, named by an identifier from  `GET api/2.0/files/rooms/covers`. Any other value is rejected, and an empty value leaves the room without a  cover. */
    public var cover: String?
    /** The model and the prompt an AI room answers with. It belongs to AI rooms only and is rejected for a room of  any other kind. */
    public var chatSettings: ChatSettings?
    /** For a form filling room, whether the data of every completed submission is also pushed to the external  database configured for the portal. It is what `POST api/2.0/files/rooms/{id}/externaldbsync` re-runs for the  forms already collected. */
    public var sendFormToExternalDB: Bool?
    /** For a form filling room, whether the collected submissions are also gathered into a spreadsheet stored next to  the completed forms. With it off the submissions are kept only as the filled documents themselves. */
    public var saveFormAsXLSX: Bool?

    public init(title: String? = nil, quota: Int64? = nil, indexing: Bool? = nil, denyDownload: Bool? = nil, lifetime: RoomDataLifetimeDto? = nil, watermark: WatermarkRequestDto? = nil, logo: LogoRequest? = nil, tags: [String]? = nil, color: String? = nil, cover: String? = nil, chatSettings: ChatSettings? = nil, sendFormToExternalDB: Bool? = nil, saveFormAsXLSX: Bool? = nil) {
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
        self.chatSettings = chatSettings
        self.sendFormToExternalDB = sendFormToExternalDB
        self.saveFormAsXLSX = saveFormAsXLSX
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
        case chatSettings
        case sendFormToExternalDB
        case saveFormAsXLSX
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
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
        try container.encodeIfPresent(chatSettings, forKey: .chatSettings)
        try container.encodeIfPresent(sendFormToExternalDB, forKey: .sendFormToExternalDB)
        try container.encodeIfPresent(saveFormAsXLSX, forKey: .saveFormAsXLSX)
    }
}

