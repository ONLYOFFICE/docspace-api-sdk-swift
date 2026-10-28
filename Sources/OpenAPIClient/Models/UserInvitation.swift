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

/** Which pending room invitations are to be sent again. */
public struct UserInvitation: Sendable, Codable, Hashable {

    /** The accounts to write to, taken from `GET api/2.0/files/rooms/{id}/share`. Anyone who has already joined, is  not in the room, or is invisible to the caller is skipped without an error, and the field is ignored once  every pending invitation is being resent. */
    public var usersIds: [UUID]?
    /** Whether every invitation of the room that is still waiting is sent again. With it on the list of accounts is  ignored, and with it off an empty list means that nothing is sent at all. */
    public var resendAll: Bool?

    public init(usersIds: [UUID]? = nil, resendAll: Bool? = nil) {
        self.usersIds = usersIds
        self.resendAll = resendAll
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case usersIds
        case resendAll
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(usersIds, forKey: .usersIds)
        try container.encodeIfPresent(resendAll, forKey: .resendAll)
    }
}

