//
//  Copyright (c) Ascensio System SIA 2025
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

/** The web plugin information. */
public struct WebPluginDto: Sendable, Codable, ParameterConvertible, Hashable {

    /** The web plugin name. */
    public var name: String?
    /** The web plugin version. */
    public var version: String?
    /** The minimum version of DocSpace with which the plugin is guaranteed to work. */
    public var minDocSpaceVersion: String?
    /** The web plugin description. */
    public var description: String?
    /** The web plugin license. */
    public var license: String?
    /** The web plugin author. */
    public var author: String?
    /** The web plugin home page URL. */
    public var homePage: String?
    /** The name by which the web plugin is registered in the window object. */
    public var pluginName: String?
    /** The web plugin scopes. */
    public var scopes: String?
    /** The web plugin image. */
    public var image: String?
    public var createBy: EmployeeDto
    /** The date and time when the web plugin was created. */
    public var createOn: Date
    /** Specifies if the web plugin is enabled or not. */
    public var enabled: Bool
    /** Specifies if the web plugin is system or not. */
    public var system: Bool
    /** The web plugin URL. */
    public var url: String?
    /** The web plugin settings. */
    public var settings: String?

    public init(name: String?, version: String?, minDocSpaceVersion: String? = nil, description: String?, license: String?, author: String?, homePage: String?, pluginName: String?, scopes: String?, image: String?, createBy: EmployeeDto, createOn: Date, enabled: Bool, system: Bool, url: String?, settings: String?) {
        self.name = name
        self.version = version
        self.minDocSpaceVersion = minDocSpaceVersion
        self.description = description
        self.license = license
        self.author = author
        self.homePage = homePage
        self.pluginName = pluginName
        self.scopes = scopes
        self.image = image
        self.createBy = createBy
        self.createOn = createOn
        self.enabled = enabled
        self.system = system
        self.url = url
        self.settings = settings
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case version
        case minDocSpaceVersion
        case description
        case license
        case author
        case homePage
        case pluginName
        case scopes
        case image
        case createBy
        case createOn
        case enabled
        case system
        case url
        case settings
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(version, forKey: .version)
        try container.encodeIfPresent(minDocSpaceVersion, forKey: .minDocSpaceVersion)
        try container.encode(description, forKey: .description)
        try container.encode(license, forKey: .license)
        try container.encode(author, forKey: .author)
        try container.encode(homePage, forKey: .homePage)
        try container.encode(pluginName, forKey: .pluginName)
        try container.encode(scopes, forKey: .scopes)
        try container.encode(image, forKey: .image)
        try container.encode(createBy, forKey: .createBy)
        try container.encode(createOn, forKey: .createOn)
        try container.encode(enabled, forKey: .enabled)
        try container.encode(system, forKey: .system)
        try container.encode(url, forKey: .url)
        try container.encode(settings, forKey: .settings)
    }
}

