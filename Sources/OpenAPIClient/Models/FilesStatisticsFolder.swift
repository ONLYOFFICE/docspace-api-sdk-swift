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

/** One section of the portal and the space its documents take. */
public struct FilesStatisticsFolder: Sendable, Codable, Hashable {

    /** The name of the section as the interface shows it, translated into the language used by the caller, so it  suits display but not matching - which section an entry describes is told by the field that carries it. */
    public var title: String?
    /** The size of the files kept in the section, in bytes, counting every folder and room inside it; 0 means the  section holds nothing. The counter is brought up to date as an operation finishes, so a reading taken right  after an upload or a delete can still show the previous value. */
    public var usedSpace: Int64?

    public init(title: String? = nil, usedSpace: Int64? = nil) {
        self.title = title
        self.usedSpace = usedSpace
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case usedSpace
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(usedSpace, forKey: .usedSpace)
    }
}

