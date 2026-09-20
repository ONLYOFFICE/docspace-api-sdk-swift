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

/** The request parameters for the time the scheduled backup runs. */
public struct Cron: Sendable, Codable, Hashable {

    /** How often the backup runs: `EveryDay`, `EveryWeek` or `EveryMonth`. It defaults to `EveryDay`. */
    public var period: BackupPeriod?
    /** The hour of the day the backup starts at, from 0 to 23. Minutes cannot be chosen - it always starts  on the hour. */
    public var hour: Int?
    /** The day the backup runs on: the day of the week from 1 to 7, Sunday being 1, for `EveryWeek`, and the  day of the month from 1 to 31 for `EveryMonth`. Leave it out for `EveryDay` only - an omitted value is  stored as 0, which neither of the other two periods accepts, so a weekly or monthly schedule sent  without it fails. */
    public var day: Int?

    public init(period: BackupPeriod? = nil, hour: Int? = nil, day: Int? = nil) {
        self.period = period
        self.hour = hour
        self.day = day
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case period
        case hour
        case day
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(period, forKey: .period)
        try container.encodeIfPresent(hour, forKey: .hour)
        try container.encodeIfPresent(day, forKey: .day)
    }
}

