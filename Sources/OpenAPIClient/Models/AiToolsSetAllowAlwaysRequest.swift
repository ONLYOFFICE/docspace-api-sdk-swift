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

public struct AiToolsSetAllowAlwaysRequest: Sendable, Codable, Hashable {

    public var serverType: String
    public var toolName: String
    /** Whether the tool is always allowed. */
    public var value: Bool
    public var entityId: String?

    public init(serverType: String, toolName: String, value: Bool, entityId: String? = nil) {
        self.serverType = serverType
        self.toolName = toolName
        self.value = value
        self.entityId = entityId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case serverType
        case toolName
        case value
        case entityId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(serverType, forKey: .serverType)
        try container.encode(toolName, forKey: .toolName)
        try container.encode(value, forKey: .value)
        try container.encodeIfPresent(entityId, forKey: .entityId)
    }
}

