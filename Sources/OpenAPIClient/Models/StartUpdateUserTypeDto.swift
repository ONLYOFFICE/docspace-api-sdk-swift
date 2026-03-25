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

    public var type: EmployeeType?
    /** The user ID. */
    public var userId: UUID?
    /** The user ID to reassign. */
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

