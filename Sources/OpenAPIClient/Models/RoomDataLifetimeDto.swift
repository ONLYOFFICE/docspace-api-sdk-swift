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

/** The room data lifetime information. */
public struct RoomDataLifetimeDto: Sendable, Codable, Hashable {

    public static let valueRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 999, exclusiveMaximum: false, multipleOf: nil)
    /** Specifies whether to permanently delete the room data or not. */
    public var deletePermanently: Bool?
    public var period: RoomDataLifetimePeriod?
    /** Specifies the time period value of the room data lifetime. */
    public var value: Int?
    /** Specifies whether the room data lifetime setting is enabled or not. */
    public var enabled: Bool?

    public init(deletePermanently: Bool? = nil, period: RoomDataLifetimePeriod? = nil, value: Int? = nil, enabled: Bool? = nil) {
        self.deletePermanently = deletePermanently
        self.period = period
        self.value = value
        self.enabled = enabled
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case deletePermanently
        case period
        case value
        case enabled
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(deletePermanently, forKey: .deletePermanently)
        try container.encodeIfPresent(period, forKey: .period)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encodeIfPresent(enabled, forKey: .enabled)
    }
}

