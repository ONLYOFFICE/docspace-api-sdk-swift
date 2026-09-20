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

/** The changes to make to a file: a new title, an earlier version to restore, or both. */
public struct UpdateFile: Sendable, Codable, Hashable {

    public static let titleRule = StringRule(minLength: 0, maxLength: 165, pattern: nil)
    /** The new title of the file, without an extension - the stored extension is kept whatever the title says, so a  rename cannot change the format. Left empty, the file keeps its name. */
    public var title: String?
    /** The version to restore on top of the history, as reported by `GET api/2.0/files/file/{fileId}/history`; 0 or  less leaves the versions untouched. */
    public var lastVersion: Int?

    public init(title: String? = nil, lastVersion: Int? = nil) {
        self.title = title
        self.lastVersion = lastVersion
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case lastVersion
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(lastVersion, forKey: .lastVersion)
    }
}

