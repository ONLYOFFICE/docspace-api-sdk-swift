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

/** Parameters for updating an existing MCP server. All fields are optional — only provided fields will be modified. */
public struct UpdateServerRequestBody: Sendable, Codable, Hashable {

    public static let nameRule = StringRule(minLength: nil, maxLength: 128, pattern: nil)
    public static let descriptionRule = StringRule(minLength: nil, maxLength: 255, pattern: nil)
    /** New display name for the server. Only letters, numbers, underscores, and hyphens are allowed. Maximum 128 characters. */
    public var name: String?
    /** New human-readable description of the server's purpose. Maximum 255 characters. */
    public var description: String?
    /** New base URL of the MCP server endpoint. If changed, the system will re-verify connectivity before saving. */
    public var endpoint: String?
    /** New HTTP headers to include with every request. If changed alongside the endpoint, connectivity is re-verified. */
    public var headers: [String: String]?
    /** Set to true to update the server icon. When true, the Icon field value (or null to remove) will be applied. */
    public var updateIcon: Bool?
    /** New Base64-encoded icon image for the server, or null to remove the existing icon. Only applied when UpdateIcon is true. */
    public var icon: String?

    public init(name: String? = nil, description: String? = nil, endpoint: String? = nil, headers: [String: String]? = nil, updateIcon: Bool? = nil, icon: String? = nil) {
        self.name = name
        self.description = description
        self.endpoint = endpoint
        self.headers = headers
        self.updateIcon = updateIcon
        self.icon = icon
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case endpoint
        case headers
        case updateIcon
        case icon
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(endpoint, forKey: .endpoint)
        try container.encodeIfPresent(headers, forKey: .headers)
        try container.encodeIfPresent(updateIcon, forKey: .updateIcon)
        try container.encodeIfPresent(icon, forKey: .icon)
    }
}

