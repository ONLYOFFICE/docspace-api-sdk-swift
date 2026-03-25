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

/** The external sharing information and validation data. */
public struct ExternalShareDto: Sendable, Codable, Hashable {

    public var status: Status
    /** The external data ID. */
    public var id: String?
    /** The external data title. */
    public var title: String?
    public var type: FileEntryType?
    /** The tenant ID. */
    public var tenantId: Int
    /** The unique identifier of the shared entity. */
    public var entityId: String?
    /** The title of the shared entity. */
    public var entityTitle: String?
    public var entityType: FileEntryType?
    /** Indicates whether the entity represents a room. */
    public var isRoom: Bool?
    /** Specifies whether to share the external data or not. */
    public var shared: Bool
    /** The link ID of the external data. */
    public var linkId: UUID
    /** Specifies whether the user is authenticated or not. */
    public var isAuthenticated: Bool
    /** The room ID of the external data. */
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
