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

/** The file operation information. */
public struct FileOperationDto: Sendable, Codable, Hashable {

    /** The file operation ID. */
    public var id: String?
    public var operation: FileOperationType
    /** The file operation progress in percentage. */
    public var progress: Int
    /** The file operation error message. */
    public var error: String?
    /** The file operation processing status. */
    public var processed: String?
    /** Specifies if the file operation is finished or not. */
    public var finished: Bool
    /** The file operation URL. */
    public var url: String?
    /** The list of files of the file operation. */
    public var files: [FileEntryBaseDto]?
    /** The list of folders of the file operation. */
    public var folders: [FileEntryBaseDto]?
    public var status: DistributedTaskStatus?

    public init(id: String?, operation: FileOperationType, progress: Int, error: String?, processed: String?, finished: Bool, url: String? = nil, files: [FileEntryBaseDto]? = nil, folders: [FileEntryBaseDto]? = nil, status: DistributedTaskStatus? = nil) {
        self.id = id
        self.operation = operation
        self.progress = progress
        self.error = error
        self.processed = processed
        self.finished = finished
        self.url = url
        self.files = files
        self.folders = folders
        self.status = status
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case operation = "Operation"
        case progress
        case error
        case processed
        case finished
        case url
        case files
        case folders
        case status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(operation, forKey: .operation)
        try container.encode(progress, forKey: .progress)
        try container.encode(error, forKey: .error)
        try container.encode(processed, forKey: .processed)
        try container.encode(finished, forKey: .finished)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(files, forKey: .files)
        try container.encodeIfPresent(folders, forKey: .folders)
        try container.encodeIfPresent(status, forKey: .status)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension FileOperationDto: Identifiable {}
