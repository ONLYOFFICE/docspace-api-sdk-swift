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

/** The request parameters that address the queued job of a single user - a data reassignment, a data deletion or a  user type change. */
public struct TerminateRequestDto: Sendable, Codable, Hashable {

    /** The ID of the user whose job is addressed. For a terminate operation it has to be the same ID that was passed  when the job was started. */
    public var userId: UUID

    public init(userId: UUID) {
        self.userId = userId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(userId, forKey: .userId)
    }
}

