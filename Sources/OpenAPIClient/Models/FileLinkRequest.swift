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

/** The settings of an external link to a file. */
public struct FileLinkRequest: Sendable, Codable, Hashable {

    public static let titleRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let passwordRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** The link to rewrite, as reported by `GET api/2.0/files/file/{id}/links`. An identifier that is not yet in use,  the empty one included, creates a link instead. */
    public var linkId: UUID?
    /** The rights the link grants to whoever follows it. The value that denies everything revokes the link. */
    public var access: FileShare?
    /** The moment the link stops working, read in the time zone of the portal. A date more than a few years ahead is  rejected as an invalid request; left out, the link does not expire on its own. */
    public var expirationDate: ApiDateTime?
    /** The name the link carries in the sharing list of the file, for the people who manage it; it is not shown to  whoever follows the link. */
    public var title: String?
    /** Who may follow the link: `true` admits only accounts that are signed in to the portal, `false` admits anybody  who has the address. */
    public var _internal: Bool?
    /** Whether this link becomes the primary link of the file - the one the Copy link action of a client hands out.  A file has one primary link at a time. */
    public var primary: Bool?
    /** What a visitor may do with the content: `true` leaves them with viewing in the browser, `false` lets them  download and print it as their rights allow. */
    public var denyDownload: Bool?
    /** The secret a visitor has to type before the file opens; left out, the link opens without one. */
    public var password: String?

    public init(linkId: UUID? = nil, access: FileShare? = nil, expirationDate: ApiDateTime? = nil, title: String? = nil, _internal: Bool? = nil, primary: Bool? = nil, denyDownload: Bool? = nil, password: String? = nil) {
        self.linkId = linkId
        self.access = access
        self.expirationDate = expirationDate
        self.title = title
        self._internal = _internal
        self.primary = primary
        self.denyDownload = denyDownload
        self.password = password
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case linkId
        case access
        case expirationDate
        case title
        case _internal = "internal"
        case primary
        case denyDownload
        case password
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(linkId, forKey: .linkId)
        try container.encodeIfPresent(access, forKey: .access)
        try container.encodeIfPresent(expirationDate, forKey: .expirationDate)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(_internal, forKey: ._internal)
        try container.encodeIfPresent(primary, forKey: .primary)
        try container.encodeIfPresent(denyDownload, forKey: .denyDownload)
        try container.encodeIfPresent(password, forKey: .password)
    }
}

