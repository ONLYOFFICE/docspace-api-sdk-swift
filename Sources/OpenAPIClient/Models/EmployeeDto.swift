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

/** The user parameters. */
public struct EmployeeDto: Sendable, Codable, Hashable {

    /** The user ID. */
    public var id: UUID?
    /** The HTML-encoded user's display name formatted according to the default format for the current culture. */
    public var displayName: String?
    /** The user title. */
    public var title: String?
    /** The user avatar. */
    public var avatar: String?
    /** The user original size avatar. */
    public var avatarOriginal: String?
    /** The user maximum size avatar. */
    public var avatarMax: String?
    /** The user medium size avatar. */
    public var avatarMedium: String?
    /** The user small size avatar. */
    public var avatarSmall: String?
    /** The user profile URL. */
    public var profileUrl: String?
    /** Specifies if the user has an avatar or not. */
    public var hasAvatar: Bool?
    /** Specifies if the user is anonymous or not. */
    public var isAnonim: Bool?

    public init(id: UUID? = nil, displayName: String? = nil, title: String? = nil, avatar: String? = nil, avatarOriginal: String? = nil, avatarMax: String? = nil, avatarMedium: String? = nil, avatarSmall: String? = nil, profileUrl: String? = nil, hasAvatar: Bool? = nil, isAnonim: Bool? = nil) {
        self.id = id
        self.displayName = displayName
        self.title = title
        self.avatar = avatar
        self.avatarOriginal = avatarOriginal
        self.avatarMax = avatarMax
        self.avatarMedium = avatarMedium
        self.avatarSmall = avatarSmall
        self.profileUrl = profileUrl
        self.hasAvatar = hasAvatar
        self.isAnonim = isAnonim
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case displayName
        case title
        case avatar
        case avatarOriginal
        case avatarMax
        case avatarMedium
        case avatarSmall
        case profileUrl
        case hasAvatar
        case isAnonim
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(avatar, forKey: .avatar)
        try container.encodeIfPresent(avatarOriginal, forKey: .avatarOriginal)
        try container.encodeIfPresent(avatarMax, forKey: .avatarMax)
        try container.encodeIfPresent(avatarMedium, forKey: .avatarMedium)
        try container.encodeIfPresent(avatarSmall, forKey: .avatarSmall)
        try container.encodeIfPresent(profileUrl, forKey: .profileUrl)
        try container.encodeIfPresent(hasAvatar, forKey: .hasAvatar)
        try container.encodeIfPresent(isAnonim, forKey: .isAnonim)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension EmployeeDto: Identifiable {}
