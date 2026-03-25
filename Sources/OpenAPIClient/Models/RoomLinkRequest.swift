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

/** The room link parameters. */
public struct RoomLinkRequest: Sendable, Codable, Hashable {

    public static let titleRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let passwordRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let maxUseCountRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 1000, exclusiveMaximum: false, multipleOf: nil)
    /** The room link ID. */
    public var linkId: UUID?
    public var access: FileShare?
    public var expirationDate: ApiDateTime?
    /** The link scope, whether it is internal or not. */
    public var _internal: Bool?
    /** The link name. */
    public var title: String?
    public var linkType: LinkType?
    /** The link password. */
    public var password: String?
    /** Specifies if downloading the file from the link is disabled or not. */
    public var denyDownload: Bool?
    /** The maximum number of times the invitation link can be used. */
    public var maxUseCount: Int?
    /** The current number of times the invitation link has been used. */
    public var currentUseCount: Int?

    public init(linkId: UUID? = nil, access: FileShare? = nil, expirationDate: ApiDateTime? = nil, _internal: Bool? = nil, title: String? = nil, linkType: LinkType? = nil, password: String? = nil, denyDownload: Bool? = nil, maxUseCount: Int? = nil, currentUseCount: Int? = nil) {
        self.linkId = linkId
        self.access = access
        self.expirationDate = expirationDate
        self._internal = _internal
        self.title = title
        self.linkType = linkType
        self.password = password
        self.denyDownload = denyDownload
        self.maxUseCount = maxUseCount
        self.currentUseCount = currentUseCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case linkId
        case access
        case expirationDate
        case _internal = "internal"
        case title
        case linkType
        case password
        case denyDownload
        case maxUseCount
        case currentUseCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(linkId, forKey: .linkId)
        try container.encodeIfPresent(access, forKey: .access)
        try container.encodeIfPresent(expirationDate, forKey: .expirationDate)
        try container.encodeIfPresent(_internal, forKey: ._internal)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(linkType, forKey: .linkType)
        try container.encodeIfPresent(password, forKey: .password)
        try container.encodeIfPresent(denyDownload, forKey: .denyDownload)
        try container.encodeIfPresent(maxUseCount, forKey: .maxUseCount)
        try container.encodeIfPresent(currentUseCount, forKey: .currentUseCount)
    }
}

