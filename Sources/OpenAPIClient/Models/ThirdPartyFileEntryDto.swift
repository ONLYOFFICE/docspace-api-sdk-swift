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

/** The part of a file or folder that depends on how the entry is identified: by a number on the portal, or by a  string on a connected third-party account. */
public struct ThirdPartyFileEntryDto: Sendable, Codable, Hashable {

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

    public init(title: String? = nil, access: FileShare? = nil, sharedBy: EmployeeDto? = nil, ownedBy: EmployeeDto? = nil, shared: Bool? = nil, sharedForUser: Bool? = nil, sharedExternal: Bool? = nil, parentShared: Bool? = nil, shortWebUrl: String? = nil, created: ApiDateTime? = nil, createdBy: EmployeeDto? = nil, updated: ApiDateTime? = nil, autoDelete: ApiDateTime? = nil, rootFolderType: FolderType? = nil, parentRoomType: FolderType? = nil, updatedBy: EmployeeDto? = nil, providerItem: Bool? = nil, providerKey: String? = nil, providerId: Int? = nil, order: String? = nil, isFavorite: Bool? = nil, fileEntryType: FileEntryType? = nil, id: String? = nil, rootFolderId: String? = nil, originId: String? = nil, originRoomId: String? = nil, originTitle: String? = nil, originRoomTitle: String? = nil, canShare: Bool? = nil, shareSettings: AiFileEntryDtoAllOfShareSettings? = nil, security: AiFileEntryDtoAllOfSecurity? = nil, availableShareRights: AiFileEntryDtoAllOfAvailableShareRights? = nil, requestToken: String? = nil, external: Bool? = nil, expirationDate: ApiDateTime? = nil, isLinkExpired: Bool? = nil) {
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
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ThirdPartyFileEntryDto: Identifiable {}
