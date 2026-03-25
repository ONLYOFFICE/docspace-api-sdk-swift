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

/** The chat message information. */
public struct MessageDto: Sendable, Codable, Hashable {

    /** The unique identifier of the message. */
    public var id: Int64?
    public var role: Role?
    /** The ordered collection of content blocks that make up the message body (text, tool calls, or attachments). */
    public var contents: [MessageContentDto]?
    public var createdOn: ApiDateTime?

    public init(id: Int64? = nil, role: Role? = nil, contents: [MessageContentDto]? = nil, createdOn: ApiDateTime? = nil) {
        self.id = id
        self.role = role
        self.contents = contents
        self.createdOn = createdOn
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case role
        case contents
        case createdOn
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(role, forKey: .role)
        try container.encodeIfPresent(contents, forKey: .contents)
        try container.encodeIfPresent(createdOn, forKey: .createdOn)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension MessageDto: Identifiable {}
