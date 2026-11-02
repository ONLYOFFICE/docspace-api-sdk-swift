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

/** The sources of an AI project: the Instructions and Knowledge rooms linked to it. */
public struct AiProjectSourcesDto: Sendable, Codable, Hashable {

    /** Linked Instructions rooms, sorted by title. */
    public var instructionsRooms: [AiProjectSourceDto]?
    /** Linked Knowledge rooms, sorted by title. */
    public var knowledgeRooms: [AiProjectSourceDto]?

    public init(instructionsRooms: [AiProjectSourceDto]?, knowledgeRooms: [AiProjectSourceDto]?) {
        self.instructionsRooms = instructionsRooms
        self.knowledgeRooms = knowledgeRooms
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case instructionsRooms
        case knowledgeRooms
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(instructionsRooms, forKey: .instructionsRooms)
        try container.encode(knowledgeRooms, forKey: .knowledgeRooms)
    }
}

