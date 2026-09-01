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

/** The configuration settings for the web plugin instance. */
public struct WebPluginRequests: Sendable, Codable, Hashable {

    public static let settingsRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** Controls whether the web plugin is active and operational. */
    public var enabled: Bool?
    /** The JSON-formatted configuration settings for the web plugin. */
    public var settings: String?

    public init(enabled: Bool? = nil, settings: String?) {
        self.enabled = enabled
        self.settings = settings
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case enabled
        case settings
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encode(settings, forKey: .settings)
    }
}

