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

/** Parameters specifying which MCP servers to assign to the room. */
public struct AddRoomServersRequestBody: Sendable, Codable, Hashable {

    public static let serversRule = ArrayRule(minItems: nil, maxItems: nil, uniqueItems: true)
    /** Set of unique identifiers of MCP servers to associate with the room. A maximum of 5 servers can be assigned per room. */
    public var servers: Set<UUID>?

    public init(servers: Set<UUID>?) {
        self.servers = servers
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case servers
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(servers, forKey: .servers)
    }
}

