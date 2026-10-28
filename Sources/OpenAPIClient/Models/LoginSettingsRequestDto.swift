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

/** The brute-force protection of the sign-in form: how many failures, over how long, cost how long a block. */
public struct LoginSettingsRequestDto: Sendable, Codable, Hashable {

    public static let attemptCountRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 9999, exclusiveMaximum: false, multipleOf: nil)
    public static let blockTimeRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 9999, exclusiveMaximum: false, multipleOf: nil)
    public static let checkPeriodRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 9999, exclusiveMaximum: false, multipleOf: nil)
    /** How many failed sign-in attempts inside one window are tolerated before the offender is blocked. Attempts are  counted per user name and client address together, so one member being blocked leaves the rest of the portal  signing in normally. */
    public var attemptCount: Int?
    /** How long, in seconds, a blocked user name and address pair stays refused. While the block lasts the sign-in  is refused even when the password is finally correct. */
    public var blockTime: Int?
    /** The length, in seconds, of the rolling window the failed attempts are counted over. A wider window makes the  same `attemptCount` stricter, because failures further apart still add up. */
    public var checkPeriod: Int?

    public init(attemptCount: Int? = nil, blockTime: Int? = nil, checkPeriod: Int? = nil) {
        self.attemptCount = attemptCount
        self.blockTime = blockTime
        self.checkPeriod = checkPeriod
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case attemptCount
        case blockTime
        case checkPeriod
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(attemptCount, forKey: .attemptCount)
        try container.encodeIfPresent(blockTime, forKey: .blockTime)
        try container.encodeIfPresent(checkPeriod, forKey: .checkPeriod)
    }
}

