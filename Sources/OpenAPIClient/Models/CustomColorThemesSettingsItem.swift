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

/** The custom color theme settings. */
public struct CustomColorThemesSettingsItem: Sendable, Codable, Hashable {

    /** The custom color theme ID. */
    public var id: Int?
    /** The custom color theme name. */
    public var name: String?
    public var main: CustomColorThemesSettingsColorItem?
    public var text: CustomColorThemesSettingsColorItem?

    public init(id: Int? = nil, name: String? = nil, main: CustomColorThemesSettingsColorItem? = nil, text: CustomColorThemesSettingsColorItem? = nil) {
        self.id = id
        self.name = name
        self.main = main
        self.text = text
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case main
        case text
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(main, forKey: .main)
        try container.encodeIfPresent(text, forKey: .text)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension CustomColorThemesSettingsItem: Identifiable {}
