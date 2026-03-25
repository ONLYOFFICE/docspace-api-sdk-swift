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

/** The action performed on the file. */
public struct HistoryAction: Sendable, Codable, Hashable {

    public var id: MessageAction?
    /** The action performed on the file. */
    public var key: String?

    public init(id: MessageAction? = nil, key: String? = nil) {
        self.id = id
        self.key = key
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case key
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(key, forKey: .key)
    }
}

