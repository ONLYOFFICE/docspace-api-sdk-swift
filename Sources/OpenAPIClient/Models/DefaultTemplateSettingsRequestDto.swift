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

/** The document to use as the blank the portal creates for one extension. */
public struct DefaultTemplateSettingsRequestDto: Sendable, Codable, Hashable {

    public var selectedFile: DefaultTemplateSettingsRequestDtoSelectedFile
    /** The extension the blank is set for, written in lower case with the leading dot. Only the extensions the  portal's built-in template set covers are accepted, and `GET api/2.0/files/settings/defaulttemplate` returns  exactly that list; an extension outside it leaves the settings unchanged instead of failing. */
    public var fileExtension: String?

    public init(selectedFile: DefaultTemplateSettingsRequestDtoSelectedFile, fileExtension: String?) {
        self.selectedFile = selectedFile
        self.fileExtension = fileExtension
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case selectedFile
        case fileExtension
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(selectedFile, forKey: .selectedFile)
        try container.encode(fileExtension, forKey: .fileExtension)
    }
}

