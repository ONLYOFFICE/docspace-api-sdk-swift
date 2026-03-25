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

/** The file parameters. */
public struct FileDtoInteger: Sendable, Codable, Hashable {

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
    public var id: Int?
    /** The root folder ID of the file entry. */
    public var rootFolderId: Int?
    /** The origin ID of the file entry. */
    public var originId: Int?
    /** The origin room ID of the file entry. */
    public var originRoomId: Int?
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
    /** The folder ID where the file is located. */
    public var folderId: Int?
    /** The file version. */
    public var version: Int?
    /** The version group of the file. */
    public var versionGroup: Int?
    /** The content length of the file. */
    public var contentLength: String?
    /** The pure content length of the file. */
    public var pureContentLength: Int64?
    public var fileStatus: FileStatus?
    /** The list of users editing the file. */
    public var editingBy: [String: String]?
    /** Specifies if the file is muted or not. */
    public var mute: Bool?
    /** The URL link to view the file. */
    public var viewUrl: String?
    /** The Web URL link to the file. */
    public var webUrl: String?
    public var fileType: FileType?
    /** The file extension. */
    public var fileExst: String?
    /** The comment to the file. */
    public var comment: String?
    /** Specifies if the file is encrypted or not. */
    public var encrypted: Bool?
    /** The thumbnail URL of the file. */
    public var thumbnailUrl: String?
    public var thumbnailStatus: Thumbnail?
    /** Specifies if the file is locked or not. */
    public var locked: Bool?
    /** The user ID of the person who locked the file. */
    public var lockedBy: String?
    /** Specifies if the file has a draft or not. */
    public var hasDraft: Bool?
    public var formFillingStatus: FormFillingStatus?
    /** Specifies if the file is a form or not. */
    public var isForm: Bool?
    /** Specifies if the Custom Filter editing mode is enabled for a file or not. */
    public var customFilterEnabled: Bool?
    /** The name of the user who enabled a Custom Filter editing mode for a file. */
    public var customFilterEnabledBy: String?
    /** Specifies if the filling has started or not. */
    public var startFilling: Bool?
    /** Specifies if the form filling has started but the file is still being saved by the document editor. Filling and editing are not allowed. */
    public var isFillingPreparing: Bool?
    /** The InProcess folder ID of the file. */
    public var inProcessFolderId: Int?
    /** The InProcess folder title of the file. */
    public var inProcessFolderTitle: String?
    public var draftLocation: DraftLocationInteger?
    public var viewAccessibility: FileDtoIntegerAllOfViewAccessibility?
    public var lastOpened: ApiDateTime?
    public var expired: ApiDateTime?
    public var vectorizationStatus: VectorizationStatus?
    public var dimensions: Size?

