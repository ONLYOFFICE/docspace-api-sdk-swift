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

/** Represents the usage statistics of a single DocsCloud user category (editor or viewer). */
public struct DocsCloudUserStats: Sendable, Codable, Hashable {

    /** The number of active users. */
    public var active: Int?
    /** The number of internal users. */
    public var _internal: Int?
    /** The number of external users. */
    public var external: Int?
    /** The number of remaining users before the limit is reached. */
    public var remaining: Int?
    /** Whether the number of remaining users is critically low. */
    public var criticalRemaining: Bool?

    public init(active: Int? = nil, _internal: Int? = nil, external: Int? = nil, remaining: Int? = nil, criticalRemaining: Bool? = nil) {
        self.active = active
        self._internal = _internal
        self.external = external
        self.remaining = remaining
        self.criticalRemaining = criticalRemaining
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case active
        case _internal = "internal"
        case external
        case remaining
        case criticalRemaining
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(active, forKey: .active)
        try container.encodeIfPresent(_internal, forKey: ._internal)
        try container.encodeIfPresent(external, forKey: .external)
        try container.encodeIfPresent(remaining, forKey: .remaining)
        try container.encodeIfPresent(criticalRemaining, forKey: .criticalRemaining)
    }
}

