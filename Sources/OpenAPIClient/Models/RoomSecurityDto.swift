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

/** The room security parameters. */
public struct RoomSecurityDto: Sendable, Codable, Hashable {

    /** The list of room members. */
    public var members: [FileShareDto]?
    /** The warning message. */
    public var warning: String?
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

