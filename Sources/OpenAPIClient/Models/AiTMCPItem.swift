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

/** Descriptor for a tool exposed by an MCP server. */
public struct AiTMCPItem: Sendable, Codable, Hashable {

    /** Tool name as registered on the MCP server (e.g. `web_search`, `insert_text`). */
    public var name: String
    /** Human-readable description shown to the AI model and in the tools list UI. */
    public var description: String
    /** JSON Schema describing the tool's input parameters. */
    public var inputSchema: JSONValue
    /** Whether this tool is currently enabled. Disabled tools are hidden from the AI model. */
    public var enabled: Bool?
    /** Server type (MCP server name / host tool group id) this tool belongs to — the key the persisted disabled map is stored under. Set by the source that enumerated the tool, so a caller-supplied tool can still be attributed to its group after being flattened into a single list: that is what lets the engine apply the disabled map to `actionArgs.tools` instead of trusting the caller to pre-filter. Wire-serializable, so it survives a remote (server-side) engine. */
    public var serverType: String?
    /** Whether the consumer must show an approval dialog before this tool runs. The engine reads it when deciding the `autoAllow` flag on a `tool-call-pending` event: `requireApproval === false` auto-allows the call (no dialog), `true` always prompts. `undefined` leaves the decision to the persisted always-allow list alone — so MCP / custom-server tools (which never set it) keep prompting as before, while host tools opt into auto-allow by default. Wire-serializable, so it survives a remote (server-side) engine. */
    public var requireApproval: Bool?

    public init(name: String, description: String, inputSchema: JSONValue, enabled: Bool? = nil, serverType: String? = nil, requireApproval: Bool? = nil) {
        self.name = name
        self.description = description
        self.inputSchema = inputSchema
        self.enabled = enabled
        self.serverType = serverType
        self.requireApproval = requireApproval
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case inputSchema
        case enabled
        case serverType
        case requireApproval
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(description, forKey: .description)
        try container.encode(inputSchema, forKey: .inputSchema)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(serverType, forKey: .serverType)
        try container.encodeIfPresent(requireApproval, forKey: .requireApproval)
    }
}

