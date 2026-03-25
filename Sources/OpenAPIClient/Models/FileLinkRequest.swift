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

/** The external link request parameters. */
public struct FileLinkRequest: Sendable, Codable, Hashable {

    public static let titleRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let passwordRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** The external link ID. */
    public var linkId: UUID?
    public var access: FileShare?
    public var expirationDate: ApiDateTime?
    /** The link name. */
    public var title: String?
    /** The link scope, whether it is internal or not. */
    public var _internal: Bool?
    /** Specifies whether the file link is primary or not. */
    public var primary: Bool?
    /** Specifies whether to deny downloading the file or not. */
    public var denyDownload: Bool?
    /** Password for access via link. */
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

