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

    /** How this document is named when another spreadsheet refers to it. Send it back as it stands to resolve the  reference again. */
    public var referenceData: FileReferenceData?
    /** Filled in when the reference resolved to nothing; the rest of the descriptor is then empty and must not be  handed to the editors. */
    public var error: String?
    /** The title of the document the reference resolved to. */
    public var path: String?
    /** Where the content is fetched from. It is addressed to the host the document service can reach, which on a  deployment with a private editor network is not the address a browser should follow. */
    public var url: String?
    /** The format the content is in, without the leading dot. */
    public var fileType: String?
    /** Identifies the exact revision to the editors: two clients that receive the same key read the same co-editing  session, and the key changes as soon as the document is saved. */
    public var key: String?
    /** The address of the document in the portal web editor - the link to put in front of a person, unlike the  download address above. */
    public var link: String?
    /** Signs this descriptor so that the editors can trust it. It stays empty on a portal that has no signature  secret configured for the document service. */
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

