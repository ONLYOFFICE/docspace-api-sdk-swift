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

/** The file editing history data. */
public struct EditHistoryDataDto: Sendable, Codable, Hashable {

    /** The URL address of the file with the document changes data. */
    public var changesUrl: String?
    /** The document identifier used to unambiguously identify the document file. */
    public var key: String?
    public var previous: EditHistoryUrl?
    /** The encrypted signature added to the parameter in the form of a token. */
    public var token: String?
    /** The URL address of the current document version. */
    public var url: String?
    /** The document version number. */
    public var version: Int
    /** The document extension. */
    public var fileType: String?

    public init(changesUrl: String? = nil, key: String?, previous: EditHistoryUrl? = nil, token: String? = nil, url: String?, version: Int, fileType: String?) {
        self.changesUrl = changesUrl
        self.key = key
        self.previous = previous
        self.token = token
        self.url = url
        self.version = version
        self.fileType = fileType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case changesUrl
        case key
        case previous
        case token
        case url
        case version
        case fileType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(changesUrl, forKey: .changesUrl)
        try container.encode(key, forKey: .key)
        try container.encodeIfPresent(previous, forKey: .previous)
        try container.encodeIfPresent(token, forKey: .token)
        try container.encode(url, forKey: .url)
        try container.encode(version, forKey: .version)
        try container.encode(fileType, forKey: .fileType)
    }
}

