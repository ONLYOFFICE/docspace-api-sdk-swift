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

/** One line of a document sharing list in display form: who the document is shared with and the label of their access  level, rather than an access record with identifiers. Entries that deny access and invitation links are left out,  so the list names only the subjects and links that can currently open the document. */
public struct AceShortWrapper: Sendable, Codable, Hashable {

    /** Who or what the line stands for, as a display string: the display name of a member, the name of a group, or  the title given to a shared link when `isLink` is true. It is empty when the subject has no name to show - a  shared link that was never given a title, for instance. */
    public var user: String?
    /** The access level of that subject as a localized label, not a code: inside a room it usually names the role the  subject holds there (Viewer, Editor, Room Manager), while outside a room it names the access itself  (Read Only, Full Access). The wording comes from the portal resources and is translated for the current  language, so show it to a person rather than compare it in code. */
    public var permissions: String?
    /** Whether the line stands for a shared link instead of a member or a group. Clients use it to draw a link badge  where they would otherwise draw an avatar. */
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

