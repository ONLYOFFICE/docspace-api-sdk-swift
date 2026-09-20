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

/** Whether the portal still lets its members invite new members and new guests. */
public struct TenantUserInvitationSettingsRequestDto: Sendable, Codable, Hashable {

    /** Whether new DocSpace members may be invited through the Contacts section. Switching it off only stops new  invitations being created; links already issued keep working and members already invited stay. */
    public var allowInvitingMembers: Bool?
    /** Whether every DocSpace member, and not only an administrator, may invite external guests into rooms.  Switching it off leaves the guests already invited in place. */
    public var allowInvitingGuests: Bool?

    public init(allowInvitingMembers: Bool? = nil, allowInvitingGuests: Bool? = nil) {
        self.allowInvitingMembers = allowInvitingMembers
        self.allowInvitingGuests = allowInvitingGuests
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case allowInvitingMembers
        case allowInvitingGuests
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(allowInvitingMembers, forKey: .allowInvitingMembers)
        try container.encodeIfPresent(allowInvitingGuests, forKey: .allowInvitingGuests)
    }
}

