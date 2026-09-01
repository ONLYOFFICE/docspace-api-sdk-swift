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

/** A single chat message as it travels on the wire. */
public struct AiThreadMessageLike: Sendable, Codable, Hashable {

    public enum Role: String, Sendable, Codable, CaseIterable {
        case user = "user"
        case assistant = "assistant"
        case system = "system"
    }
    /** Storage-assigned message id (absent on inbound drafts). */
    public var id: String?
    /** Message author role. */
    public var role: Role
    public var content: AiThreadMessageLikeContent
    /** Creation timestamp, ISO-8601 on the wire. */
    public var createdAt: String?
    public var status: AiThreadMessageLikeStatus?
    /** Arbitrary per-message metadata. */
    public var metadata: JSONValue?
    /** Attachments linked to the message. */
    public var attachments: [JSONValue]?

    public init(id: String? = nil, role: Role, content: AiThreadMessageLikeContent, createdAt: String? = nil, status: AiThreadMessageLikeStatus? = nil, metadata: JSONValue? = nil, attachments: [JSONValue]? = nil) {
        self.id = id
        self.role = role
        self.content = content
        self.createdAt = createdAt
        self.status = status
        self.metadata = metadata
        self.attachments = attachments
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case role
        case content
        case createdAt
        case status
        case metadata
        case attachments
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encode(role, forKey: .role)
        try container.encode(content, forKey: .content)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(metadata, forKey: .metadata)
        try container.encodeIfPresent(attachments, forKey: .attachments)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension AiThreadMessageLike: Identifiable {}
