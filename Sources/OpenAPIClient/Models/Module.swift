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

/** The module information. */
public struct Module: Sendable, Codable, Hashable {

    /** The module ID. */
    public var id: UUID?
    /** The module product class name. */
    public var appName: String?
    /** The module product class name. */
    public var title: String?
    /** The URL to the module start page. */
    public var link: String?
    /** The module icon URL. */
    public var iconUrl: String?
    /** The module large image URL. */
    public var imageUrl: String?
    /** The module help URL. */
    public var helpUrl: String?
    /** The module description. */
    public var description: String?
    /** Specifies if the module is primary or not. */
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
