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

/** The parameters for creating a third-party room. */
public struct CreateThirdPartyRoom: Sendable, Codable, Hashable {

    /** Specifies whether to create a third-party room as a new folder or not. */
    public var createAsNewFolder: Bool?
    /** The third-party room name to be created. */
    public var title: String?
    public var roomType: RoomType
    /** Specifies whether to create the private third-party room or not. */
    public var _private: Bool?
    /** Specifies whether to create the third-party room with indexing. */
    public var indexing: Bool?
    /** Specifies whether to deny downloads from the third-party room. */
    public var denyDownload: Bool?
    /** The color of the third-party room. */
    public var color: String?
    /** The cover of the third-party room. */
    public var cover: String?
    /** The list of tags of the third-party room. */
    public var tags: [String]?
    public var logo: LogoRequest?

    public init(createAsNewFolder: Bool? = nil, title: String?, roomType: RoomType, _private: Bool? = nil, indexing: Bool? = nil, denyDownload: Bool? = nil, color: String? = nil, cover: String? = nil, tags: [String]? = nil, logo: LogoRequest? = nil) {
        self.createAsNewFolder = createAsNewFolder
        self.title = title
        self.roomType = roomType
        self._private = _private
        self.indexing = indexing
        self.denyDownload = denyDownload
        self.color = color
        self.cover = cover
        self.tags = tags
        self.logo = logo
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createAsNewFolder
        case title
        case roomType
        case _private = "private"
        case indexing
        case denyDownload
        case color
        case cover
        case tags
        case logo
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(createAsNewFolder, forKey: .createAsNewFolder)
        try container.encode(title, forKey: .title)
        try container.encode(roomType, forKey: .roomType)
        try container.encodeIfPresent(_private, forKey: ._private)
        try container.encodeIfPresent(indexing, forKey: .indexing)
        try container.encodeIfPresent(denyDownload, forKey: .denyDownload)
        try container.encodeIfPresent(color, forKey: .color)
        try container.encodeIfPresent(cover, forKey: .cover)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(logo, forKey: .logo)
    }
}

