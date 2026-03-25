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

/** The login settings parameters. */
public struct LoginSettingsDto: Sendable, Codable, Hashable {

    /** The maximum number of consecutive failed login attempts allowed before triggering account suspension. */
    public var attemptCount: Int
    /** The duration (in minutes) for which an account remains suspended after exceeding maximum login attempts. */
    public var blockTime: Int
    /** The maximum time (in seconds) allowed for server to process and respond to login requests. */
    public var checkPeriod: Int
    /** Specifies whether the login settings are default or not. */
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

