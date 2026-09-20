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

/** The parameters of a room template built from an existing room. */
public struct RoomTemplateDto: Sendable, Codable, Hashable {

    public static let titleRule = StringRule(minLength: 0, maxLength: 400, pattern: nil)
    public static let colorRule = StringRule(minLength: 0, maxLength: 6, pattern: nil)
    public static let coverRule = StringRule(minLength: 0, maxLength: 50, pattern: nil)
    /** The identifier of the room the template is built from. Take it from the room listing of  `GET api/2.0/files/rooms`; a folder identifier is not accepted. */
    public var roomId: Int
    /** The title the template is saved under in the Templates section. Characters that a folder name cannot contain  are replaced with an underscore on save, and two templates may share a title. */
    public var title: String
    /** A picture of the caller's own for the template, cropped out of an image already placed in the temporary  storage. */
    public var logo: LogoRequest?
    /** Whether the template takes over the picture already set on the source room. When false the template gets no  picture from that room. */
    public var copyLogo: Bool?
    /** The email addresses of the portal members who are granted read access to the finished template. */
    public var share: [String]?
    /** The identifiers of the portal groups whose members are granted read access to the finished template. */
    public var groups: [UUID]?
    /** Whether the finished template is shared with everyone allowed to create rooms. When false it stays reachable  only for the recipients named for it. */
    public var _public: Bool?
    /** The labels attached to the template and shown next to it in listings. */
    public var tags: [String]?
    /** The accent colour of the generated cover, written as six hexadecimal digits with no leading hash sign. When it  is left empty a colour is picked at random. */
    public var color: String?
    /** The identifier of a built-in cover picture, as listed by `GET api/2.0/files/rooms/covers`. When it is left  empty the template gets no cover. */
    public var cover: String?
    /** The storage limit assigned to the template, in bytes. When it is not set the template keeps the limit of the  source room. */
    public var quota: Int64?

    public init(roomId: Int, title: String, logo: LogoRequest? = nil, copyLogo: Bool? = nil, share: [String]? = nil, groups: [UUID]? = nil, _public: Bool? = nil, tags: [String]? = nil, color: String? = nil, cover: String? = nil, quota: Int64? = nil) {
        self.roomId = roomId
        self.title = title
        self.logo = logo
        self.copyLogo = copyLogo
        self.share = share
        self.groups = groups
        self._public = _public
        self.tags = tags
        self.color = color
        self.cover = cover
        self.quota = quota
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case roomId
        case title
        case logo
        case copyLogo
        case share
        case groups
        case _public = "public"
        case tags
        case color
        case cover
        case quota
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(roomId, forKey: .roomId)
        try container.encode(title, forKey: .title)
        try container.encodeIfPresent(logo, forKey: .logo)
        try container.encodeIfPresent(copyLogo, forKey: .copyLogo)
        try container.encodeIfPresent(share, forKey: .share)
        try container.encodeIfPresent(groups, forKey: .groups)
        try container.encodeIfPresent(_public, forKey: ._public)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(color, forKey: .color)
        try container.encodeIfPresent(cover, forKey: .cover)
        try container.encodeIfPresent(quota, forKey: .quota)
    }
}

