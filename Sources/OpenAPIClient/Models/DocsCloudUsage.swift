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

/** Represents the usage statistics of a DocsCloud tenant. */
public struct DocsCloudUsage: Sendable, Codable, Hashable {

    /** The date and time the usage statistics are counted from. */
    public var since: Date?
    /** The number of active users. */
    public var activeCount: Int?

    public init(since: Date? = nil, activeCount: Int? = nil) {
        self.since = since
        self.activeCount = activeCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case since
        case activeCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(since, forKey: .since)
        try container.encodeIfPresent(activeCount, forKey: .activeCount)
    }
}

