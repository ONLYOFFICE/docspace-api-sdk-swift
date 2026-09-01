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

/** The custom color themes settings. */
public struct CustomColorThemesSettingsDto: Sendable, Codable, Hashable {

    /** The list of the custom color themes. */
    public var themes: [CustomColorThemesSettingsItem]?
    /** Specifies whether the custom color theme is selected. */
    public var selected: Int?
    /** The maximum number of the custom color themes. */
    public var limit: Int?

    public init(themes: [CustomColorThemesSettingsItem]? = nil, selected: Int? = nil, limit: Int? = nil) {
        self.themes = themes
        self.selected = selected
        self.limit = limit
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case themes
        case selected
        case limit
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(themes, forKey: .themes)
        try container.encodeIfPresent(selected, forKey: .selected)
        try container.encodeIfPresent(limit, forKey: .limit)
    }
}

