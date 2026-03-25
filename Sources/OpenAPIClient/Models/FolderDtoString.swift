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

/** The folder parameters. */
public struct FolderDtoString: Sendable, Codable, Hashable {

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
    /** The parent folder ID of the folder. */
    public var parentId: String?
    /** The number of files that the folder contains. */
    public var filesCount: Int?
    /** The number of folders that the folder contains. */
    public var foldersCount: Int?
    /** Specifies if the folder can be shared or not. */
    public var isShareable: Bool?
    /** The new element index in the folder. */
    public var new: Int?
    /** Specifies if the folder notifications are enabled or not. */
    public var mute: Bool?
    /** The list of tags of the folder. */
    public var tags: [String]?
    public var logo: Logo?
    /** Specifies if the folder is pinned or not. */
    public var pinned: Bool?
    public var roomType: RoomType?
    /** Specifies if the folder is private or not. */
    public var _private: Bool?
    /** Specifies if the folder is indexed or not. */
    public var indexing: Bool?
    /** Specifies if the folder can be downloaded or not. */
    public var denyDownload: Bool?
    public var lifetime: RoomDataLifetimeDto?
    public var watermark: WatermarkDto?
    public var type: FolderType?
    /** Specifies if the folder is placed in the room or not. */
    public var inRoom: Bool?
    /** The folder quota limit. */
    public var quotaLimit: Int64?
    /** Specifies if the folder room has a custom quota or not. */
    public var isCustomQuota: Bool?
    /** How much folder space is used (counter). */
    public var usedSpace: Int64?
    /** Specifies if the folder is password protected or not. */
    public var passwordProtected: Bool?
    /** Specifies if an external link to the folder is expired or not. */
    @available(*, deprecated, message: "This property is deprecated.")
    public var expired: Bool?
    public var chatSettings: ChatSettingsDto?
    public var rootRoomType: RoomType?
    /** Specifies whether to save form data as XLSX file. */
    public var saveFormAsXLSX: Bool?
    /** Specifies whether to send form data to external database. */
    public var sendFormToExternalDB: Bool?

    public init(title: String? = nil, access: FileShare? = nil, sharedBy: EmployeeDto? = nil, ownedBy: EmployeeDto? = nil, shared: Bool? = nil, sharedForUser: Bool? = nil, parentShared: Bool? = nil, shortWebUrl: String? = nil, created: ApiDateTime? = nil, createdBy: EmployeeDto? = nil, updated: ApiDateTime? = nil, autoDelete: ApiDateTime? = nil, rootFolderType: FolderType? = nil, parentRoomType: FolderType? = nil, updatedBy: EmployeeDto? = nil, providerItem: Bool? = nil, providerKey: String? = nil, providerId: Int? = nil, order: String? = nil, isFavorite: Bool? = nil, fileEntryType: FileEntryType? = nil, id: String? = nil, rootFolderId: String? = nil, originId: String? = nil, originRoomId: String? = nil, originTitle: String? = nil, originRoomTitle: String? = nil, canShare: Bool? = nil, shareSettings: FileEntryDtoIntegerAllOfShareSettings? = nil, security: FileEntryDtoIntegerAllOfSecurity? = nil, availableShareRights: FileEntryDtoIntegerAllOfAvailableShareRights? = nil, requestToken: String? = nil, external: Bool? = nil, expirationDate: ApiDateTime? = nil, isLinkExpired: Bool? = nil, parentId: String? = nil, filesCount: Int? = nil, foldersCount: Int? = nil, isShareable: Bool? = nil, new: Int? = nil, mute: Bool? = nil, tags: [String]? = nil, logo: Logo? = nil, pinned: Bool? = nil, roomType: RoomType? = nil, _private: Bool? = nil, indexing: Bool? = nil, denyDownload: Bool? = nil, lifetime: RoomDataLifetimeDto? = nil, watermark: WatermarkDto? = nil, type: FolderType? = nil, inRoom: Bool? = nil, quotaLimit: Int64? = nil, isCustomQuota: Bool? = nil, usedSpace: Int64? = nil, passwordProtected: Bool? = nil, expired: Bool? = nil, chatSettings: ChatSettingsDto? = nil, rootRoomType: RoomType? = nil, saveFormAsXLSX: Bool? = nil, sendFormToExternalDB: Bool? = nil) {
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
        self.parentId = parentId
        self.filesCount = filesCount
        self.foldersCount = foldersCount
        self.isShareable = isShareable
        self.new = new
        self.mute = mute
        self.tags = tags
        self.logo = logo
        self.pinned = pinned
        self.roomType = roomType
        self._private = _private
        self.indexing = indexing
        self.denyDownload = denyDownload
        self.lifetime = lifetime
        self.watermark = watermark
        self.type = type
        self.inRoom = inRoom
        self.quotaLimit = quotaLimit
        self.isCustomQuota = isCustomQuota
        self.usedSpace = usedSpace
        self.passwordProtected = passwordProtected
        self.expired = expired
        self.chatSettings = chatSettings
        self.rootRoomType = rootRoomType
        self.saveFormAsXLSX = saveFormAsXLSX
        self.sendFormToExternalDB = sendFormToExternalDB
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
        case parentId
        case filesCount
        case foldersCount
        case isShareable
        case new
        case mute
        case tags
        case logo
        case pinned
        case roomType
        case _private = "private"
        case indexing
        case denyDownload
        case lifetime
        case watermark
        case type
        case inRoom
        case quotaLimit
        case isCustomQuota
        case usedSpace
        case passwordProtected
        case expired
        case chatSettings
        case rootRoomType
        case saveFormAsXLSX
        case sendFormToExternalDB
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
        try container.encodeIfPresent(parentId, forKey: .parentId)
        try container.encodeIfPresent(filesCount, forKey: .filesCount)
        try container.encodeIfPresent(foldersCount, forKey: .foldersCount)
        try container.encodeIfPresent(isShareable, forKey: .isShareable)
        try container.encodeIfPresent(new, forKey: .new)
        try container.encodeIfPresent(mute, forKey: .mute)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(logo, forKey: .logo)
        try container.encodeIfPresent(pinned, forKey: .pinned)
        try container.encodeIfPresent(roomType, forKey: .roomType)
        try container.encodeIfPresent(_private, forKey: ._private)
        try container.encodeIfPresent(indexing, forKey: .indexing)
        try container.encodeIfPresent(denyDownload, forKey: .denyDownload)
        try container.encodeIfPresent(lifetime, forKey: .lifetime)
        try container.encodeIfPresent(watermark, forKey: .watermark)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(inRoom, forKey: .inRoom)
        try container.encodeIfPresent(quotaLimit, forKey: .quotaLimit)
        try container.encodeIfPresent(isCustomQuota, forKey: .isCustomQuota)
        try container.encodeIfPresent(usedSpace, forKey: .usedSpace)
        try container.encodeIfPresent(passwordProtected, forKey: .passwordProtected)
        try container.encodeIfPresent(expired, forKey: .expired)
        try container.encodeIfPresent(chatSettings, forKey: .chatSettings)
        try container.encodeIfPresent(rootRoomType, forKey: .rootRoomType)
        try container.encodeIfPresent(saveFormAsXLSX, forKey: .saveFormAsXLSX)
        try container.encodeIfPresent(sendFormToExternalDB, forKey: .sendFormToExternalDB)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension FolderDtoString: Identifiable {}
