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

/** The folder, with the fields that only a room carries filled in when the folder is a room. */
public struct AiFolderDto: Sendable, Codable, Hashable {

    /** The name shown for the entry. For a file it carries the extension, which is how the format is recognised, and  for a room it is the room name. */
    public var title: String?
    /** The level the calling account holds on this entry, resolved from its own rights, the groups it belongs to and  any link it came in through. It is the level itself, not what the account may do with it - the action flags  below answer that. */
    public var access: AiFileShare?
    /** Who gave the calling account the access it is using. It is filled in only while the entry is being read  through a share, and never for a caller without an account. */
    public var sharedBy: AiEmployeeDto?
    /** Who owns the place the entry is shared from - the creator of the room it lies in, or of the personal section  that holds it. It is filled in only while the entry is being read through a share, and never for a caller  without an account. */
    public var ownedBy: AiEmployeeDto?
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
    public var created: AiApiDateTime?
    /** Who created the entry. It is null for a caller without an account, who is told nothing about the portal's  members. */
    public var createdBy: AiEmployeeDto?
    /** When the entry last changed, written with the offset of the portal's time zone. It is never reported as  earlier than the creation moment, so the two can be compared safely. */
    public var updated: AiApiDateTime?
    /** When the entry will disappear on its own, written with the offset of the portal's time zone. It is filled in  only where a removal is actually scheduled - something in the trash while the portal cleans it up  automatically, or a guest's own documents - so a null means nothing is scheduled rather than that the entry is  permanent. */
    public var autoDelete: AiApiDateTime?
    /** The section the entry ultimately belongs to, which is what tells a personal document from one inside a room,  from a template and from something in the trash or the archive. */
    public var rootFolderType: AiFolderType?
    /** The kind of room the entry lies in, which decides what the room allows - filling forms, public links,  indexing. It is null for an entry that is not inside a room at all. */
    public var parentRoomType: AiFolderType?
    /** Who changed the entry last. It is null for a caller without an account. */
    public var updatedBy: AiEmployeeDto?
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
    public var fileEntryType: AiFileEntryType?
    /** The identifier to pass back to the other operations of this entry. It is a number for storage on the portal  and a string for a connected third-party account, and it is unique only within its own kind, so files and  folders may carry the same value. */
    public var id: Int?
    /** The section the entry ultimately lies in, as an identifier that can be listed like any other folder. For an  entry inside a room this is the rooms section, not the room. */
    public var rootFolderId: Int?
    /** The folder the entry was deleted from, which is where restoring it puts it back. It is left out of the answer  unless the entry is in the trash. */
    public var originId: Int?
    /** The room the entry was deleted from, left out of the answer for anything that was not deleted out of a room. */
    public var originRoomId: Int?
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
    public var expirationDate: AiApiDateTime?
    /** Set when the link being used has already passed its expiration date, which is why the entry cannot be opened  even though it is described here. It is null when no link is involved. */
    public var isLinkExpired: Bool?
    /** The folder this one is listed in. For a room it is the root of the section the room lives in, and for an entry  opened through a sharing link whose real parent the caller may not read it is the root of the section with the  entries shared with them. */
    public var parentId: Int?
    /** How many files lie directly in the folder, without counting the subfolders. The roots of the `Rooms`, room  templates and default templates sections always report 0, because the number is not collected for them. */
    public var filesCount: Int?
    /** How many subfolders lie directly in the folder. For an AI room the two service subfolders it always holds are  subtracted, so the number matches what a listing of it shows, and the roots of the `Rooms` and templates  sections report 0. */
    public var foldersCount: Int?
    /** Whether the caller may hand out access to the folder. It is filled in only for the folder a folder-contents  answer is about, and is null in every other answer, so null says nothing about the sharing rights. */
    public var isShareable: Bool?
    /** How many entries inside the folder the caller has not opened yet, the number drawn as the badge on it. An  account that turned the badges off in its own settings always reads 0 here, so 0 alone does not prove that  everything has been seen. */
    public var new: Int?
    /** Whether the caller silenced the notifications of this room: true means no message about its activity reaches  them. The choice belongs to the reading account rather than to the room, so two members of one room read  different values. */
    public var mute: Bool?
    /** The names of the tags attached to the room. Empty for a folder that is not a room, since only rooms carry  tags, and the names are the ones from the portal tag catalogue. */
    public var tags: [String]?
    /** The addresses of the room logo in four sizes, together with the colour and the built-in cover that are drawn  when no logo was uploaded. A room without a logo answers with four empty addresses rather than with null, and  the field is null for a folder that is not a room. */
    public var logo: AiLogo?
    /** Whether the caller pinned the room to the top of their own room list. Pinning is personal and is lost when the  room is archived. */
    public var pinned: Bool?
    /** The kind of the room, which decides the default access rules of its members. Null for a folder that is not a  room. */
    public var roomType: AiRoomType?
    /** Whether the room is a private one, which limits it to the accounts invited into it and needs encryption keys  set up for each of them. */
    public var _private: Bool?
    /** Whether the contents of the room are kept in an explicit numbered order, the one reported as `order` on each  entry, instead of being left to the sorting the reader asks for. */
    public var indexing: Bool?
    /** Whether downloading and printing the contents of the room is forbidden, which leaves its members with viewing  and editing in the editor. */
    public var denyDownload: Bool?
    /** The rule by which the files of the room are removed once they grow old. Null when the room has no such rule,  which is also what is reported after the rule is switched off, because switching it off erases it. */
    public var lifetime: AiRoomDataLifetimeDto?
    /** The watermark stamped over the documents of the room while they are viewed and printed. Null when the room has  no watermark, and for every folder that is not a room. */
    public var watermark: AiWatermarkDto?
    /** The part the folder plays inside its room: one of the service folders of the form-filling flow, or the  knowledge and result storages of an AI room. It stays null for an ordinary folder and for the room itself, so  it does not describe folders in general. */
    public var type: AiFolderType?
    /** Whether the caller holds the room through an invitation of their own: true for the account that created it and  for a member invited personally, false when the access comes from a group they belong to, and null for a  folder that is not a room. */
    public var inRoom: Bool?
    /** How much space the files of the room may take, in bytes. It is the limit set on this room, or the portal  default for rooms when none was set. Null when the tariff of the portal does not count room statistics, when  room quotas are switched off, when the room lies in the archive or the trash, or when the caller may only read  it. */
    public var quotaLimit: Int64?
    /** Whether `quotaLimit` is a limit set on this room (true) or the portal default for rooms (false). Null exactly  when `quotaLimit` is null. */
    public var isCustomQuota: Bool?
    /** How much the files of the room take, in bytes, as of the last time the counter was recomputed. The counter is  refreshed when a file operation finishes, so a read right after an upload or a deletion can still report the  previous figure. Null for a folder that is not a room. */
    public var usedSpace: Int64?
    /** Whether the sharing link the folder was opened through asks for a password that has not been entered yet.  While it is true the contents stay unreadable; send the password to `POST api/2.0/files/share/{key}/password`  first. Null when the folder was not reached through a link. */
    public var passwordProtected: Bool?
    /** Deprecated, read `isLinkExpired` instead: whether the sharing link the folder was opened through has run out  of its lifetime. */
    @available(*, deprecated, message: "This property is deprecated.")
    public var expired: Bool?
    /** The chat configuration of an AI room. Only the system prompt is reported here, whatever else the room stores,  and the field is null for every folder that is not an AI room. */
    public var chatSettings: AiChatSettingsDto?
    /** The kind of the room the folder lies in. It is filled in only for the folder a folder-contents answer is  about, and only when that room is an AI room, so it is null in every other answer and for every other room  kind. */
    public var rootRoomType: AiRoomType?
    /** Whether the answers collected in this form-filling room are also gathered into a spreadsheet next to the  completed copies. Filled in for form-filling rooms only. */
    public var saveFormAsXLSX: Bool?
    /** Whether the answers collected in this form-filling room are also pushed into the external database configured  for the portal. Filled in for form-filling rooms only. */
    public var sendFormToExternalDB: Bool?
    /** The form the completed copies in this folder were filled from, taken from the copy submitted last. Null while  the folder holds no completed copy, and for every folder that does not collect them. */
    public var originalFormId: Int?

