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

/** The parameters of a user mentioned in a message. */
public struct MentionWrapper: Sendable, Codable, Hashable {

    public var user: UserInfo?
    /** The user email address. */
    public var email: String?
    /** The user unique identification. */
    public var id: String?
    /** The path to the user's avatar. */
    public var image: String?
    /** Specifies whether the user has the access to the file where they are mentioned. */
    public var hasAccess: Bool?
    /** The user full name. */
    public var name: String?

    public init(user: UserInfo? = nil, email: String? = nil, id: String? = nil, image: String? = nil, hasAccess: Bool? = nil, name: String? = nil) {
        self.user = user
        self.email = email
        self.id = id
        self.image = image
        self.hasAccess = hasAccess
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case user
        case email
        case id
        case image
        case hasAccess
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(user, forKey: .user)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(image, forKey: .image)
        try container.encodeIfPresent(hasAccess, forKey: .hasAccess)
        try container.encodeIfPresent(name, forKey: .name)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension MentionWrapper: Identifiable {}
