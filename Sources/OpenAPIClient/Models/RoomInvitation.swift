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

/** One membership change in a room: an account or an email address, and the access level it is given. */
public struct RoomInvitation: Sendable, Codable, Hashable {

    public static let emailRule = StringRule(minLength: nil, maxLength: 255, pattern: nil)
    /** The address of somebody who has no portal account yet. An invitation is sent to it and an account is created  once it is accepted, so this is the field to use instead of an account identifier when the person is new to  the portal. */
    public var email: String?
    /** The account or the group the entry is about, taken from the portal people and group listings. Leave it out and  give an email address instead to invite somebody who has no account yet. */
    public var id: UUID?
    /** What the subject may do in the room. The value 0 removes the subject from the room, and the levels on offer  depend on the kind of room. */
    public var access: FileShare?

    public init(email: String? = nil, id: UUID? = nil, access: FileShare? = nil) {
        self.email = email
        self.id = id
        self.access = access
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case id
        case access
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(access, forKey: .access)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension RoomInvitation: Identifiable {}
