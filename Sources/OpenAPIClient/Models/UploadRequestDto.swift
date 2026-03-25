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

/** The request parameters for uploading a file. */
public struct UploadRequestDto: Sendable, Codable, Hashable {

    /** The file to be uploaded. */
    public var file: URL?
    public var contentType: ContentType?
    public var contentDisposition: ContentDisposition?
    /** The list of files when specified as multipart/form-data. */
    public var files: [URL]?
    /** Specifies whether to create the new file if it already exists or not. */
    public var createNewIfExist: Bool?
    /** Specifies whether to upload documents in the original formats as well or not. */
    public var storeOriginalFileFlag: Bool?
    /** Specifies whether to keep the file converting status or not. */
    public var keepConvertStatus: Bool?
    /** The request input stream. */
    public var stream: URL?

    public init(file: URL? = nil, contentType: ContentType? = nil, contentDisposition: ContentDisposition? = nil, files: [URL]? = nil, createNewIfExist: Bool? = nil, storeOriginalFileFlag: Bool? = nil, keepConvertStatus: Bool? = nil, stream: URL? = nil) {
        self.file = file
        self.contentType = contentType
        self.contentDisposition = contentDisposition
        self.files = files
        self.createNewIfExist = createNewIfExist
        self.storeOriginalFileFlag = storeOriginalFileFlag
        self.keepConvertStatus = keepConvertStatus
        self.stream = stream
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case file
        case contentType
        case contentDisposition
        case files
        case createNewIfExist
        case storeOriginalFileFlag
        case keepConvertStatus
        case stream
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(file, forKey: .file)
        try container.encodeIfPresent(contentType, forKey: .contentType)
        try container.encodeIfPresent(contentDisposition, forKey: .contentDisposition)
        try container.encodeIfPresent(files, forKey: .files)
        try container.encodeIfPresent(createNewIfExist, forKey: .createNewIfExist)
        try container.encodeIfPresent(storeOriginalFileFlag, forKey: .storeOriginalFileFlag)
        try container.encodeIfPresent(keepConvertStatus, forKey: .keepConvertStatus)
        try container.encodeIfPresent(stream, forKey: .stream)
    }
}

