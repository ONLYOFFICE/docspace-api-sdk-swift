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

/** The folder content information. */
public struct FolderContentDtoInteger: Sendable, Codable, Hashable {

    /** The list of files in the folder. */
    public var files: [FileEntryBaseDto]?
    /** The list of folders in the folder. */
    public var folders: [FileEntryBaseDto]?
    public var current: FolderDtoInteger?
    /** The folder path. */
    public var pathParts: JSONValue?
    /** The folder start index. */
    public var startIndex: Int?
    /** The number of folder elements. */
    public var count: Int?
    /** The total number of elements in the folder. */
    public var total: Int
    /** The new element index in the folder. */
    public var new: Int?

    public init(files: [FileEntryBaseDto]? = nil, folders: [FileEntryBaseDto]? = nil, current: FolderDtoInteger? = nil, pathParts: JSONValue?, startIndex: Int? = nil, count: Int? = nil, total: Int, new: Int? = nil) {
        self.files = files
        self.folders = folders
        self.current = current
        self.pathParts = pathParts
        self.startIndex = startIndex
        self.count = count
        self.total = total
        self.new = new
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case files
        case folders
        case current
        case pathParts
        case startIndex
        case count
        case total
        case new
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(files, forKey: .files)
        try container.encodeIfPresent(folders, forKey: .folders)
        try container.encodeIfPresent(current, forKey: .current)
        try container.encode(pathParts, forKey: .pathParts)
        try container.encodeIfPresent(startIndex, forKey: .startIndex)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encode(total, forKey: .total)
        try container.encodeIfPresent(new, forKey: .new)
    }
}

