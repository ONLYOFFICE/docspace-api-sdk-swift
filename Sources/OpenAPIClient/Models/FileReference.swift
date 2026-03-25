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

/** The file reference parameters. */
public struct FileReference: Sendable, Codable, Hashable {

    public var referenceData: FileReferenceData?
    /** The error message text. */
    public var error: String?
    /** The file name or relative path for the formula editor. */
    public var path: String?
    /** The URL address to download the current file. */
    public var url: String?
    /** An extension of the document specified with the url parameter. */
    public var fileType: String?
    /** The unique document identifier used by the service to take the data from the co-editing session. */
    public var key: String?
    /** The file URL. */
    public var link: String?
    /** The encrypted signature added to the parameter in the form of a token. */
    public var token: String?

    public init(referenceData: FileReferenceData? = nil, error: String? = nil, path: String? = nil, url: String? = nil, fileType: String? = nil, key: String? = nil, link: String? = nil, token: String? = nil) {
        self.referenceData = referenceData
        self.error = error
        self.path = path
        self.url = url
        self.fileType = fileType
        self.key = key
        self.link = link
        self.token = token
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case referenceData
        case error
        case path
        case url
        case fileType
        case key
        case link
        case token
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(referenceData, forKey: .referenceData)
        try container.encodeIfPresent(error, forKey: .error)
        try container.encodeIfPresent(path, forKey: .path)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(fileType, forKey: .fileType)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(link, forKey: .link)
        try container.encodeIfPresent(token, forKey: .token)
    }
}

