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

/** The rule by which the files of a room are removed once they have been lying in it for too long. */
public struct RoomDataLifetimeDto: Sendable, Codable, Hashable {

    public static let valueRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 999, exclusiveMaximum: false, multipleOf: nil)
    /** Decides what happens to a file that has grown too old: it is erased outright, or it is moved to the trash of  the account that created the room, from where it can still be brought back. */
    public var deletePermanently: Bool?
    /** The unit the age is counted in. Months and years are counted as calendar ones, so the same number of them  covers a different number of days depending on when the clean-up runs. */
    public var period: RoomDataLifetimePeriod?
    /** How many periods a file may stay in the room, counted from the moment it was last changed rather than from the  moment the rule was set. Files that are already older than this are removed by the next clean-up. */
    public var value: Int?
    /** Switches the rule on and off. Switching it off erases the rule instead of keeping it aside, so afterwards the  room reports no rule at all and the other three values have to be sent again to bring it back. */
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

