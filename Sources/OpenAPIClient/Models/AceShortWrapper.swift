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

/** The information about the settings which allow to share the document with other users. */
public struct AceShortWrapper: Sendable, Codable, Hashable {

    /** The name of the user the document will be shared with. */
    public var user: String?
    /** The access rights for the user with the name above.  Can be Full Access, Read Only, or Deny Access. */
    public var permissions: String?
    /** Specifies whether to change the user icon to the link icon. */
    public var isLink: Bool?

    public init(user: String? = nil, permissions: String? = nil, isLink: Bool? = nil) {
        self.user = user
        self.permissions = permissions
        self.isLink = isLink
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case user
        case permissions
        case isLink
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(user, forKey: .user)
        try container.encodeIfPresent(permissions, forKey: .permissions)
        try container.encodeIfPresent(isLink, forKey: .isLink)
    }
}

