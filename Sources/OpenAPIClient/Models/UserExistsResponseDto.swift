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

/** The user existence check response parameters. */
public struct UserExistsResponseDto: Sendable, Codable, Hashable {

    /** Specifies whether the user exists or not. */
    public var exists: Bool
    /** The user status, if the user exists. */
    public var status: EmployeeStatus?

    public init(exists: Bool, status: EmployeeStatus? = nil) {
        self.exists = exists
        self.status = status
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case exists
        case status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(exists, forKey: .exists)
        try container.encodeIfPresent(status, forKey: .status)
    }
}

