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

public struct AiThreadsOpenOrCreateRequest: Sendable, Codable, Hashable {

    public var threadId: String?
    /** Profile the title generation runs on. */
    public var profile: AiProfile
    public var profileId: String
    /** First user message a fresh thread derives its title from. */
    public var firstMessage: AiThreadMessageLike
    /** Opaque scope token persisted on a freshly created thread. */
    public var entityId: String?
    public var entityMeta: AiThreadsOpenOrCreateRequestEntityMeta?

    public init(threadId: String? = nil, profile: AiProfile, profileId: String, firstMessage: AiThreadMessageLike, entityId: String? = nil, entityMeta: AiThreadsOpenOrCreateRequestEntityMeta? = nil) {
        self.threadId = threadId
        self.profile = profile
        self.profileId = profileId
        self.firstMessage = firstMessage
        self.entityId = entityId
        self.entityMeta = entityMeta
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case threadId
        case profile
        case profileId
        case firstMessage
        case entityId
        case entityMeta
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(threadId, forKey: .threadId)
        try container.encode(profile, forKey: .profile)
        try container.encode(profileId, forKey: .profileId)
        try container.encode(firstMessage, forKey: .firstMessage)
        try container.encodeIfPresent(entityId, forKey: .entityId)
        try container.encodeIfPresent(entityMeta, forKey: .entityMeta)
    }
}

