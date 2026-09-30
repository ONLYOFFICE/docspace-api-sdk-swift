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

/** The parameters of a single file deletion. */
public struct Delete: Sendable, Codable, Hashable {

    /** When to delete: `true` waits until the editing session on the file has ended, `false` deletes at once, pulling  the file away from whoever is working on it. */
    public var deleteAfter: Bool?
    /** Where the file goes: `false` moves it to Trash, from where it can be restored, `true` deletes it for good.  Inside a room, where there is no Trash, deletion is always final. */
    public var immediately: Bool?

    public init(deleteAfter: Bool? = nil, immediately: Bool? = nil) {
        self.deleteAfter = deleteAfter
        self.immediately = immediately
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case deleteAfter
        case immediately
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(deleteAfter, forKey: .deleteAfter)
        try container.encodeIfPresent(immediately, forKey: .immediately)
    }
}

