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

/** The room to be created out of a folder of a connected third-party storage account. */
public struct CreateThirdPartyRoom: Sendable, Codable, Hashable {

    /** Creates a new folder named after `title` inside the folder named in the path and turns that subfolder into the  room, leaving the named folder itself untouched. When omitted, the named folder becomes the room and keeps  everything it already holds. */
    public var createAsNewFolder: Bool?
    /** The name the room is shown under. It is stored on the connected account, so it does not have to match the name  of the folder in the storage; with `createAsNewFolder` it is also the name given to the created subfolder. */
    public var title: String?
    /** The kind of room the folder becomes, which decides the default access rules of its members and cannot be  changed afterwards. */
    public var roomType: RoomType
    /** Restricts the room to the members explicitly invited into it. The flag is kept on the connected storage  account rather than on the folder, so every folder read through that account reports the same value. */
    public var _private: Bool?
    /** Keeps the contents of the room in an explicit numbered order, the one reported as `order` on every entry,  instead of leaving the order to the reader. */
    public var indexing: Bool?
    /** Forbids downloading and printing the contents of the room, which leaves the members with viewing and editing  in the editor only. */
    public var denyDownload: Bool?
    /** The background colour drawn behind the cover of the room, as six hexadecimal digits without a leading number  sign. An empty value restores the colour the portal picks by default. */
    public var color: String?
    /** The drawing shown on the room tile, named by one of the built-in cover identifiers returned by  `GET api/2.0/files/rooms/covers`. An empty value leaves the room without a cover, and any other unknown value  is rejected as an invalid request. */
    public var cover: String?
    /** The tags to attach to the room, named by their text. A name that is not in the portal tag catalogue yet is  added to it, and `GET api/2.0/files/tags` lists the names already there. */
    public var tags: [String]?
    /** The picture to use as the room logo, which has to be uploaded with `POST api/2.0/files/logos` first; leaving  it out keeps the room on its cover and colour. */
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

