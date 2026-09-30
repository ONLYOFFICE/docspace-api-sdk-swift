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

/** The outcome of validating an external share link and the entry it points at. */
public struct ExternalShareDto: Sendable, Codable, Hashable {

    /** How validating the link went. It is the first field to read: a refused link is reported here with the answer  still arriving as a success. A link that resolved describes both the entry and the link, one that is waiting  for its password describes only the entry, and one that failed outright leaves the rest of the object empty. */
    public var status: Status
    /** The identifier of the room, folder or file the link points at, always rendered as a string even where the  portal stores it as a number. It is null when the link could not be resolved. */
    public var id: String?
    /** The title of the entry the link points at, suitable for showing to the visitor before they are let in. It is  null when the link could not be resolved. */
    public var title: String?
    /** Whether the link points at a folder - a room counts as one - or at a single file. It is null when the link  could not be resolved. */
    public var type: FileEntryType?
    /** The portal the link belongs to, which matters for a client that works with more than one. It stays 0 for a  link that did not resolve. */
    public var tenantId: Int
    /** The identifier of the entry that was asked about through the request's file or folder parameter, echoed back  once it was found under the link's target. It is null when nothing was asked about, or when the entry lies  outside what the link opens. */
    public var entityId: String?
    /** The title of that entry, null under the same conditions as its identifier. */
    public var entityTitle: String?
    /** Whether that entry is a folder or a file, null under the same conditions as its identifier. */
    public var entityType: FileEntryType?
    /** True when the link opens a whole room rather than one entry inside it. It is null for a link to a file and for  a link that did not resolve. */
    public var isRoom: Bool?
    /** True when the entry now sits in the calling account's own lists - it was already shared with that account, or  resolving the link has just put it there. It stays false for a visitor browsing without an account, who  reaches the entry through the link alone. */
    public var shared: Bool
    /** The link the token belongs to, which is also the subject under which the link appears among the sharing rights  of the entry. It is an empty identifier when the link did not resolve. */
    public var linkId: UUID
    /** Whether the request carried a signed-in account. It says nothing about that account's rights on the entry, so  it must not be read as permission - it is false for every anonymous visitor and true for any member, even one  who is a stranger to the room. */
    public var isAuthenticated: Bool
    /** Whether the signed-in caller already has rights of their own on the room that holds the entry, as opposed to  reaching it through this link. It is false for an anonymous visitor and for a member who has never been  invited. */
    public var isRoomMember: Bool?

    public init(status: Status, id: String? = nil, title: String? = nil, type: FileEntryType? = nil, tenantId: Int, entityId: String? = nil, entityTitle: String? = nil, entityType: FileEntryType? = nil, isRoom: Bool? = nil, shared: Bool, linkId: UUID, isAuthenticated: Bool, isRoomMember: Bool? = nil) {
        self.status = status
        self.id = id
        self.title = title
        self.type = type
        self.tenantId = tenantId
        self.entityId = entityId
        self.entityTitle = entityTitle
        self.entityType = entityType
        self.isRoom = isRoom
        self.shared = shared
        self.linkId = linkId
        self.isAuthenticated = isAuthenticated
        self.isRoomMember = isRoomMember
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case status
        case id
        case title
        case type
        case tenantId
        case entityId
        case entityTitle
        case entityType
        case isRoom
        case shared
        case linkId
        case isAuthenticated
        case isRoomMember
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(status, forKey: .status)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encode(tenantId, forKey: .tenantId)
        try container.encodeIfPresent(entityId, forKey: .entityId)
        try container.encodeIfPresent(entityTitle, forKey: .entityTitle)
        try container.encodeIfPresent(entityType, forKey: .entityType)
        try container.encodeIfPresent(isRoom, forKey: .isRoom)
        try container.encode(shared, forKey: .shared)
        try container.encode(linkId, forKey: .linkId)
        try container.encode(isAuthenticated, forKey: .isAuthenticated)
        try container.encodeIfPresent(isRoomMember, forKey: .isRoomMember)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ExternalShareDto: Identifiable {}
