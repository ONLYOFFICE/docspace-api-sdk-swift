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

/** The editor tool call state. Used to run the agent flow in the editor. */
public struct EditorToolCallStateDto: Sendable, Codable, Hashable {

    /** The tool name. */
    public var toolName: String?
    /** The editor tool call parameters. */
    public var parameters: JSONValue

    public init(toolName: String?, parameters: JSONValue) {
        self.toolName = toolName
        self.parameters = parameters
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case toolName
        case parameters
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(toolName, forKey: .toolName)
        try container.encode(parameters, forKey: .parameters)
    }
}

