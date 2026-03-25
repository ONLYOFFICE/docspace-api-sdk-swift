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

/** The upload session response parameters. */
public struct UploadSessionResponseDtoInteger: Sendable, Codable, Hashable {

    /** The upload session ID. */
    public var id: Int?
    /** The folder ID where the file is being uploaded. */
    public var folderId: Int?
    /** The file version number. */
    public var version: Int?
    /** The file title. */
    public var title: String?
    /** The third-party provider key. */
    public var providerKey: String?
    /** Specifies whether the file has been uploaded. */
    public var uploaded: Bool?
    public var file: FileDtoInteger?

    public init(id: Int? = nil, folderId: Int? = nil, version: Int? = nil, title: String? = nil, providerKey: String? = nil, uploaded: Bool? = nil, file: FileDtoInteger? = nil) {
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
extension UploadSessionResponseDtoInteger: Identifiable {}
