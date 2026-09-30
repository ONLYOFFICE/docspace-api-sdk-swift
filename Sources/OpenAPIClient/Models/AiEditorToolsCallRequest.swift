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

public struct AiEditorToolsCallRequest: Sendable, Codable, Hashable {

    /** Name of the tool to run, as listed by the tools endpoint. A name that is unknown or excluded from the editor is rejected with 400. */
    public var name: String
    /** Arguments for the tool, shaped by that tool's own input schema. Treated as empty when it is not an object. */
    public var arguments: [String: JSONValue?]?
    /** Room the call is scoped to. Left out for a portal-wide call. */
    public var entityId: String?

    public init(name: String, arguments: [String: JSONValue?]? = nil, entityId: String? = nil) {
        self.name = name
        self.arguments = arguments
        self.entityId = entityId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case arguments
        case entityId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(arguments, forKey: .arguments)
        try container.encodeIfPresent(entityId, forKey: .entityId)
    }
}

