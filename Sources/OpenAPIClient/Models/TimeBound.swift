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

/** Represents the period the price is effective in. */
public struct TimeBound: Sendable, Codable, Hashable {

    /** The date and time when the period starts. */
    public var startDate: Date?
    /** The date and time when the period ends. */
    public var endDate: Date?

    public init(startDate: Date? = nil, endDate: Date? = nil) {
        self.startDate = startDate
        self.endDate = endDate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case startDate
        case endDate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(startDate, forKey: .startDate)
        try container.encodeIfPresent(endDate, forKey: .endDate)
    }
}

