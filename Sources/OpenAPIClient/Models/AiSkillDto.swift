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

/** A skill of an Instructions room: a Markdown file in the room root with a YAML frontmatter. */
public struct AiSkillDto: Sendable, Codable, Hashable {

    /** ID of the skill file. */
    public var id: String?
    /** Skill name from the frontmatter. */
    public var name: String?
    /** Skill description from the frontmatter. */
    public var description: String?

    public init(id: String?, name: String?, description: String?) {
        self.id = id
        self.name = name
        self.description = description
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case description
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(description, forKey: .description)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension AiSkillDto: Identifiable {}
