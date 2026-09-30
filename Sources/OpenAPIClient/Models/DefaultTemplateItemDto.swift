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

/** The blank document configured for one extension. */
public struct DefaultTemplateItemDto: Sendable, Codable, Hashable {

    /** The copy stored in the portal that serves as the blank for this extension. A null means no custom blank has  been chosen and new documents start from the portal's built-in one; the other fields of the entry are then  empty as well. */
    public var selectedFile: Int?
    /** The extension the entry describes, in lower case with the leading dot. It is the value to send back when this  blank is replaced or reset. */
    public var fileExtension: String?
    /** The name the custom blank was copied under, useful for showing which document was chosen. Empty while the  built-in blank is in use. */
    public var fileTitle: String?
    /** When the custom blank was last changed, in the time zone of the portal. Null while the built-in blank is in  use. */
    public var lastModified: Date?
    /** The size of the custom blank in bytes. Null while the built-in blank is in use. */
    public var fileSize: Int64?
    /** The address the custom blank can be downloaded from, already carrying the access key of the calling account.  Empty while the built-in blank is in use. */
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

