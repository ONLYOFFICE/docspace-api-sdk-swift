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

/** The request parameters for starting the reassignment process. */
public struct StartReassignRequestDto: Sendable, Codable, Hashable {

    /** The user ID whose data will be reassigned to another user. */
    public var fromUserId: UUID
    /** The user ID to whom all the data will be reassigned. */
    public var toUserId: UUID
    /** Specifies whether to delete a profile when the data reassignment will be finished or not. */
    public var deleteProfile: Bool?

    public init(fromUserId: UUID, toUserId: UUID, deleteProfile: Bool? = nil) {
        self.fromUserId = fromUserId
        self.toUserId = toUserId
        self.deleteProfile = deleteProfile
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fromUserId
        case toUserId
        case deleteProfile
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(fromUserId, forKey: .fromUserId)
        try container.encode(toUserId, forKey: .toUserId)
        try container.encodeIfPresent(deleteProfile, forKey: .deleteProfile)
    }
}

