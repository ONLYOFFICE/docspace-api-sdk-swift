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

public struct AiToolsListSystemTools200Response: Sendable, Codable, Hashable {

    /** Tools by server name, covering both the host-configured system servers and the custom MCP servers registered for this scope. */
    public var groups: [String: [AiTMCPItem]]
    /** Why a registered custom server could not be reached, keyed by server name. A server that answered is absent from this map. */
    public var errors: [String: String]
    /** Names of the host-configured system servers among the keys of `groups`; everything else there was registered as a custom server. */
    public var system: [String]

    public init(groups: [String: [AiTMCPItem]], errors: [String: String], system: [String]) {
        self.groups = groups
        self.errors = errors
        self.system = system
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case groups
        case errors
        case system
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(groups, forKey: .groups)
        try container.encode(errors, forKey: .errors)
        try container.encode(system, forKey: .system)
    }
}

