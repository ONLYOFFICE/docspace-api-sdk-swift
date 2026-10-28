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

/** Saved prompt template that users can quickly insert into the chat. */
public struct AiPrompt: Sendable, Codable, Hashable {

    /** Unique prompt identifier (UUID). */
    public var id: String
    /** Prompt display name shown in the prompt picker. */
    public var name: String
    /** Prompt template text. May contain placeholder tokens. */
    public var text: String
    /** Optional parent folder ID. `undefined` means the prompt is at the root level. */
    public var folderId: String?
    /** Timestamp (ms since epoch) when the prompt was created. */
    public var createdAt: Double
    /** Timestamp (ms since epoch) of the last prompt modification. */
    public var updatedAt: Double

    public init(id: String, name: String, text: String, folderId: String? = nil, createdAt: Double, updatedAt: Double) {
        self.id = id
        self.name = name
        self.text = text
        self.folderId = folderId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case text
        case folderId
        case createdAt
        case updatedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(text, forKey: .text)
        try container.encodeIfPresent(folderId, forKey: .folderId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension AiPrompt: Identifiable {}