    public init(title: String? = nil, access: FileShare? = nil, sharedBy: EmployeeDto? = nil, ownedBy: EmployeeDto? = nil, shared: Bool? = nil, sharedForUser: Bool? = nil, parentShared: Bool? = nil, shortWebUrl: String? = nil, created: ApiDateTime? = nil, createdBy: EmployeeDto? = nil, updated: ApiDateTime? = nil, autoDelete: ApiDateTime? = nil, rootFolderType: FolderType? = nil, parentRoomType: FolderType? = nil, updatedBy: EmployeeDto? = nil, providerItem: Bool? = nil, providerKey: String? = nil, providerId: Int? = nil, order: String? = nil, isFavorite: Bool? = nil, fileEntryType: FileEntryType? = nil, id: Int? = nil, rootFolderId: Int? = nil, originId: Int? = nil, originRoomId: Int? = nil, originTitle: String? = nil, originRoomTitle: String? = nil, canShare: Bool? = nil, shareSettings: FileEntryDtoIntegerAllOfShareSettings? = nil, security: FileEntryDtoIntegerAllOfSecurity? = nil, availableShareRights: FileEntryDtoIntegerAllOfAvailableShareRights? = nil, requestToken: String? = nil, external: Bool? = nil, expirationDate: ApiDateTime? = nil, isLinkExpired: Bool? = nil, folderId: Int? = nil, version: Int? = nil, versionGroup: Int? = nil, contentLength: String? = nil, pureContentLength: Int64? = nil, fileStatus: FileStatus? = nil, editingBy: [String: String]? = nil, mute: Bool? = nil, viewUrl: String? = nil, webUrl: String? = nil, fileType: FileType? = nil, fileExst: String? = nil, comment: String? = nil, encrypted: Bool? = nil, thumbnailUrl: String? = nil, thumbnailStatus: Thumbnail? = nil, locked: Bool? = nil, lockedBy: String? = nil, hasDraft: Bool? = nil, formFillingStatus: FormFillingStatus? = nil, isForm: Bool? = nil, customFilterEnabled: Bool? = nil, customFilterEnabledBy: String? = nil, startFilling: Bool? = nil, isFillingPreparing: Bool? = nil, inProcessFolderId: Int? = nil, inProcessFolderTitle: String? = nil, draftLocation: DraftLocationInteger? = nil, viewAccessibility: FileDtoIntegerAllOfViewAccessibility? = nil, lastOpened: ApiDateTime? = nil, expired: ApiDateTime? = nil, vectorizationStatus: VectorizationStatus? = nil, dimensions: Size? = nil) {
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
        self.folderId = folderId
        self.version = version
        self.versionGroup = versionGroup
        self.contentLength = contentLength
        self.pureContentLength = pureContentLength
        self.fileStatus = fileStatus
        self.editingBy = editingBy
        self.mute = mute
        self.viewUrl = viewUrl
        self.webUrl = webUrl
        self.fileType = fileType
        self.fileExst = fileExst
        self.comment = comment
        self.encrypted = encrypted
        self.thumbnailUrl = thumbnailUrl
        self.thumbnailStatus = thumbnailStatus
        self.locked = locked
        self.lockedBy = lockedBy
        self.hasDraft = hasDraft
        self.formFillingStatus = formFillingStatus
        self.isForm = isForm
        self.customFilterEnabled = customFilterEnabled
        self.customFilterEnabledBy = customFilterEnabledBy
        self.startFilling = startFilling
        self.isFillingPreparing = isFillingPreparing
        self.inProcessFolderId = inProcessFolderId
        self.inProcessFolderTitle = inProcessFolderTitle
        self.draftLocation = draftLocation
        self.viewAccessibility = viewAccessibility
        self.lastOpened = lastOpened
        self.expired = expired
        self.vectorizationStatus = vectorizationStatus
        self.dimensions = dimensions
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
        case folderId
        case version
        case versionGroup
        case contentLength
        case pureContentLength
        case fileStatus
        case editingBy
        case mute
        case viewUrl
        case webUrl
        case fileType
        case fileExst
        case comment
        case encrypted
        case thumbnailUrl
        case thumbnailStatus
        case locked
        case lockedBy
        case hasDraft
        case formFillingStatus
        case isForm
        case customFilterEnabled
        case customFilterEnabledBy
        case startFilling
        case isFillingPreparing
        case inProcessFolderId
        case inProcessFolderTitle
        case draftLocation
        case viewAccessibility
        case lastOpened
        case expired
        case vectorizationStatus
        case dimensions
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
        try container.encodeIfPresent(folderId, forKey: .folderId)
        try container.encodeIfPresent(version, forKey: .version)
        try container.encodeIfPresent(versionGroup, forKey: .versionGroup)
        try container.encodeIfPresent(contentLength, forKey: .contentLength)
        try container.encodeIfPresent(pureContentLength, forKey: .pureContentLength)
        try container.encodeIfPresent(fileStatus, forKey: .fileStatus)
        try container.encodeIfPresent(editingBy, forKey: .editingBy)
        try container.encodeIfPresent(mute, forKey: .mute)
        try container.encodeIfPresent(viewUrl, forKey: .viewUrl)
        try container.encodeIfPresent(webUrl, forKey: .webUrl)
        try container.encodeIfPresent(fileType, forKey: .fileType)
        try container.encodeIfPresent(fileExst, forKey: .fileExst)
        try container.encodeIfPresent(comment, forKey: .comment)
        try container.encodeIfPresent(encrypted, forKey: .encrypted)
        try container.encodeIfPresent(thumbnailUrl, forKey: .thumbnailUrl)
        try container.encodeIfPresent(thumbnailStatus, forKey: .thumbnailStatus)
        try container.encodeIfPresent(locked, forKey: .locked)
        try container.encodeIfPresent(lockedBy, forKey: .lockedBy)
        try container.encodeIfPresent(hasDraft, forKey: .hasDraft)
        try container.encodeIfPresent(formFillingStatus, forKey: .formFillingStatus)
        try container.encodeIfPresent(isForm, forKey: .isForm)
        try container.encodeIfPresent(customFilterEnabled, forKey: .customFilterEnabled)
        try container.encodeIfPresent(customFilterEnabledBy, forKey: .customFilterEnabledBy)
        try container.encodeIfPresent(startFilling, forKey: .startFilling)
        try container.encodeIfPresent(isFillingPreparing, forKey: .isFillingPreparing)
        try container.encodeIfPresent(inProcessFolderId, forKey: .inProcessFolderId)
        try container.encodeIfPresent(inProcessFolderTitle, forKey: .inProcessFolderTitle)
        try container.encodeIfPresent(draftLocation, forKey: .draftLocation)
        try container.encodeIfPresent(viewAccessibility, forKey: .viewAccessibility)
        try container.encodeIfPresent(lastOpened, forKey: .lastOpened)
        try container.encodeIfPresent(expired, forKey: .expired)
        try container.encodeIfPresent(vectorizationStatus, forKey: .vectorizationStatus)
        try container.encodeIfPresent(dimensions, forKey: .dimensions)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension FileDtoInteger: Identifiable {}
