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

/** Everything an editor needs in order to show what one revision of a file changed. */
public struct EditHistoryDataDto: Sendable, Codable, Hashable {

    /** The address the editor downloads the recorded changes of this revision from. It is filled in only when the  portal has a change record for the revision; without it the revision can be shown as a whole document but not  as a set of changes. */
    public var changesUrl: String?
    /** The document key of the revision being shown, which the editing service uses to identify it and to reuse the  copy it has cached. */
    public var key: String?
    /** The revision this one is compared against. It arrives together with `changesUrl`, and when the revision shown  is the first one the file ever had, it points at the blank template the file was created from instead of at an  earlier revision. */
    public var previous: EditHistoryUrl?
    /** The signature over the whole answer, as a JSON Web Token that the editing service verifies before it accepts  the addresses in it. Empty when the portal runs without a document-service secret. */
    public var token: String?
    /** The address the content of this revision is served from. It is meant for the editing service and carries its  own key, which is valid for a limited time. */
    public var url: String?
    /** Echoes the revision that was asked for, so it reports 0 when the request named no version and the current  revision was taken. */
    public var version: Int
    /** The format of the revision being shown, as an extension without the leading dot. */
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

