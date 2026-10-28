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

/** One batch of membership changes for a room. */
public struct RoomInvitationRequest: Sendable, Codable, Hashable {

    /** Who is added, changed or removed, one entry per subject. The same subject named twice keeps the level of the  last entry, and an empty list is accepted and changes nothing. */
    public var invitations: [RoomInvitation]?
    /** Whether the subjects that gained access are told about it by email. With it off the change is silent, which is  the usual choice when membership is synchronised from another system. */
    public var notify: Bool?
    /** The line added to the invitation email. It is used only while the notification is on, and it reaches nobody  whose access was removed. */
    public var message: String?
    /** The language of the invitation email, as a portal culture name such as en-US. Leaving it out sends each  message in the language of its recipient. */
    public var culture: String?
    /** Whether a member who still holds a role in an unfinished form is removed anyway. With it off such a removal is  refused and reported through the error of the answer, so the form can be reassigned first. */
    public var force: Bool?

    public init(invitations: [RoomInvitation]? = nil, notify: Bool? = nil, message: String? = nil, culture: String? = nil, force: Bool? = nil) {
        self.invitations = invitations
        self.notify = notify
        self.message = message
        self.culture = culture
        self.force = force
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case invitations
        case notify
        case message
        case culture
        case force
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(invitations, forKey: .invitations)
        try container.encodeIfPresent(notify, forKey: .notify)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encodeIfPresent(culture, forKey: .culture)
        try container.encodeIfPresent(force, forKey: .force)
    }
}

