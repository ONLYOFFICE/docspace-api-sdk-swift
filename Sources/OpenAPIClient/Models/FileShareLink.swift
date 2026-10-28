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

/** A sharing link of a file, a folder or a room, with everything set on it. */
public struct FileShareLink: Sendable, Codable, Hashable {

    /** The identifier of the link, the one to send back as `linkId` to change or delete it. */
    public var id: UUID?
    /** The name the link is listed under, which its author is free to choose and to leave empty. */
    public var title: String?
    /** The shortened address to hand out. Opening it is what turns the link into access; the address stays the same  while the link exists. */
    public var shareLink: String?
    /** The moment the link stops working, written with the offset of the portal time zone. Null when the link was  left without an end. */
    public var expirationDate: ApiDateTime?
    /** Which of the two jobs the link does: letting somebody into the room as a member, or handing out the entry  itself. The counters of uses are filled in for the first kind only. */
    public var linkType: LinkType?
    /** The password a visitor has to send before the link resolves, readable only by those who may manage the link.  Empty when the link asks for none. */
    public var password: String?
    /** Whether visitors coming through this link may only read the entry in the editor and not download or print it. */
    public var denyDownload: Bool?
    /** Whether the moment in `expirationDate` has already passed, which leaves the link in place but refuses  everybody who opens it. */
    public var isExpired: Bool?
    /** Whether this is the one link the entry always keeps: a public or a form-filling room is given it at creation,  and deleting it there only makes a new one. */
    public var primary: Bool?
    /** Whether the visitor has to sign in to the portal before the link resolves, as opposed to it being open to  anybody who has the address. */
    public var _internal: Bool?
    /** The key that stands for this link in the calls that resolve it, such as `GET api/2.0/files/share/{key}`. It is  filled in for links that hand out the entry, and empty for the ones that invite into a room. */
    public var requestToken: String?
    /** How many accounts may still join the room through this invitation link in total. Null on a link that hands out  the entry, where nothing is counted. */
    public var maxUseCount: Int?
    /** How many accounts have already joined through this invitation link. Once it reaches `maxUseCount` the link  stops letting anybody else in. Null on a link that hands out the entry. */
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
