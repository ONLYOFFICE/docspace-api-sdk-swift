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

/** Parameters for starting a new AI chat session. */
public struct StartNewChatBody: Sendable, Codable, Hashable {

    /** The initial user message to send to the AI assistant. */
    public var message: String?
    /** The optional collection of file identifiers to attach as context for the AI model. */
    public var contextFolderId: Int?
    /** The list of attached files. */
    public var files: [ContinueChatBodyFilesInner]?

    public init(message: String?, contextFolderId: Int? = nil, files: [ContinueChatBodyFilesInner]? = nil) {
        self.message = message
        self.contextFolderId = contextFolderId
        self.files = files
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case message
        case contextFolderId
        case files
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(message, forKey: .message)
        try container.encodeIfPresent(contextFolderId, forKey: .contextFolderId)
        try container.encodeIfPresent(files, forKey: .files)
    }
}

