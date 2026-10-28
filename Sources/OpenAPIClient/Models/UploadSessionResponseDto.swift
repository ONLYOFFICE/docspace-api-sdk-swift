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

/** How far a chunked upload has got, and the file it produced once the last byte has arrived. */
public struct UploadSessionResponseDto: Sendable, Codable, Hashable {

    /** The file the parts are being written into. An upload that took over a file of the same title carries it from  the start, while an upload that creates a new file has nothing to name yet and reports 0 until the answer that  sets `uploaded` to true. */
    public var id: Int?
    /** The folder receiving the file. It is the folder the upload was reserved against, or the sub-folder created for  it when the reservation declared a relative path. */
    public var folderId: Int?
    /** The revision the content is being written as: 1 for a file that did not exist, the next number when the upload  took over a file of the same title, and the unchanged current number for an upload opened over an existing  file, which replaces its content in place. */
    public var version: Int?
    /** The title the file is stored under, after characters a title cannot hold were replaced and, where a second  copy was asked for, a numeric suffix was added - so it can differ from the name that was sent. */
    public var title: String?
    /** The third-party service holding the destination, such as `GoogleDrive` or `OneDrive`, and null for a folder  stored on the portal itself. */
    public var providerKey: String?
    /** False while bytes are still missing, when the answer only reports progress; true in the answer that reports  the stored file, which is also the answer that arrives with 201. */
    public var uploaded: Bool?
    /** The file as it stands. It is filled in both answers, but while `uploaded` is false it describes a file that  has not been written yet, so its identifier, size and links are only worth reading once that flag turns true. */
    public var file: FileDto?

    public init(id: Int? = nil, folderId: Int? = nil, version: Int? = nil, title: String? = nil, providerKey: String? = nil, uploaded: Bool? = nil, file: FileDto? = nil) {
        self.id = id
        self.folderId = folderId
        self.version = version
        self.title = title
        self.providerKey = providerKey
        self.uploaded = uploaded
        self.file = file
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case folderId
        case version
        case title
        case providerKey
        case uploaded
        case file
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(folderId, forKey: .folderId)
        try container.encodeIfPresent(version, forKey: .version)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(providerKey, forKey: .providerKey)
        try container.encodeIfPresent(uploaded, forKey: .uploaded)
        try container.encodeIfPresent(file, forKey: .file)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension UploadSessionResponseDto: Identifiable {}
