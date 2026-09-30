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

/** One web plugin available to the portal: its manifest, where to load it from, and the state the portal keeps. */
public struct WebPluginDto: Sendable, Codable, Hashable {

    /** The plugin's manifest name, which is what every other operation of this group addresses it by and what  makes it unique within the portal - an installation-wide plugin wins the name over a portal one. */
    public var name: String?
    /** The plugin's own version from its manifest. The portal does not compare it against anything; it is there  for a person to read. */
    public var version: String?
    /** The oldest portal version the plugin declares it works with. It is a claim from the manifest and is not  enforced, so a plugin can be loaded on an older portal and simply misbehave; compare it with the `version`  of `GET api/2.0/settings`. */
    public var minDocSpaceVersion: String?
    /** The plugin's description from its manifest, in the language the manifest was written in. The translations  of it are in `descriptionLocale`. */
    public var description: String?
    /** The licence the plugin is published under, as its manifest states it. Nothing checks it. */
    public var license: String?
    /** Who wrote the plugin, as its manifest states it - not the portal member who uploaded it, who is  `createBy`. */
    public var author: String?
    /** The plugin's own page, for a person to read more about it. It is empty when the manifest names none. */
    public var homePage: String?
    /** The global the plugin registers itself under in the browser once its script has run, which is how a  client reaches it. It is distinct from `name`, the identifier the portal uses. */
    public var pluginName: String?
    /** Which parts of the interface the plugin hooks into, as one comma-separated string rather than a list. */
    public var scopes: String?
    /** The plugin's icon exactly as its manifest declares it, which is normally a file name inside the plugin's  own package rather than an absolute address - resolve it against the directory `url` points into. */
    public var image: String?
    /** The portal member who uploaded the plugin. For a plugin that ships with the installation it is an empty  profile, since no member put it there. */
    public var createBy: EmployeeDto
    /** When the plugin was uploaded. It stays at its zero value for a plugin that ships with the installation. */
    public var createOn: Date
    /** Whether the portal loads the plugin. It is the state this portal stored, so an installation-wide plugin  can be on for one portal and off for another. */
    public var enabled: Bool
    /** Whether the plugin ships with the installation rather than having been uploaded here. A system plugin  cannot be deleted through `DELETE api/2.0/settings/webplugins/{name}`, only switched off. */
    public var system: Bool
    /** The address of the plugin's script, which a client loads to run it. It ends in a `hash` query taken from  `version`, so the address changes whenever the plugin is updated and an old one may be cached. */
    public var url: String?
    /** The absolute address of the plugin's stylesheet, empty for a plugin that ships none. */
    public var cssUrl: String?
    /** The settings string the portal keeps for the plugin, stored and returned verbatim - only the plugin knows  its shape. It is empty until `PUT api/2.0/settings/webplugins/{name}` saves one. */
    public var settings: String?
    /** The plugin's name translated, keyed by culture name. A culture that is missing falls back to `name`, and  the whole map is empty for a plugin that ships no translations. */
    public var nameLocale: [String: String?]?
    /** The plugin's description translated, keyed the same way as `nameLocale` and falling back to  `description`. */
    public var descriptionLocale: [String: String?]?
    /** How the script at `url` is to be loaded - as an ES module or as a classic script. It is empty for a  plugin whose manifest does not say, which a client treats as a classic script. */
    public var runtime: String?

    public init(name: String?, version: String?, minDocSpaceVersion: String? = nil, description: String?, license: String?, author: String?, homePage: String?, pluginName: String?, scopes: String?, image: String?, createBy: EmployeeDto, createOn: Date, enabled: Bool, system: Bool, url: String?, cssUrl: String?, settings: String?, nameLocale: [String: String?]? = nil, descriptionLocale: [String: String?]? = nil, runtime: String? = nil) {
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
        self.cssUrl = cssUrl
        self.settings = settings
        self.nameLocale = nameLocale
        self.descriptionLocale = descriptionLocale
        self.runtime = runtime
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
        case cssUrl
        case settings
        case nameLocale
        case descriptionLocale
        case runtime
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
        try container.encode(cssUrl, forKey: .cssUrl)
        try container.encode(settings, forKey: .settings)
        try container.encodeIfPresent(nameLocale, forKey: .nameLocale)
        try container.encodeIfPresent(descriptionLocale, forKey: .descriptionLocale)
        try container.encodeIfPresent(runtime, forKey: .runtime)
    }
}

