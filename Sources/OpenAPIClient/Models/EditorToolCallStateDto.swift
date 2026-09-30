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

/** A generation the editor is expected to run as soon as the document opens, left behind by an AI agent that created  the file but not its content. */
public struct EditorToolCallStateDto: Sendable, Codable, Hashable {

    /** Which generation to run, which also decides the shape of the parameters below. */
    public var toolName: String?
    /** The arguments of the generation named above. */
    public var parameters: EditorToolCallParametersDto

    public init(toolName: String?, parameters: EditorToolCallParametersDto) {
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

