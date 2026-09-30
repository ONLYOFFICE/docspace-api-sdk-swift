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

/** A stored file as the calling account sees it: where it lives, which revision this is, how it can be opened and  what the portal is currently doing with it. */
public struct ThirdPartyFileDto: Sendable, Codable, Hashable {

    /** The name shown for the entry. For a file it carries the extension, which is how the format is recognised, and  for a room it is the room name. */
    public var title: String?
    /** The level the calling account holds on this entry, resolved from its own rights, the groups it belongs to and  any link it came in through. It is the level itself, not what the account may do with it - the action flags  below answer that. */
    public var access: FileShare?
    /** Who gave the calling account the access it is using. It is filled in only while the entry is being read  through a share, and never for a caller without an account. */
    public var sharedBy: EmployeeDto?
    /** Who owns the place the entry is shared from - the creator of the room it lies in, or of the personal section  that holds it. It is filled in only while the entry is being read through a share, and never for a caller  without an account. */
    public var ownedBy: EmployeeDto?
    /** Whether at least one external link exists for the entry, whichever kind. It says nothing about accounts and  groups - those are counted by the flag for members below. */
    public var shared: Bool?
    /** Whether at least one account or group has been given rights on the entry directly, as opposed to reaching it  through a link or through the room around it. */
    public var sharedForUser: Bool?
    /** Whether one of the entry's links is open to people outside the portal, as opposed to a link that only its own  members can follow. This is the flag to watch when the concern is who can reach the content from outside. */
    public var sharedExternal: Bool?
    /** Whether the entry is reachable because the room or folder around it is shared, rather than through rights of  its own. A copy or a move takes the entry out of that scope. */
    public var parentShared: Bool?
    /** A shortened address that opens the entry through the link it is being read with. It is an empty string  whenever no link applies, which is the usual case for a member browsing their own rooms. */
    public var shortWebUrl: String?
    /** When the entry was created, written with the offset of the portal's time zone. For a file restored from an  older version this is still the moment the file first appeared. */
    public var created: ApiDateTime?
    /** Who created the entry. It is null for a caller without an account, who is told nothing about the portal's  members. */
    public var createdBy: EmployeeDto?
    /** When the entry last changed, written with the offset of the portal's time zone. It is never reported as  earlier than the creation moment, so the two can be compared safely. */
    public var updated: ApiDateTime?
    /** When the entry will disappear on its own, written with the offset of the portal's time zone. It is filled in  only where a removal is actually scheduled - something in the trash while the portal cleans it up  automatically, or a guest's own documents - so a null means nothing is scheduled rather than that the entry is  permanent. */
    public var autoDelete: ApiDateTime?
    /** The section the entry ultimately belongs to, which is what tells a personal document from one inside a room,  from a template and from something in the trash or the archive. */
    public var rootFolderType: FolderType?
    /** The kind of room the entry lies in, which decides what the room allows - filling forms, public links,  indexing. It is null for an entry that is not inside a room at all. */
    public var parentRoomType: FolderType?
    /** Who changed the entry last. It is null for a caller without an account. */
    public var updatedBy: EmployeeDto?
    /** Set when the entry is stored on a connected third-party account rather than on the portal, and null when it is  stored on the portal. Such an entry is identified by a string rather than a number, and some operations skip  it. */
    public var providerItem: Bool?
    /** Which third-party service holds the entry, matching the keys accepted by the third-party operations. It is  null for an entry stored on the portal. */
    public var providerKey: String?
    /** The connected account the entry comes from, for telling apart two connections to the same service. It is null  for an entry stored on the portal. */
    public var providerId: Int?
    /** The place of the entry in a room where the members arrange the content themselves, given as the position of  the entry preceded by the positions of the folders leading to it, separated by dots. It is empty when nothing  has been arranged. */
    public var order: String?
    /** Set when the calling account has marked the entry as a favorite, which is what puts it into the favorites  listing. For a file that is not marked it is null rather than false. */
    public var isFavorite: Bool?
    /** Tells a folder from a file, and so which of the two shapes the rest of the object has. A room is reported as a  folder here. */
    public var fileEntryType: FileEntryType?
    /** The identifier to pass back to the other operations of this entry. It is a number for storage on the portal  and a string for a connected third-party account, and it is unique only within its own kind, so files and  folders may carry the same value. */
    public var id: String?
    /** The section the entry ultimately lies in, as an identifier that can be listed like any other folder. For an  entry inside a room this is the rooms section, not the room. */
    public var rootFolderId: String?
    /** The folder the entry was deleted from, which is where restoring it puts it back. It is left out of the answer  unless the entry is in the trash. */
    public var originId: String?
    /** The room the entry was deleted from, left out of the answer for anything that was not deleted out of a room. */
    public var originRoomId: String?
    /** The name of the folder the entry was deleted from, for showing where it would be restored to. It is null for  an entry that is not in the trash. */
    public var originTitle: String?
    /** The name of the room the entry was deleted from, null for anything that was not deleted out of a room. */
    public var originRoomTitle: String?
    /** Whether the calling account may change who has access to the entry, and so whether offering a sharing dialog  for it makes sense. It is false in rooms whose access is fixed by the room itself, such as a private one, even  for its manager. */
    public var canShare: Bool?
    public var shareSettings: AiFileEntryDtoAllOfShareSettings?
    public var security: AiFileEntryDtoAllOfSecurity?
    public var availableShareRights: AiFileEntryDtoAllOfAvailableShareRights?
    /** The token of the link the entry is being read through, which is the value the external-share operations expect  and which also has to be carried by the download and preview addresses. It is null whenever the entry is not  being read through a link. */
    public var requestToken: String?
    /** Set when the link being used was made for this very entry, and false when the entry is reached through a link  to the room around it. It is null when no link is involved. */
    public var external: Bool?
    /** When the link being used stops working, written with the offset of the portal's time zone. It is null for a  link that never expires and whenever no link is involved. */
    public var expirationDate: ApiDateTime?
    /** Set when the link being used has already passed its expiration date, which is why the entry cannot be opened  even though it is described here. It is null when no link is involved. */
    public var isLinkExpired: Bool?
    /** The folder the file is stored in. When the file was reached through a share and the caller cannot open its  real parent, the identifier of the Shared with me section is reported instead, so this is where the file is  visible rather than where it physically sits. */
    public var folderId: String?
    /** The revision this entry describes. It starts at 1 and moves to the next number each time new content is stored  over the file, except for an editing session opened against the file itself, which replaces the content and  keeps the number. `GET api/2.0/files/file/{fileId}/history` lists them all. */
    public var version: Int?
    /** Groups revisions that belong together, which is how a history can fold a long editing session into one entry:  versions saved inside one session share this number, and an upload over the file starts a new group. */
    public var versionGroup: Int?
    /** The size already formatted for display, with a unit and the separators of the caller's language. Read  `pureContentLength` for a number to calculate with. */
    public var contentLength: String?
    /** The size of the stored content in bytes, and null for an empty file. */
    public var pureContentLength: Int64?
    /** What the portal is currently doing with the file and how the caller stands towards it - open in the editor,  unread, being converted, and so on. The value is a bit mask that combines those states, so a file can report a  number that matches none of the published members on its own. */
    public var fileStatus: FileStatus?
    /** The accounts that have the file open in the editor at this moment, as account identifier to display name, and  empty when nobody has. The all-zero identifier stands for people who came in through an external link without  signing in, and its name carries their number in brackets when there is more than one. */
    public var editingBy: [String: String?]?
    /** Not a property of the file at all: it repeats, inverted, the calling account's own switch for new-item badges,  so it is the same in every entry of one answer. True means that account has badges turned off. */
    public var mute: Bool?
    /** The address that returns the bytes of the file - a download, in spite of the name; `webUrl` is the address a  person opens. When the file was reached through an external link the address carries the key of that link, so  it keeps working without signing in. */
    public var viewUrl: String?
    /** The page that opens the file in a browser: the editor for a format the portal edits, the media viewer for  pictures, audio and video, and the download address for a format it cannot show at all. */
    public var webUrl: String?
    /** The broad kind of content, worked out from the extension, which is what a client uses to pick an icon or a  viewer without parsing `fileExst` itself. */
    public var fileType: FileType?
    /** The extension of the stored file, leading dot included and always lower case. For a format the portal keeps in  a converted shape this is the extension it is served under, not the one it was uploaded with. */
    public var fileExst: String?
    /** The note kept with this revision. The portal writes it itself for revisions it creates, an upload over an  existing file among them, and an editor stores the note a person typed when saving a version. */
    public var comment: String?
    /** True for a file in a private room, whose content the server never sees and which therefore cannot be converted  or taken over by an upload. Null, rather than false, for an ordinary file. */
    public var encrypted: Bool?
    /** The address of the generated preview image. It is filled in only while `thumbnailStatus` says the preview has  been created, and it carries a suffix that changes with the file, so an image cached for an earlier revision  is not reused. */
    public var thumbnailUrl: String?
    /** How far the preview image has got. Only the created state means `thumbnailUrl` holds an address; the others  mean there is none, either because it is still being produced or because this format has no preview. */
    public var thumbnailStatus: Thumbnail?
    /** True while the file is held under a lock that stops anyone but its holder from editing it, and null rather  than false when there is no lock. `lockedBy` names the holder unless the caller is the holder. */
    public var locked: Bool?
    /** The display name of the account holding the lock, and null when the caller holds it - so `locked` true  together with no name here means the lock is the caller's own. */
    public var lockedBy: String?
    /** For a fillable PDF form, whether the caller already has a filling draft of it, in which case `draftLocation`  says where that draft lives. Null for anything that is not a form. */
    public var hasDraft: Bool?
    /** How far the filling of this form has got for the calling account, and whose turn it is now. It is worked out  only inside a virtual data room, where filling runs in steps; everywhere else it stays at the none value. */
    public var formFillingStatus: FormFillingStatus?
    /** Whether the file is a PDF, and so offered as a fillable form. It is null for any other file type. */
    public var isForm: Bool?
    /** True while a spreadsheet is in the mode where each person sorts and filters their own view without changing  what the others see, and null rather than false when it is not. */
    public var customFilterEnabled: Bool?
    /** The display name of the account that turned that mode on, and null when the caller turned it on themselves. */
    public var customFilterEnabledBy: String?
    /** For a form in a room for filling, whether it has been released for filling; until then it is still being  prepared and only the people running the room work with it. Null for a file this does not apply to. */
    public var startFilling: Bool?
    /** True during the short window in which a released form is still being written out by the editor. Neither  filling nor editing is accepted while it lasts, so a client should wait and read the file again. */
    public var isFillingPreparing: Bool?
    /** Left empty by the portal: the folder holding the caller's draft is reported in `draftLocation` instead. */
    public var inProcessFolderId: Int?
    /** Left empty by the portal, like the identifier beside it; the draft's folder is named in `draftLocation`. */
    public var inProcessFolderTitle: String?
    /** The folder that collects the completed copies of this form. It is filled in only for the original form of a  room for filling, and only for a caller allowed to work with that form; null everywhere else. */
    public var resultsFolderId: Int?
    /** Where the caller's own filling draft of this form is kept. Null when there is no draft yet, which is the same  thing `hasDraft` reports. */
    public var draftLocation: ThirdPartyDraftLocation?
    public var viewAccessibility: FileDtoAllOfViewAccessibility?
    /** The moment the caller last opened the file. It is kept per account and is what orders the Recent section, so  it is null for a file this account has never opened. Written with the offset of the portal's time zone. */
    public var lastOpened: ApiDateTime?
    /** The moment the file falls under the lifetime rule of the room holding it and is removed. It is counted from  the first revision rather than the latest one, so editing a file does not postpone it, and it is null when the  room sets no lifetime. Written with the offset of the portal's time zone. */
    public var expired: ApiDateTime?
    /** How far the indexing of the file's content for AI search has got. It is null for a file that has never been  queued for indexing, which is every file while the feature is off for the portal. */
    public var vectorizationStatus: VectorizationStatus?
    /** The table collecting the submitted values of this form in the external database configured for its room. The  field is left out of the answer entirely when the form has no such table. */
    public var externalDbTableName: String?
    /** The pixel size of the picture, measured by reading the stored file rather than taken from any stored metadata.  Null for anything that is not a picture the portal can show, and also when the file could not be read. */
    public var dimensions: Size?

