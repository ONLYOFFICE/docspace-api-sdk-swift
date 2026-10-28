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

/** The parameters for updating the type of the user or guest when reassigning rooms and shared files. */
public struct StartUpdateUserTypeDto: Sendable, Codable, Hashable {

    /** The type to convert the account to. Only `Guest` and `User` are accepted, because they are the types that  cannot own rooms; `RoomAdmin`, `DocSpaceAdmin` and `All` are rejected here and belong to  `PUT api/2.0/people/type/{type}`. */
    public var type: EmployeeType?
    /** The ID of the account being converted. It has to be an active account other than the caller, and only the  portal owner may pass the ID of a DocSpace administrator. */
    public var userId: UUID?
    /** The ID of the administrator who receives the rooms and the shared files of the converted account. It has to be  an active room admin or DocSpace admin other than the converted account, and when it is omitted the data goes  to the caller. */
    public var reassignUserId: UUID?

    public init(type: EmployeeType? = nil, userId: UUID? = nil, reassignUserId: UUID? = nil) {
        self.type = type
        self.userId = userId
        self.reassignUserId = reassignUserId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case userId
        case reassignUserId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(reassignUserId, forKey: .reassignUserId)
    }
}

