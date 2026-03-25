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

/** Parameters for creating a new custom MCP server. */
public struct AddMcpServerRequestBody: Sendable, Codable, Hashable {

    public static let nameRule = StringRule(minLength: nil, maxLength: 128, pattern: nil)
    public static let descriptionRule = StringRule(minLength: nil, maxLength: 255, pattern: nil)
    /** Unique display name for the server. Only letters, numbers, underscores, and hyphens are allowed. Maximum 128 characters. */
    public var name: String?
    /** Human-readable description of the server's purpose and capabilities. Maximum 255 characters. */
    public var description: String?
    /** Base URL of the MCP server endpoint. Must be a valid, reachable URL. The system will verify connectivity during registration. */
    public var endpoint: String?
    /** Optional HTTP headers to include with every request to the MCP server (e.g., authentication tokens or API keys). */
    public var headers: [String: String]?
    /** Optional Base64-encoded icon image for the server. Used as the visual identifier in the UI. */
    public var icon: String?

    public init(name: String?, description: String?, endpoint: String?, headers: [String: String]? = nil, icon: String? = nil) {
        self.name = name
        self.description = description
        self.endpoint = endpoint
        self.headers = headers
        self.icon = icon
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case endpoint
        case headers
        case icon
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(description, forKey: .description)
        try container.encode(endpoint, forKey: .endpoint)
        try container.encodeIfPresent(headers, forKey: .headers)
        try container.encodeIfPresent(icon, forKey: .icon)
    }
}

