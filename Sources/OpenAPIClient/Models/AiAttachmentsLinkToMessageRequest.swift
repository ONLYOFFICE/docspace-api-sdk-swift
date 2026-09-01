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

public struct AiAttachmentsLinkToMessageRequest: Sendable, Codable, Hashable {

    /** Attachment ids to bind. */
    public var ids: [String]
    /** Owning message id. */
    public var messageId: String
    /** Owning thread id. */
    public var threadId: String

    public init(ids: [String], messageId: String, threadId: String) {
        self.ids = ids
        self.messageId = messageId
        self.threadId = threadId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case ids
        case messageId
        case threadId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(ids, forKey: .ids)
        try container.encode(messageId, forKey: .messageId)
        try container.encode(threadId, forKey: .threadId)
    }
}

