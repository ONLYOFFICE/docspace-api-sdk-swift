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

/** The trash auto-clearing setting to store: the on/off flag together with the interval. */
public struct AutoCleanupRequestDto: Sendable, Codable, Hashable {

    /** Whether the caller's trash is cleared automatically: with true an item is removed for good once it has been in  the trash longer than the interval below, with false the portal removes nothing and waits for the trash to be  emptied by hand. */
    public var _set: Bool?
    /** How long an item may stay in the trash before it is removed for good. It is written from every request,  including one that switches clearing off, so send it together with the flag instead of expecting the stored  interval to be kept. */
    public var gap: DateToAutoCleanUp?

    public init(_set: Bool? = nil, gap: DateToAutoCleanUp? = nil) {
        self._set = _set
        self.gap = gap
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _set = "set"
        case gap
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_set, forKey: ._set)
        try container.encodeIfPresent(gap, forKey: .gap)
    }
}

