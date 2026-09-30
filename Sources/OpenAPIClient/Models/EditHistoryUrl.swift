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

/** The address, document key and format of the revision a comparison is made against. */
public struct EditHistoryUrl: Sendable, Codable, Hashable {

    /** The document key of that revision. When the file has no earlier revision the portal generates a fresh key for  the template it falls back to, so the value is not always one an earlier revision ever had. */
    public var key: String?
    /** The address that revision's content is served from. It is meant for the editing service and carries its own  key, which is valid for a limited time. */
    public var url: String?
    /** The format of that revision, as an extension without the leading dot. */
    public var fileType: String?

    public init(key: String? = nil, url: String? = nil, fileType: String? = nil) {
        self.key = key
        self.url = url
        self.fileType = fileType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case key
        case url
        case fileType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(fileType, forKey: .fileType)
    }
}

