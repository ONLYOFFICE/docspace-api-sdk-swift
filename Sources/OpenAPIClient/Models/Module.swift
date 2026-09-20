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

/** The descriptor of a portal module: what it is called, where it starts and how it is pictured. */
public struct Module: Sendable, Codable, Hashable {

    /** The identifier of the module. It is the same in every portal and in every language, so use it rather than the  title to tell modules apart. */
    public var id: UUID?
    /** The short system name of the module, the one that appears in its addresses and in the portal configuration.  Unlike the title it is not translated. */
    public var appName: String?
    /** The display name of the module, already translated for the calling account, so it changes with the language  and must not be compared against a fixed string. */
    public var title: String?
    /** The address of the start page of the module, to be opened in a browser rather than called as an API. */
    public var link: String?
    /** The address of the small icon of the module, meant for a menu entry. */
    public var iconUrl: String?
    /** The address of the large image of the module, meant for a tile or a start screen. */
    public var imageUrl: String?
    /** The address of the help section of the module. It is empty when the portal publishes no help for it. */
    public var helpUrl: String?
    /** The one-line description of the module shown next to its title, translated for the calling account. */
    public var description: String?
    /** Whether the portal opens this module first when no other destination is given. */
    public var isPrimary: Bool?

    public init(id: UUID? = nil, appName: String? = nil, title: String? = nil, link: String? = nil, iconUrl: String? = nil, imageUrl: String? = nil, helpUrl: String? = nil, description: String? = nil, isPrimary: Bool? = nil) {
        self.id = id
        self.appName = appName
        self.title = title
        self.link = link
        self.iconUrl = iconUrl
        self.imageUrl = imageUrl
        self.helpUrl = helpUrl
        self.description = description
        self.isPrimary = isPrimary
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case appName
        case title
        case link
        case iconUrl
        case imageUrl
        case helpUrl
        case description
        case isPrimary
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(appName, forKey: .appName)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(link, forKey: .link)
        try container.encodeIfPresent(iconUrl, forKey: .iconUrl)
        try container.encodeIfPresent(imageUrl, forKey: .imageUrl)
        try container.encodeIfPresent(helpUrl, forKey: .helpUrl)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(isPrimary, forKey: .isPrimary)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension Module: Identifiable {}
