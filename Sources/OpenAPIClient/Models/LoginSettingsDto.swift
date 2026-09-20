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
public struct LoginSettingsDto: Sendable, Codable, Hashable {

    /** How many failed attempts inside one window are tolerated before the offender is blocked. Attempts are  counted per user name and client address together, so one member being blocked leaves the rest of the  portal signing in normally. */
    public var attemptCount: Int
    /** How long, in seconds, a blocked user name and address pair stays refused. While the block lasts the  sign-in is refused even once the password is correct. */
    public var blockTime: Int
    /** The length, in seconds, of the rolling window the failures are counted over. It is not a request timeout: a  wider window makes the same `attemptCount` stricter, because failures further apart still add up. */
    public var checkPeriod: Int
    /** Whether the three numbers above still match the ones the installation ships with. It turns `false` as soon  as any of them is saved differently, and `true` again after  `DELETE api/2.0/settings/security/loginsettings`. */
    public var isDefault: Bool

    public init(attemptCount: Int, blockTime: Int, checkPeriod: Int, isDefault: Bool) {
        self.attemptCount = attemptCount
        self.blockTime = blockTime
        self.checkPeriod = checkPeriod
        self.isDefault = isDefault
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case attemptCount
        case blockTime
        case checkPeriod
        case isDefault
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(attemptCount, forKey: .attemptCount)
        try container.encode(blockTime, forKey: .blockTime)
        try container.encode(checkPeriod, forKey: .checkPeriod)
        try container.encode(isDefault, forKey: .isDefault)
    }
}