    public init(title: String? = nil, access: AiFileShare? = nil, sharedBy: AiEmployeeDto? = nil, ownedBy: AiEmployeeDto? = nil, shared: Bool? = nil, sharedForUser: Bool? = nil, sharedExternal: Bool? = nil, parentShared: Bool? = nil, shortWebUrl: String? = nil, created: AiApiDateTime? = nil, createdBy: AiEmployeeDto? = nil, updated: AiApiDateTime? = nil, autoDelete: AiApiDateTime? = nil, rootFolderType: AiFolderType? = nil, parentRoomType: AiFolderType? = nil, updatedBy: AiEmployeeDto? = nil, providerItem: Bool? = nil, providerKey: String? = nil, providerId: Int? = nil, order: String? = nil, isFavorite: Bool? = nil, fileEntryType: AiFileEntryType? = nil, id: Int? = nil, rootFolderId: Int? = nil, originId: Int? = nil, originRoomId: Int? = nil, originTitle: String? = nil, originRoomTitle: String? = nil, canShare: Bool? = nil, shareSettings: AiFileEntryDtoAllOfShareSettings? = nil, security: AiFileEntryDtoAllOfSecurity? = nil, availableShareRights: AiFileEntryDtoAllOfAvailableShareRights? = nil, requestToken: String? = nil, external: Bool? = nil, expirationDate: AiApiDateTime? = nil, isLinkExpired: Bool? = nil, parentId: Int? = nil, filesCount: Int? = nil, foldersCount: Int? = nil, isShareable: Bool? = nil, new: Int? = nil, mute: Bool? = nil, tags: [String]? = nil, logo: AiLogo? = nil, pinned: Bool? = nil, roomType: AiRoomType? = nil, _private: Bool? = nil, indexing: Bool? = nil, denyDownload: Bool? = nil, lifetime: AiRoomDataLifetimeDto? = nil, watermark: AiWatermarkDto? = nil, type: AiFolderType? = nil, inRoom: Bool? = nil, quotaLimit: Int64? = nil, isCustomQuota: Bool? = nil, usedSpace: Int64? = nil, passwordProtected: Bool? = nil, expired: Bool? = nil, chatSettings: AiChatSettingsDto? = nil, rootRoomType: AiRoomType? = nil, saveFormAsXLSX: Bool? = nil, sendFormToExternalDB: Bool? = nil, originalFormId: Int? = nil) {
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
        self.originalFormId = originalFormId
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
        case originalFormId
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
        try container.encodeIfPresent(originalFormId, forKey: .originalFormId)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension AiFolderDto: Identifiable {}
