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

/** The generic file entry information. */
public struct FileEntryDtoString: Sendable, Codable, Hashable {

    /** The file entry title. */
    public var title: String?
    public var access: FileShare?
    public var sharedBy: EmployeeDto?
    public var ownedBy: EmployeeDto?
    /** Specifies if the file entry is shared via link or not. */
    public var shared: Bool?
    /** Specifies if the file entry is shared for user or not. */
    public var sharedForUser: Bool?
    /** Indicates whether the parent entity is shared. */
    public var parentShared: Bool?
    /** The short Web URL. */
    public var shortWebUrl: String?
    public var created: ApiDateTime?
    public var createdBy: EmployeeDto?
    public var updated: ApiDateTime?
    public var autoDelete: ApiDateTime?
    public var rootFolderType: FolderType?
    public var parentRoomType: FolderType?
    public var updatedBy: EmployeeDto?
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
    public var fileEntryType: FileEntryType?
    /** The file entry ID. */
    public var id: String?
    /** The root folder ID of the file entry. */
    public var rootFolderId: String?
    /** The origin ID of the file entry. */
    public var originId: String?
    /** The origin room ID of the file entry. */
    public var originRoomId: String?
    /** The origin title of the file entry. */
    public var originTitle: String?
    /** The origin room title of the file entry. */
    public var originRoomTitle: String?
    /** Specifies if the file entry can be shared or not. */
    public var canShare: Bool?
    public var shareSettings: FileEntryDtoIntegerAllOfShareSettings?
    public var security: FileEntryDtoIntegerAllOfSecurity?
    public var availableShareRights: FileEntryDtoIntegerAllOfAvailableShareRights?
    /** The request token of the file entry. */
    public var requestToken: String?
    /** Specifies if the folder can be accessed via an external link or not. */
    public var external: Bool?
    public var expirationDate: ApiDateTime?
    /** Indicates whether the shareable link associated with the file or folder has expired. */
    public var isLinkExpired: Bool?

    public init(title: String? = nil, access: FileShare? = nil, sharedBy: EmployeeDto? = nil, ownedBy: EmployeeDto? = nil, shared: Bool? = nil, sharedForUser: Bool? = nil, parentShared: Bool? = nil, shortWebUrl: String? = nil, created: ApiDateTime? = nil, createdBy: EmployeeDto? = nil, updated: ApiDateTime? = nil, autoDelete: ApiDateTime? = nil, rootFolderType: FolderType? = nil, parentRoomType: FolderType? = nil, updatedBy: EmployeeDto? = nil, providerItem: Bool? = nil, providerKey: String? = nil, providerId: Int? = nil, order: String? = nil, isFavorite: Bool? = nil, fileEntryType: FileEntryType? = nil, id: String? = nil, rootFolderId: String? = nil, originId: String? = nil, originRoomId: String? = nil, originTitle: String? = nil, originRoomTitle: String? = nil, canShare: Bool? = nil, shareSettings: FileEntryDtoIntegerAllOfShareSettings? = nil, security: FileEntryDtoIntegerAllOfSecurity? = nil, availableShareRights: FileEntryDtoIntegerAllOfAvailableShareRights? = nil, requestToken: String? = nil, external: Bool? = nil, expirationDate: ApiDateTime? = nil, isLinkExpired: Bool? = nil) {
        self.title = title
        self.access = access
        self.sharedBy = sharedBy
        self.ownedBy = ownedBy
        self.shared = shared
        self.sharedForUser = sharedForUser
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
        self.id = id
        self.rootFolderId = rootFolderId
        self.originId = originId
        self.originRoomId = originRoomId
        self.originTitle = originTitle
        self.originRoomTitle = originRoomTitle
        self.canShare = canShare
        self.shareSettings = shareSettings
        self.security = security
        self.availableShareRights = availableShareRights
        self.requestToken = requestToken
        self.external = external
        self.expirationDate = expirationDate
        self.isLinkExpired = isLinkExpired
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case access
        case sharedBy
        case ownedBy
        case shared
        case sharedForUser
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
        case id
        case rootFolderId
        case originId
        case originRoomId
        case originTitle
        case originRoomTitle
        case canShare
        case shareSettings
        case security
        case availableShareRights
        case requestToken
        case external
        case expirationDate
        case isLinkExpired
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
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(rootFolderId, forKey: .rootFolderId)
        try container.encodeIfPresent(originId, forKey: .originId)
        try container.encodeIfPresent(originRoomId, forKey: .originRoomId)
        try container.encodeIfPresent(originTitle, forKey: .originTitle)
        try container.encodeIfPresent(originRoomTitle, forKey: .originRoomTitle)
        try container.encodeIfPresent(canShare, forKey: .canShare)
        try container.encodeIfPresent(shareSettings, forKey: .shareSettings)
        try container.encodeIfPresent(security, forKey: .security)
        try container.encodeIfPresent(availableShareRights, forKey: .availableShareRights)
        try container.encodeIfPresent(requestToken, forKey: .requestToken)
        try container.encodeIfPresent(external, forKey: .external)
        try container.encodeIfPresent(expirationDate, forKey: .expirationDate)
        try container.encodeIfPresent(isLinkExpired, forKey: .isLinkExpired)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension FileEntryDtoString: Identifiable {}
