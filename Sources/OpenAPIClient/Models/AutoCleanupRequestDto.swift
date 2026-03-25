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

/** The request parameters for updating the trash bin auto-clearing setting. */
public struct AutoCleanupRequestDto: Sendable, Codable, Hashable {

    /** Specifies whether to enable the auto-clearing or not. */
    public var _set: Bool?
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

