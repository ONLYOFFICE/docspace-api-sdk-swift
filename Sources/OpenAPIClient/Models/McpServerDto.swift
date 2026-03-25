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

/** Full MCP server configuration, including connection details and authentication headers. Returned for administrator-level operations. */
public struct McpServerDto: Sendable, Codable, Hashable {

    /** Unique identifier of the MCP server. */
    public var id: UUID?
    /** Display name of the MCP server. */
    public var name: String?
    /** Human-readable description of the server's purpose and capabilities. */
    public var description: String?
    /** Base URL of the MCP server endpoint. */
    public var endpoint: String?
    public var serverType: ServerType?
    /** HTTP headers sent with every request to the server (e.g., authentication tokens). */
    public var headers: [String: String]?
    /** Indicates whether the server is currently enabled and available for room assignment. */
    public var enabled: Bool?
    public var icon: Icon?
    /** Indicates whether the server requires a configuration reset due to connectivity or credential issues. */
    public var needReset: Bool?

    public init(id: UUID? = nil, name: String? = nil, description: String? = nil, endpoint: String? = nil, serverType: ServerType? = nil, headers: [String: String]? = nil, enabled: Bool? = nil, icon: Icon? = nil, needReset: Bool? = nil) {
        self.id = id
        self.name = name
        self.description = description
        self.endpoint = endpoint
        self.serverType = serverType
        self.headers = headers
        self.enabled = enabled
        self.icon = icon
        self.needReset = needReset
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case description
        case endpoint
        case serverType
        case headers
        case enabled
        case icon
        case needReset
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(endpoint, forKey: .endpoint)
        try container.encodeIfPresent(serverType, forKey: .serverType)
        try container.encodeIfPresent(headers, forKey: .headers)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(icon, forKey: .icon)
        try container.encodeIfPresent(needReset, forKey: .needReset)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension McpServerDto: Identifiable {}
