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

/** Default template setting */
public struct DefaultTemplateItemDto: Sendable, Codable, Hashable {

    /** File id to use as a default template */
    public var selectedFile: Int?
    /** Extension of a default template */
    public var fileExtension: String?
    /** Title of a default template */
    public var fileTitle: String?
    /** Last modified date of a default template */
    public var lastModified: Date?
    /** Filesize (in bytes) of a default template */
    public var fileSize: Int64?
    /** View url of a default template */
    public var viewUrl: String?

    public init(selectedFile: Int? = nil, fileExtension: String?, fileTitle: String? = nil, lastModified: Date? = nil, fileSize: Int64? = nil, viewUrl: String? = nil) {
        self.selectedFile = selectedFile
        self.fileExtension = fileExtension
        self.fileTitle = fileTitle
        self.lastModified = lastModified
        self.fileSize = fileSize
        self.viewUrl = viewUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case selectedFile
        case fileExtension
        case fileTitle
        case lastModified
        case fileSize
        case viewUrl
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(selectedFile, forKey: .selectedFile)
        try container.encode(fileExtension, forKey: .fileExtension)
        try container.encodeIfPresent(fileTitle, forKey: .fileTitle)
        try container.encodeIfPresent(lastModified, forKey: .lastModified)
        try container.encodeIfPresent(fileSize, forKey: .fileSize)
        try container.encodeIfPresent(viewUrl, forKey: .viewUrl)
    }
}

