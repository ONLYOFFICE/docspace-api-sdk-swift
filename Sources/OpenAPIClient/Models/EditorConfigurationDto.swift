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

/** How the editors behave for this opening: the mode, the language, the interface, and who is editing. */
public struct EditorConfigurationDto: Sendable, Codable, Hashable {

    /** Where the editors post the document back to when they save it. A client must not call it itself; it is the  address the document service uses. */
    public var callbackUrl: String?
    /** How co-editing starts out for this session and whether the user may switch it in the interface. */
    public var coEditing: CoEditingConfig?
    /** Where the editor sends the user when they ask for a new document of the same type. It is empty when creating  one is not offered here. */
    public var createUrl: String?
    /** How the editor interface is dressed for this portal, this document and this layout. */
    public var customization: CustomizationConfigDto?
    /** The addresses the framed viewer needs. It is filled in only for the embedded layout. */
    public var embedded: EmbeddedConfig?
    /** The caller's end-to-end encryption keys, added only when the document lies in a private room, so that the  editors can decrypt it in the browser. It is empty everywhere else. */
    public var encryptionKeys: [EncryptionKeyDto]?
    /** The culture the editor interface is shown in, taken from the profile of the caller. */
    public var lang: String?
    /** `edit` when this session may write the document, `view` when it may only read it. */
    public var mode: String?
    /** Whether this session may write; it is what the mode above says in one word. */
    public var modeWrite: Bool?
    /** Which editor plugins are offered. The portal currently offers none, so the list inside comes back empty. */
    public var plugins: PluginsConfig?
    /** The documents offered in the editor's recent list. It is left out altogether when there is nothing to offer. */
    public var recent: [RecentConfig]?
    /** Always empty: the portal no longer passes creation templates through the editor configuration. */
    public var templates: [TemplatesConfig]?
    /** The account the editors attribute changes to. It is empty for an anonymous session opened through an external  link, and the editors then ask for a name themselves. */
    public var user: UserConfig?

    public init(callbackUrl: String? = nil, coEditing: CoEditingConfig? = nil, createUrl: String? = nil, customization: CustomizationConfigDto? = nil, embedded: EmbeddedConfig? = nil, encryptionKeys: [EncryptionKeyDto]? = nil, lang: String?, mode: String?, modeWrite: Bool? = nil, plugins: PluginsConfig? = nil, recent: [RecentConfig]? = nil, templates: [TemplatesConfig]? = nil, user: UserConfig? = nil) {
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

