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

/** Persistent record for a single attachment (file or image) referenced from a user message. Files carry extracted text in `content`; images carry base64 data in `base64`. Metadata (`title`, `path`, `type`) is always present for display purposes regardless of whether the heavy payload is loaded. */
public struct AiAttachment: Sendable, Codable, Hashable {

    public enum Kind: String, Sendable, Codable, CaseIterable {
        case file = "file"
        case image = "image"
    }
    public enum Source: String, Sendable, Codable, CaseIterable {
        case user = "user"
        case tool = "tool"
    }
    /** Storage-assigned UUID. */
    public var id: String
    /** file | image. */
    public var kind: Kind
    /** Origin of the attachment. `user` — uploaded by the user in the composer (the default when unset, for backward compatibility). `tool` — produced by a tool call (e.g. `generate_image`). Lets the integrator's adapter route or apply policies (separate bucket, quotas, TTL, CDN) per source. */
    public var source: Source?
    /** Display label (filename or user-visible title). */
    public var title: String
    /** Extracted text for files. */
    public var content: String?
    /** Base64 data URL for images. */
    public var base64: String?
    /** Original host file path (for files). */
    public var path: String?
    /** ONLYOFFICE file type code (for files). */
    public var type: Double?
    /** Owning message id once linked. Unset while the attachment is a draft. */
    public var messageId: String?
    /** Owning thread id once linked. Unset while the attachment is a draft. */
    public var threadId: String?
    /** Opaque scope token (entity / room) the attachment was created in. Drafts carry it so an entity switch keeps in-flight composer state isolated; once linked to a message the field is redundant with the thread's own entity binding. */
    public var entityId: String?
    /** Storage-assigned creation timestamp. */
    public var createdAt: Double
    /** Whether the attached form can be analyzed. */
    public var canAnalyze: Bool?
    /** Keys of the fields inside the form. `key` is the field identifier, `text` its human-readable label. */
    public var formKeys: [AiAttachmentFormKeysInner]?

    public init(id: String, kind: Kind, source: Source? = nil, title: String, content: String? = nil, base64: String? = nil, path: String? = nil, type: Double? = nil, messageId: String? = nil, threadId: String? = nil, entityId: String? = nil, createdAt: Double, canAnalyze: Bool? = nil, formKeys: [AiAttachmentFormKeysInner]? = nil) {
        self.id = id
        self.kind = kind
        self.source = source
        self.title = title
        self.content = content
        self.base64 = base64
        self.path = path
        self.type = type
        self.messageId = messageId
        self.threadId = threadId
        self.entityId = entityId
        self.createdAt = createdAt
        self.canAnalyze = canAnalyze
        self.formKeys = formKeys
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case kind
        case source
        case title
        case content
        case base64
        case path
        case type
        case messageId
        case threadId
        case entityId
        case createdAt
        case canAnalyze
        case formKeys
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(kind, forKey: .kind)
        try container.encodeIfPresent(source, forKey: .source)
        try container.encode(title, forKey: .title)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(base64, forKey: .base64)
        try container.encodeIfPresent(path, forKey: .path)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(messageId, forKey: .messageId)
        try container.encodeIfPresent(threadId, forKey: .threadId)
        try container.encodeIfPresent(entityId, forKey: .entityId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(canAnalyze, forKey: .canAnalyze)
        try container.encodeIfPresent(formKeys, forKey: .formKeys)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension AiAttachment: Identifiable {}
