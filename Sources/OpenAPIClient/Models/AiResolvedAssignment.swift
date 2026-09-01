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

/** Resolved profile for an action — both the storage row and its ID. */
public struct AiResolvedAssignment: Sendable, Codable, Hashable {

    /** The identifier of the resolved profile. */
    public var profileId: String
    /** The resolved profile itself. */
    public var profile: AiProfile

    public init(profileId: String, profile: AiProfile) {
        self.profileId = profileId
        self.profile = profile
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case profileId
        case profile
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(profileId, forKey: .profileId)
        try container.encode(profile, forKey: .profile)
    }
}

