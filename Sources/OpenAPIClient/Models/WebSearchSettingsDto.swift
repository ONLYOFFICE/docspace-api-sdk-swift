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

/** The web search settings. */
public struct WebSearchSettingsDto: Sendable, Codable, Hashable {

    /** Indicates whether web search is currently enabled. */
    public var enabled: Bool?
    public var type: EngineType?
    /** Indicates whether the web search API key needs to be reconfigured. */
    public var needReset: Bool?

    public init(enabled: Bool? = nil, type: EngineType? = nil, needReset: Bool? = nil) {
        self.enabled = enabled
        self.type = type
        self.needReset = needReset
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case enabled
        case type
        case needReset
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(needReset, forKey: .needReset)
    }
}

