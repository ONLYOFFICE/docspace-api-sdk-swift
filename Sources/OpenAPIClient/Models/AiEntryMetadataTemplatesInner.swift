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

public struct AiEntryMetadataTemplatesInner: Sendable, Codable, Hashable {

    public var id: Double
    public var name: String
    public var visible: Bool
    public var fields: [AiEntryMetadataField]

    public init(id: Double, name: String, visible: Bool, fields: [AiEntryMetadataField]) {
        self.id = id
        self.name = name
        self.visible = visible
        self.fields = fields
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case visible
        case fields
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(visible, forKey: .visible)
        try container.encode(fields, forKey: .fields)
    }
}

