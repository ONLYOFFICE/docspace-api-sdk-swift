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

/** The authorization key parameters. */
public struct AuthKey: Sendable, Codable, Hashable {

    public static let valueRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** The authorization key name. */
    public var name: String?
    /** The authorization key value. */
    public var value: String?
    /** The authorization key title. */
    public var title: String?
    /** The field type: text, password, select, toggle. */
    public var type: String?
    /** The list of options for select type fields. */
    public var options: [String]?
    /** The name of another key this field depends on for visibility. */
    public var dependsOn: String?
    /** The value of ASC.Web.Studio.UserControls.Management.AuthKey.DependsOn key that makes this field visible. */
    public var dependsOnValue: String?

    public init(name: String?, value: String?, title: String? = nil, type: String? = nil, options: [String]? = nil, dependsOn: String? = nil, dependsOnValue: String? = nil) {
        self.name = name
        self.value = value
        self.title = title
        self.type = type
        self.options = options
        self.dependsOn = dependsOn
        self.dependsOnValue = dependsOnValue
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case value
        case title
        case type
        case options
        case dependsOn
        case dependsOnValue
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(value, forKey: .value)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(options, forKey: .options)
        try container.encodeIfPresent(dependsOn, forKey: .dependsOn)
        try container.encodeIfPresent(dependsOnValue, forKey: .dependsOnValue)
    }
}

