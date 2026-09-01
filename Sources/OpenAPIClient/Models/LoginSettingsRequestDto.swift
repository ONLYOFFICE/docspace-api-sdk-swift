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

/** The request parameters for configuring login security and performance settings. */
public struct LoginSettingsRequestDto: Sendable, Codable, Hashable {

    public static let attemptCountRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 9999, exclusiveMaximum: false, multipleOf: nil)
    public static let blockTimeRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 9999, exclusiveMaximum: false, multipleOf: nil)
    public static let checkPeriodRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 9999, exclusiveMaximum: false, multipleOf: nil)
    /** The maximum number of consecutive failed login attempts allowed before triggering account suspension. */
    public var attemptCount: Int?
    /** The duration (in minutes) for which an account remains suspended after exceeding maximum login attempts. */
    public var blockTime: Int?
    /** The maximum time (in seconds) allowed for server to process and respond to login requests. */
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

