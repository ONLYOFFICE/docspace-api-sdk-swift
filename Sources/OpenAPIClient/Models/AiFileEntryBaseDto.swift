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

/** The file entry information. */
public struct AiFileEntryBaseDto: Sendable, Codable, Hashable {

    /** The file entry title. */
    public var title: String?
    /** The access rights to the file entry. */
    public var access: AiFileShare?
    /** Provides information about the employee who shared the file or folder. */
    public var sharedBy: AiEmployeeDto?
    /** The information about the employee who owns the file entry. */
    public var ownedBy: AiEmployeeDto?
    /** Specifies if the file entry is shared via link or not. */
    public var shared: Bool?
    /** Specifies if the file entry is shared for user or not. */
    public var sharedForUser: Bool?
    /** Specifies if the file entry is shared via a public (non-internal) external link. */
    public var sharedExternal: Bool?
    /** Indicates whether the parent entity is shared. */
    public var parentShared: Bool?
    /** The short Web URL. */
    public var shortWebUrl: String?
    /** The creation date and time of the file entry. */
    public var created: Date?
    /** The file entry author. */
    public var createdBy: AiEmployeeDto?
    /** The last date and time when the file entry was updated. */
    public var updated: Date?
    /** The date and time when the file entry will be automatically deleted. */
    public var autoDelete: Date?
    /** The root folder type of the file entry. */
    public var rootFolderType: AiFolderType?
    /** The parent room type of the file entry. */
    public var parentRoomType: AiFolderType?
    /** The user who updated the file entry. */
    public var updatedBy: AiEmployeeDto?
    /** Specifies if the file entry provider is specified or not. */
    public var providerItem: Bool?
    /** The provider key of the file entry. */
    public var providerKey: String?
    /** The provider ID of the file entry. */
    public var providerId: Int?
    /** The order of the file entry. */
    public var order: String?
    /** Specifies if the file is a favorite or not. */
    public var isFavorite: Bool?
    /** The file entry type. */
    public var fileEntryType: AiFileEntryType?

    public init(title: String? = nil, access: AiFileShare? = nil, sharedBy: AiEmployeeDto? = nil, ownedBy: AiEmployeeDto? = nil, shared: Bool? = nil, sharedForUser: Bool? = nil, sharedExternal: Bool? = nil, parentShared: Bool? = nil, shortWebUrl: String? = nil, created: Date? = nil, createdBy: AiEmployeeDto? = nil, updated: Date? = nil, autoDelete: Date? = nil, rootFolderType: AiFolderType? = nil, parentRoomType: AiFolderType? = nil, updatedBy: AiEmployeeDto? = nil, providerItem: Bool? = nil, providerKey: String? = nil, providerId: Int? = nil, order: String? = nil, isFavorite: Bool? = nil, fileEntryType: AiFileEntryType? = nil) {
        self.title = title
        self.access = access
        self.sharedBy = sharedBy
        self.ownedBy = ownedBy
        self.shared = shared
        self.sharedForUser = sharedForUser
        self.sharedExternal = sharedExternal
        self.parentShared = parentShared
        self.shortWebUrl = shortWebUrl
        self.created = created
        self.createdBy = createdBy
        self.updated = updated
        self.autoDelete = autoDelete
        self.rootFolderType = rootFolderType
        self.parentRoomType = parentRoomType
        self.updatedBy = updatedBy
        self.providerItem = providerItem
        self.providerKey = providerKey
        self.providerId = providerId
        self.order = order
        self.isFavorite = isFavorite
        self.fileEntryType = fileEntryType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case access
        case sharedBy
        case ownedBy
        case shared
        case sharedForUser
        case sharedExternal
        case parentShared
        case shortWebUrl
        case created
        case createdBy
        case updated
        case autoDelete
        case rootFolderType
        case parentRoomType
        case updatedBy
        case providerItem
        case providerKey
        case providerId
        case order
        case isFavorite
        case fileEntryType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(access, forKey: .access)
        try container.encodeIfPresent(sharedBy, forKey: .sharedBy)
        try container.encodeIfPresent(ownedBy, forKey: .ownedBy)
        try container.encodeIfPresent(shared, forKey: .shared)
        try container.encodeIfPresent(sharedForUser, forKey: .sharedForUser)
        try container.encodeIfPresent(sharedExternal, forKey: .sharedExternal)
        try container.encodeIfPresent(parentShared, forKey: .parentShared)
        try container.encodeIfPresent(shortWebUrl, forKey: .shortWebUrl)
        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(createdBy, forKey: .createdBy)
        try container.encodeIfPresent(updated, forKey: .updated)
        try container.encodeIfPresent(autoDelete, forKey: .autoDelete)
        try container.encodeIfPresent(rootFolderType, forKey: .rootFolderType)
        try container.encodeIfPresent(parentRoomType, forKey: .parentRoomType)
        try container.encodeIfPresent(updatedBy, forKey: .updatedBy)
        try container.encodeIfPresent(providerItem, forKey: .providerItem)
        try container.encodeIfPresent(providerKey, forKey: .providerKey)
        try container.encodeIfPresent(providerId, forKey: .providerId)
        try container.encodeIfPresent(order, forKey: .order)
        try container.encodeIfPresent(isFavorite, forKey: .isFavorite)
        try container.encodeIfPresent(fileEntryType, forKey: .fileEntryType)
    }
}

