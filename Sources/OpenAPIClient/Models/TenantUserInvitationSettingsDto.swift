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

/** Whether the portal currently lets anyone be invited into it, member and guest kept apart. */
public struct TenantUserInvitationSettingsDto: Sendable, Codable, Hashable {

    /** Whether new members may be invited through the Contacts section. Switching it off stops new invitations  from being created; links already handed out keep working and members already invited stay. */
    public var allowInvitingMembers: Bool
    /** Whether every member, and not only an administrator, may invite an outside guest into a room. It is  independent of `allowInvitingMembers`, and switching it off has the same forward-only effect. */
    public var allowInvitingGuests: Bool

    public init(allowInvitingMembers: Bool, allowInvitingGuests: Bool) {
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
        try container.encode(allowInvitingMembers, forKey: .allowInvitingMembers)
        try container.encode(allowInvitingGuests, forKey: .allowInvitingGuests)
    }
}

