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

/** The address the content of a file is fetched from, together with the signature that authorises the fetch, as  the document service is handed it. */
public struct FileLink: Sendable, Codable, Hashable {

    /** The format the stored content is in, lower-cased and with the leading dot, which is how the document  service learns how to read the bytes behind the address. It stays empty when the file title carries no  extension at all. */
    public var filetype: String?
    /** Signs the address and the format above so that the document service can trust them. It stays empty on a  portal that has no signature secret configured for the document service, and the address is then meant  to be fetched unsigned. */
    public var token: String?
    /** Where the content is fetched from: the portal download handler, pinned to the revision the file was at  when the address was issued and carrying an authorisation key of limited validity. It is addressed to  the host the document service can reach, which on a deployment with a private editor network is not the  address a browser should follow. */
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