    public init(title: String? = nil, access: FileShare? = nil, sharedBy: EmployeeDto? = nil, ownedBy: EmployeeDto? = nil, shared: Bool? = nil, sharedForUser: Bool? = nil, sharedExternal: Bool? = nil, parentShared: Bool? = nil, shortWebUrl: String? = nil, created: ApiDateTime? = nil, createdBy: EmployeeDto? = nil, updated: ApiDateTime? = nil, autoDelete: ApiDateTime? = nil, rootFolderType: FolderType? = nil, parentRoomType: FolderType? = nil, updatedBy: EmployeeDto? = nil, providerItem: Bool? = nil, providerKey: String? = nil, providerId: Int? = nil, order: String? = nil, isFavorite: Bool? = nil, fileEntryType: FileEntryType? = nil, id: String? = nil, rootFolderId: String? = nil, originId: String? = nil, originRoomId: String? = nil, originTitle: String? = nil, originRoomTitle: String? = nil, canShare: Bool? = nil, shareSettings: AiFileEntryDtoAllOfShareSettings? = nil, security: AiFileEntryDtoAllOfSecurity? = nil, availableShareRights: AiFileEntryDtoAllOfAvailableShareRights? = nil, requestToken: String? = nil, external: Bool? = nil, expirationDate: ApiDateTime? = nil, isLinkExpired: Bool? = nil, folderId: String? = nil, version: Int? = nil, versionGroup: Int? = nil, contentLength: String? = nil, pureContentLength: Int64? = nil, fileStatus: FileStatus? = nil, editingBy: [String: String?]? = nil, mute: Bool? = nil, viewUrl: String? = nil, webUrl: String? = nil, fileType: FileType? = nil, fileExst: String? = nil, comment: String? = nil, encrypted: Bool? = nil, thumbnailUrl: String? = nil, thumbnailStatus: Thumbnail? = nil, locked: Bool? = nil, lockedBy: String? = nil, hasDraft: Bool? = nil, formFillingStatus: FormFillingStatus? = nil, isForm: Bool? = nil, customFilterEnabled: Bool? = nil, customFilterEnabledBy: String? = nil, startFilling: Bool? = nil, isFillingPreparing: Bool? = nil, inProcessFolderId: Int? = nil, inProcessFolderTitle: String? = nil, resultsFolderId: Int? = nil, draftLocation: ThirdPartyDraftLocation? = nil, viewAccessibility: FileDtoAllOfViewAccessibility? = nil, lastOpened: ApiDateTime? = nil, expired: ApiDateTime? = nil, vectorizationStatus: VectorizationStatus? = nil, externalDbTableName: String? = nil, dimensions: Size? = nil) {
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
        self.resultsFolderId = resultsFolderId
        self.draftLocation = draftLocation
        self.viewAccessibility = viewAccessibility
        self.lastOpened = lastOpened
        self.expired = expired
        self.vectorizationStatus = vectorizationStatus
        self.externalDbTableName = externalDbTableName
        self.dimensions = dimensions
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
        case resultsFolderId
        case draftLocation
        case viewAccessibility
        case lastOpened
        case expired
        case vectorizationStatus
        case externalDbTableName
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
        try container.encodeIfPresent(resultsFolderId, forKey: .resultsFolderId)
        try container.encodeIfPresent(draftLocation, forKey: .draftLocation)
        try container.encodeIfPresent(viewAccessibility, forKey: .viewAccessibility)
        try container.encodeIfPresent(lastOpened, forKey: .lastOpened)
        try container.encodeIfPresent(expired, forKey: .expired)
        try container.encodeIfPresent(vectorizationStatus, forKey: .vectorizationStatus)
        try container.encodeIfPresent(externalDbTableName, forKey: .externalDbTableName)
        try container.encodeIfPresent(dimensions, forKey: .dimensions)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ThirdPartyFileDto: Identifiable {}
