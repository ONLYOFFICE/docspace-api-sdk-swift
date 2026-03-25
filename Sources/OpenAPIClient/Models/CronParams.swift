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

/** The backup cron parameters. */
public struct CronParams: Sendable, Codable, Hashable {

    public var period: BackupPeriod?
    /** The time of the day to start the backup process. */
    public var hour: Int?
    /** The day of the week to start the backup process. */
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

