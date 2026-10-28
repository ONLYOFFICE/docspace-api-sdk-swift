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

public struct AiPromptsMoveRequest: Sendable, Codable, Hashable {

    /** Prompt id to move. */
    public var id: String
    /** Target folder id, or `null` for root. */
    public var folderId: String?

    public init(id: String, folderId: String?) {
        self.id = id
        self.folderId = folderId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case folderId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(folderId, forKey: .folderId)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension AiPromptsMoveRequest: Identifiable {}
