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

public struct AiEditorToolsList200ResponseToolsInner: Sendable, Codable, Hashable {

    /** Tool name, as it is passed back to the call endpoint. */
    public var name: String
    /** What the tool does, empty when the server declares nothing. */
    public var description: String
    /** JSON Schema of the tool arguments. */
    public var inputSchema: [String: JSONValue?]
    /** Whether the editor has to ask the user before running the tool. Read-only operations arrive with this off. */
    public var requireApproval: Bool

    public init(name: String, description: String, inputSchema: [String: JSONValue?], requireApproval: Bool) {
        self.name = name
        self.description = description
        self.inputSchema = inputSchema
        self.requireApproval = requireApproval
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case inputSchema
        case requireApproval
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(description, forKey: .description)
        try container.encode(inputSchema, forKey: .inputSchema)
        try container.encode(requireApproval, forKey: .requireApproval)
    }
}

