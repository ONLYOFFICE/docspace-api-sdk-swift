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

/** The section the calling user's account opens into after signing in. */
public struct DefaultProductRequestDto: Sendable, Codable, Hashable {

    /** The section to land on. Only the folder types the client offers as a landing page are accepted - the rooms  list, My documents, shared with me, favorites, recent, forms and the AI agents folder - and anything else is  refused. My documents is refused for a guest as well, since a guest has no personal storage. */
    public var defaultFolderType: FolderType

    public init(defaultFolderType: FolderType) {
        self.defaultFolderType = defaultFolderType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case defaultFolderType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(defaultFolderType, forKey: .defaultFolderType)
    }
}

