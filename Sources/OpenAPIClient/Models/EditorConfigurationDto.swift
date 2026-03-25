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

/** The editor configuration parameters. */
public struct EditorConfigurationDto: Sendable, Codable, Hashable {

    /** The callback URL of the editor. */
    public var callbackUrl: String?
    public var coEditing: CoEditingConfig?
    /** The creation URL of the editor. */
    public var createUrl: String?
    public var customization: CustomizationConfigDto?
    public var embedded: EmbeddedConfig?
    public var encryptionKeys: EncryptionKeysConfig?
    /** The language of the editor configuration. */
    public var lang: String?
    /** The mode of the editor configuration. */
    public var mode: String?
    /** Specifies if the mode is write of the editor configuration. */
    public var modeWrite: Bool?
    public var plugins: PluginsConfig?
    /** The recent configuration of the editor. */
    public var recent: [RecentConfig]?
    /** The templates of the editor configuration. */
    public var templates: [TemplatesConfig]?
    public var user: UserConfig?

    public init(callbackUrl: String? = nil, coEditing: CoEditingConfig? = nil, createUrl: String? = nil, customization: CustomizationConfigDto? = nil, embedded: EmbeddedConfig? = nil, encryptionKeys: EncryptionKeysConfig? = nil, lang: String?, mode: String?, modeWrite: Bool? = nil, plugins: PluginsConfig? = nil, recent: [RecentConfig]? = nil, templates: [TemplatesConfig]? = nil, user: UserConfig? = nil) {
        self.callbackUrl = callbackUrl
        self.coEditing = coEditing
        self.createUrl = createUrl
        self.customization = customization
        self.embedded = embedded
        self.encryptionKeys = encryptionKeys
        self.lang = lang
        self.mode = mode
        self.modeWrite = modeWrite
        self.plugins = plugins
        self.recent = recent
        self.templates = templates
        self.user = user
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case callbackUrl
        case coEditing
        case createUrl
        case customization
        case embedded
        case encryptionKeys
        case lang
        case mode
        case modeWrite
        case plugins
        case recent
        case templates
        case user
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
        try container.encodeIfPresent(coEditing, forKey: .coEditing)
        try container.encodeIfPresent(createUrl, forKey: .createUrl)
        try container.encodeIfPresent(customization, forKey: .customization)
        try container.encodeIfPresent(embedded, forKey: .embedded)
        try container.encodeIfPresent(encryptionKeys, forKey: .encryptionKeys)
        try container.encode(lang, forKey: .lang)
        try container.encode(mode, forKey: .mode)
        try container.encodeIfPresent(modeWrite, forKey: .modeWrite)
        try container.encodeIfPresent(plugins, forKey: .plugins)
        try container.encodeIfPresent(recent, forKey: .recent)
        try container.encodeIfPresent(templates, forKey: .templates)
        try container.encodeIfPresent(user, forKey: .user)
    }
}

