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

/** The available external rights of the file entry. */
public struct FileEntryDtoIntegerAllOfAvailableShareRights: Sendable, Codable, Hashable {

    public var user: [String]?
    public var externalLink: [String]?
    public var group: [String]?
    public var invitationLink: [String]?
    public var primaryExternalLink: [String]?

    public init(user: [String]? = nil, externalLink: [String]? = nil, group: [String]? = nil, invitationLink: [String]? = nil, primaryExternalLink: [String]? = nil) {
        self.user = user
        self.externalLink = externalLink
        self.group = group
        self.invitationLink = invitationLink
        self.primaryExternalLink = primaryExternalLink
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case user = "User"
        case externalLink = "ExternalLink"
        case group = "Group"
        case invitationLink = "InvitationLink"
        case primaryExternalLink = "PrimaryExternalLink"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(user, forKey: .user)
        try container.encodeIfPresent(externalLink, forKey: .externalLink)
        try container.encodeIfPresent(group, forKey: .group)
        try container.encodeIfPresent(invitationLink, forKey: .invitationLink)
        try container.encodeIfPresent(primaryExternalLink, forKey: .primaryExternalLink)
    }
}

