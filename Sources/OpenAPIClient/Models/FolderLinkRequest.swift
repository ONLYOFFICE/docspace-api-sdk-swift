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

/** The external link of a folder, as it is to be created or rewritten. */
public struct FolderLinkRequest: Sendable, Codable, Hashable {

    public static let titleRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let passwordRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** Which link the request addresses: the identifier of an existing link rewrites that link, while an identifier  that is not in use, the empty one included, creates a new link. Take an existing identifier from  `GET api/2.0/files/folder/{id}/links`. */
    public var linkId: UUID?
    /** The rights a visitor following the link is given. The value that grants nothing revokes the link instead of  setting it, and the answer is then empty. */
    public var access: FileShare?
    /** The moment the link stops working, sent as an ISO-8601 stamp. A moment that lies in the past is ignored,  and leaving the field out gives the link no expiry. */
    public var expirationDate: ApiDateTime?
    /** The name the link is listed under for the people who manage the folder; a visitor following it never sees the  name. */
    public var title: String?
    /** The secret a visitor has to enter before the link opens. Leave it out for a link that opens without one; the  secret itself is never given back, only the fact that one is set. */
    public var password: String?
    /** Whether visitors are left with viewing alone: with true downloading and copying through the link are blocked,  with false they are allowed. */
    public var denyDownload: Bool?
    /** Whether the link admits signed-in portal members only: with true a visitor has to sign in before the link  opens, with false anyone holding the address may follow it. */
    public var _internal: Bool?
    /** Whether this link becomes the primary link of the folder, the one the Copy link action of a client hands  out; a folder has one primary link at a time. */
    public var primary: Bool?

    public init(linkId: UUID? = nil, access: FileShare? = nil, expirationDate: ApiDateTime? = nil, title: String? = nil, password: String? = nil, denyDownload: Bool? = nil, _internal: Bool? = nil, primary: Bool? = nil) {
        self.linkId = linkId
        self.access = access
        self.expirationDate = expirationDate
        self.title = title
        self.password = password
        self.denyDownload = denyDownload
        self._internal = _internal
        self.primary = primary
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case linkId
        case access
        case expirationDate
        case title
        case password
        case denyDownload
        case _internal = "internal"
        case primary
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(linkId, forKey: .linkId)
        try container.encodeIfPresent(access, forKey: .access)
        try container.encodeIfPresent(expirationDate, forKey: .expirationDate)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(password, forKey: .password)
        try container.encodeIfPresent(denyDownload, forKey: .denyDownload)
        try container.encodeIfPresent(_internal, forKey: ._internal)
        try container.encodeIfPresent(primary, forKey: .primary)
    }
}

