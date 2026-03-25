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

/** The file link properties. */
public struct FileLink: Sendable, Codable, Hashable {

    /** The type of the file for the source viewed or edited document. */
    public var filetype: String?
    /** The encrypted signature added to the config in the form of a token. */
    public var token: String?
    /** The absolute URL where the source viewed or edited document is stored. */
    public var url: String?

    public init(filetype: String?, token: String? = nil, url: String?) {
        self.filetype = filetype
        self.token = token
        self.url = url
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case filetype
        case token
        case url
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(filetype, forKey: .filetype)
        try container.encodeIfPresent(token, forKey: .token)
        try container.encode(url, forKey: .url)
    }
}

