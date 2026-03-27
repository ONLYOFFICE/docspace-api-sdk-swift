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

/** MCP server status within a room, reflecting the current user's connection state for OAuth-based servers. */
public struct McpServerStatusDto: Sendable, Codable, Hashable {

    /** Unique identifier of the MCP server. */
    public var id: UUID?
    /** Display name of the MCP server. */
    public var name: String?
    public var serverType: ServerType?
    /** Indicates whether the current user has an active connection to this server. For direct-connection servers this is always true; for OAuth-based servers it reflects whether the user has completed authorization. */
    public var connected: Bool?
    public var icon: Icon?
    /** Indicates whether the server requires a configuration reset due to connectivity or credential issues. */
    public var needReset: Bool?

    public init(id: UUID? = nil, name: String?, serverType: ServerType? = nil, connected: Bool? = nil, icon: Icon? = nil, needReset: Bool? = nil) {
        self.id = id
        self.name = name
        self.serverType = serverType
        self.connected = connected
        self.icon = icon
        self.needReset = needReset
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case serverType
        case connected
        case icon
        case needReset
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(serverType, forKey: .serverType)
        try container.encodeIfPresent(connected, forKey: .connected)
        try container.encodeIfPresent(icon, forKey: .icon)
        try container.encodeIfPresent(needReset, forKey: .needReset)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension McpServerStatusDto: Identifiable {}
