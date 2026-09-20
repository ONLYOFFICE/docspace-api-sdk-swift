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

/** The trash auto-clearing setting of an account. */
public struct AutoCleanUpData: Sendable, Codable, Hashable {

    /** Whether the trash of the account is cleared automatically. While it is false nothing is removed by the portal  and the interval below is kept but unused. */
    public var isAutoCleanUp: Bool?
    /** How long an item may stay in the trash before it is removed for good. It is reported even while clearing is  off, and it is what the moment in the `autoDelete` field of a trashed entry is computed from. */
    public var gap: DateToAutoCleanUp?

    public init(isAutoCleanUp: Bool? = nil, gap: DateToAutoCleanUp? = nil) {
        self.isAutoCleanUp = isAutoCleanUp
        self.gap = gap
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case isAutoCleanUp
        case gap
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(isAutoCleanUp, forKey: .isAutoCleanUp)
        try container.encodeIfPresent(gap, forKey: .gap)
    }
}

