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

/** The room template parameters. */
public struct RoomTemplateDto: Sendable, Codable, Hashable {

    public static let colorRule = StringRule(minLength: 0, maxLength: 6, pattern: nil)
    public static let coverRule = StringRule(minLength: 0, maxLength: 50, pattern: nil)
    /** The room template ID. */
    public var roomId: Int
    /** The room template title. */
    public var title: String?
    public var logo: LogoRequest?
    /** Specifies whether to copy room logo or not. */
    public var copyLogo: Bool?
    /** The collection of email addresses of users with whom to share a room. */
    public var share: [String]?
    /** The collection of groups with whom to share a room. */
    public var groups: [UUID]?
    /** Specifies whether the room template is public or not. */
    public var _public: Bool?
    /** The collection of tags. */
    public var tags: [String]?
    /** The color of the room template. */
    public var color: String?
    /** The cover of the room template. */
    public var cover: String?
    /** Room quota */
    public var quota: Int64?

    public init(roomId: Int, title: String? = nil, logo: LogoRequest? = nil, copyLogo: Bool? = nil, share: [String]? = nil, groups: [UUID]? = nil, _public: Bool? = nil, tags: [String]? = nil, color: String? = nil, cover: String? = nil, quota: Int64? = nil) {
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
        try container.encodeIfPresent(title, forKey: .title)
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

