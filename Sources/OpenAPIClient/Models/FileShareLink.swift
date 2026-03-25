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

/** A shareable link for a file with its configuration and status. */
public struct FileShareLink: Sendable, Codable, Hashable {

    /** The unique identifier of the shared link. */
    public var id: UUID?
    /** The title of the shared content. */
    public var title: String?
    /** The URL for accessing the shared content. */
    public var shareLink: String?
    public var expirationDate: ApiDateTime?
    public var linkType: LinkType?
    /** The password protection for accessing the shared content. */
    public var password: String?
    /** Indicates whether downloading of the shared content is prohibited. */
    public var denyDownload: Bool?
    /** Indicates whether the shared link has expired. */
    public var isExpired: Bool?
    /** Indicates whether this is the primary shared link. */
    public var primary: Bool?
    /** Indicates whether the link is for the internal sharing only. */
    public var _internal: Bool?
    /** The token for validating access requests. */
    public var requestToken: String?
    /** The maximum number of times the invitation link can be used. */
    public var maxUseCount: Int?
    /** The current number of times the invitation link has been used. */
    public var currentUseCount: Int?

    public init(id: UUID? = nil, title: String? = nil, shareLink: String? = nil, expirationDate: ApiDateTime? = nil, linkType: LinkType? = nil, password: String? = nil, denyDownload: Bool? = nil, isExpired: Bool? = nil, primary: Bool? = nil, _internal: Bool? = nil, requestToken: String? = nil, maxUseCount: Int? = nil, currentUseCount: Int? = nil) {
        self.id = id
        self.title = title
        self.shareLink = shareLink
        self.expirationDate = expirationDate
        self.linkType = linkType
        self.password = password
        self.denyDownload = denyDownload
        self.isExpired = isExpired
        self.primary = primary
        self._internal = _internal
        self.requestToken = requestToken
        self.maxUseCount = maxUseCount
        self.currentUseCount = currentUseCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case shareLink
        case expirationDate
        case linkType
        case password
        case denyDownload
        case isExpired
        case primary
        case _internal = "internal"
        case requestToken
        case maxUseCount
        case currentUseCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(shareLink, forKey: .shareLink)
        try container.encodeIfPresent(expirationDate, forKey: .expirationDate)
        try container.encodeIfPresent(linkType, forKey: .linkType)
        try container.encodeIfPresent(password, forKey: .password)
        try container.encodeIfPresent(denyDownload, forKey: .denyDownload)
        try container.encodeIfPresent(isExpired, forKey: .isExpired)
        try container.encodeIfPresent(primary, forKey: .primary)
        try container.encodeIfPresent(_internal, forKey: ._internal)
        try container.encodeIfPresent(requestToken, forKey: .requestToken)
        try container.encodeIfPresent(maxUseCount, forKey: .maxUseCount)
        try container.encodeIfPresent(currentUseCount, forKey: .currentUseCount)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension FileShareLink: Identifiable {}
