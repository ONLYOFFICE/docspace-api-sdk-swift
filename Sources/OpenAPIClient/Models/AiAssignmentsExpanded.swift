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

/** The bindings with `expand=profile`: the bound profiles themselves, plus how many profiles the portal has, so a chat can start on this one read. */
public struct AiAssignmentsExpanded: Sendable, Codable, Hashable {

    /** The bound profiles keyed by action type, as `GET api/2.0/ai/profiles/list` describes them. A binding whose profile no longer exists is left out. */
    public var assignments: [String: AiProfile]
    /** How many profiles the portal has. */
    public var profilesTotal: Int
    /** How many of those profiles can chat; a profile without declared capabilities counts as one that can. */
    public var chatProfilesTotal: Int

    public init(assignments: [String: AiProfile], profilesTotal: Int, chatProfilesTotal: Int) {
        self.assignments = assignments
        self.profilesTotal = profilesTotal
        self.chatProfilesTotal = chatProfilesTotal
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case assignments
        case profilesTotal
        case chatProfilesTotal
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(assignments, forKey: .assignments)
        try container.encode(profilesTotal, forKey: .profilesTotal)
        try container.encode(chatProfilesTotal, forKey: .chatProfilesTotal)
    }
}

