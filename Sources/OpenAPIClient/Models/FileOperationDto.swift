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

/** One background file operation of the caller, as it stood when the answer was built. */
public struct FileOperationDto: Sendable, Codable, Hashable {

    /** The identifier of the operation, the one to pass to `PUT api/2.0/files/fileops/terminate/{id}` to stop it.  Operations belong to the account that started them, so an identifier of somebody else is never listed here. */
    public var id: String?
    /** What the operation does with the entries, which also decides what else is reported: only a download fills  `url`, and a deletion leaves `files` and `folders` empty. */
    public var operation: FileOperationType
    /** How far the operation has come, from 0 to 100. Reaching 100 only means it stopped; whether it did what it was  asked for is told by `error`. */
    public var progress: Int
    /** The reason the operation could not finish its work, in the language of the request. Empty when nothing went  wrong, which is the only way to tell a successful operation from a failed one. */
    public var error: String?
    /** How many entries the operation has handled so far, written as a decimal number in a string. It counts items,  not percent, and stays behind `progress` on operations that walk into subfolders. */
    public var processed: String?
    /** Whether the operation has stopped running. A finished operation is reported once and then dropped, so the next  read of the operation list no longer contains it. */
    public var finished: Bool
    /** The address the packed archive can be downloaded from once a bulk download has finished. Empty for every other  kind of operation. */
    public var url: String?
    /** The files the operation produced or moved, in the order it wrote them down. Empty while nothing has been  written yet and for a deletion, which reports no entries at all. */
    public var files: [FileEntryBaseDto]?
    /** The folders the operation produced or moved, in the order it wrote them down. Empty while nothing has been  written yet and for a deletion. */
    public var folders: [FileEntryBaseDto]?
    /** The state of the background task behind the operation, which tells a task that was cancelled or that crashed  from one that ran to its end. */
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
