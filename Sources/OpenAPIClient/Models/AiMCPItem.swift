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
public struct AiMCPItem: Sendable, Codable, Hashable {

    /** Tool name as registered on the MCP server (e.g. `web_search`, `insert_text`). */
    public var name: String
    /** Human-readable description shown to the AI model and in the tools list UI. */
    public var description: String
    /** JSON Schema describing the tool's input parameters. */
    public var inputSchema: JSONValue
    /** Whether this tool is currently enabled. Disabled tools are hidden from the AI model. */
    public var enabled: Bool?
    /** The server or tool group the tool belongs to (an MCP server name or a host tool group ID): the key a disabled tool is stored under, so a tool sent in `actionArgs.tools` is still matched to its group. */
    public var serverType: String?
    /** Whether the tool asks for approval before it runs, under the `auto` tool permission mode: `false` runs it without asking; `true` or absent leaves it to the always-allow list and the tool's MCP annotations (see `annotations`). Under `ask` every call asks and under `allow` none does, whatever this says. Host tools default to `false`; MCP and custom-server tools leave it unset. */
    public var requireApproval: Bool?
    /** The MCP tool annotations as the server declared them in `tools/list`; never sent to the model. Under the `auto` tool permission mode a tool that cannot destroy anything runs without approval - one annotated `readOnlyHint: true`, or one with an explicit `destructiveHint: false`; a destructive tool, and one with no annotations (the protocol's default is destructive), keeps asking. */
    public var annotations: AiToolAnnotations?

    public init(name: String, description: String, inputSchema: JSONValue, enabled: Bool? = nil, serverType: String? = nil, requireApproval: Bool? = nil, annotations: AiToolAnnotations? = nil) {
        self.name = name
        self.description = description
        self.inputSchema = inputSchema
        self.enabled = enabled
        self.serverType = serverType
        self.requireApproval = requireApproval
        self.annotations = annotations
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case inputSchema
        case enabled
        case serverType
        case requireApproval
        case annotations
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
        try container.encodeIfPresent(annotations, forKey: .annotations)
    }
}

