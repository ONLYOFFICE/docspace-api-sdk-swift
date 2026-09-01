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

/** Chat conversation metadata. Represents a single chat session (thread). */
public struct AiThread: Sendable, Codable, Hashable {

    /** Unique thread identifier (UUID). */
    public var threadId: String
    /** Optional thread title. Auto-generated from the first message if not set. */
    public var title: String?
    /** Timestamp (ms since epoch) of the last message in this thread. Used for sorting. */
    public var lastEditDate: Double?
    /** Provider configuration at the time of last message. Used for thread-level provider display. */
    public var provider: AiTProvider?
    /** Model info at the time of last message. */
    public var model: AiModel?
    /** ID of the profile used for this thread. Links to `Profile.id`. */
    public var profileId: String?

    public init(threadId: String, title: String? = nil, lastEditDate: Double? = nil, provider: AiTProvider? = nil, model: AiModel? = nil, profileId: String? = nil) {
        self.threadId = threadId
        self.title = title
        self.lastEditDate = lastEditDate
        self.provider = provider
        self.model = model
        self.profileId = profileId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case threadId
        case title
        case lastEditDate
        case provider
        case model
        case profileId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(threadId, forKey: .threadId)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(lastEditDate, forKey: .lastEditDate)
        try container.encodeIfPresent(provider, forKey: .provider)
        try container.encodeIfPresent(model, forKey: .model)
        try container.encodeIfPresent(profileId, forKey: .profileId)
    }
}

