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

/** The chat session information. */
public struct ChatDto: Sendable, Codable, Hashable {

    /** The unique identifier of the AI chat session. */
    public var id: UUID?
    /** The display title of the chat session. */
    public var title: String?
    public var createdOn: ApiDateTime?
    public var modifiedOn: ApiDateTime?
    public var createdBy: EmployeeDto?

    public init(id: UUID? = nil, title: String? = nil, createdOn: ApiDateTime? = nil, modifiedOn: ApiDateTime? = nil, createdBy: EmployeeDto? = nil) {
        self.id = id
        self.title = title
        self.createdOn = createdOn
        self.modifiedOn = modifiedOn
        self.createdBy = createdBy
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case createdOn
        case modifiedOn
        case createdBy
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(createdOn, forKey: .createdOn)
        try container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        try container.encodeIfPresent(createdBy, forKey: .createdBy)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ChatDto: Identifiable {}
