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

/** The request parameters for inviting users to the room. */
public struct RoomInvitationRequest: Sendable, Codable, Hashable {

    /** The collection of invitation parameters. */
    public var invitations: [RoomInvitation]?
    /** Specifies whether to notify users about the shared room or not. */
    public var notify: Bool?
    /** The message to send when notifying about the shared room. */
    public var message: String?
    /** The language of the room invitation. */
    public var culture: String?
    /** Specifies whether to forcibly delete a user with form roles from the room. */
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

