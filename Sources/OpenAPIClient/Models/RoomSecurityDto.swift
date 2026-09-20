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

/** The outcome of a change of the room membership. */
public struct RoomSecurityDto: Sendable, Codable, Hashable {

    /** The access entries of the subjects named in the request, read back after the change was applied. A subject the  caller may not see is missing from it, so comparing this list with the request is the way to learn who was  skipped; it is null when nothing was applied at all. */
    public var members: [FileShareDto]?
    /** The reason the first subject that could not be handled was skipped, in the language of the request, while the  rest of the list was still applied. Null when every named subject went through. The text is meant to be shown  to a person, not matched against. */
    public var warning: String?
    /** Reports the one case in which nothing at all was changed: a member being removed still holds a role in a form  of the room, and the request did not ask to remove them anyway. Repeat the call with `force` to remove them  together with the role. */
    public var error: RoomSecurityError?

    public init(members: [FileShareDto]? = nil, warning: String? = nil, error: RoomSecurityError? = nil) {
        self.members = members
        self.warning = warning
        self.error = error
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case members
        case warning
        case error
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(members, forKey: .members)
        try container.encodeIfPresent(warning, forKey: .warning)
        try container.encodeIfPresent(error, forKey: .error)
    }
}

