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

/** One single change inside a saved revision of a file. */
public struct EditHistoryChangesWrapper: Sendable, Codable, Hashable {

    /** The account that made this change, as the editing service reported it; an account it could not name is  reported as a guest. */
    public var user: EditHistoryAuthor?
    /** When this change was made, written with the offset of the portal's time zone rather than as plain UTC. */
    public var created: ApiDateTime?
    /** The SHA-256 hash of the document as it stood after this change, where the editing service recorded one, so  that a client can check a stored copy against the change it claims to hold. Empty when the change record  carries no hash. */
    public var documentSha256: String?

    public init(user: EditHistoryAuthor? = nil, created: ApiDateTime? = nil, documentSha256: String? = nil) {
        self.user = user
        self.created = created
        self.documentSha256 = documentSha256
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case user
        case created
        case documentSha256
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(user, forKey: .user)
        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(documentSha256, forKey: .documentSha256)
    }
}

