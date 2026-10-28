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

/** One access entry on a file, a folder or a room: who holds it, at which level, and what the caller may change about  it. */
public struct FileShareDto: Sendable, Codable, Hashable {

    /** The level the subject holds on the entry. On a link entry it is the level the link hands to whoever opens it,  and in a batch answer `Varies` means the subject holds different levels on the listed entries. */
    public var access: FileShare?
    public var sharedTo: JSONValue?
    /** The account the entry belongs to. It is filled in only when `subjectType` says an account, and is null for a  group entry and for a link. */
    public var sharedToUser: EmployeeFullDto?
    /** The portal group the entry belongs to, which hands the level to everybody in it. It is filled in only for a  group entry, and is null otherwise. */
    public var sharedToGroup: GroupSummaryDto?
    /** The sharing link the entry stands for, together with everything set on it. It is filled in only for a link  entry, and is null for an account or a group. */
    public var sharedLink: FileShareLink?
    /** Whether this entry is the caller's own, which is why they cannot change its level. Link entries never report  it. */
    public var isLocked: Bool
    /** Whether the subject created the entry the access is given on, and so cannot be removed from it. */
    public var isOwner: Bool
    /** Whether the caller may change the level of this entry. It is false on the caller's own entry, on every link,  and whenever the caller may not hand out access at all. */
    public var canEditAccess: Bool
    /** Whether the caller may switch this link between being open to anybody and asking the visitor to sign in to the  portal first. */
    public var canEditInternal: Bool
    /** Whether the caller may forbid downloading through this link. Only a link of a virtual data room reports true,  and only while the room itself still allows downloads. */
    public var canEditDenyDownload: Bool
    /** Whether the caller may move the moment this link stops working. */
    public var canEditExpirationDate: Bool
    /** Whether the caller may take this entry away altogether, which for a link means deleting the link. */
    public var canRevoke: Bool
    /** What the entry was given to, which tells which of the three subject fields is filled in: an account, a group,  or one of the kinds of link. */
    public var subjectType: SubjectType

    public init(access: FileShare? = nil, sharedTo: JSONValue? = nil, sharedToUser: EmployeeFullDto? = nil, sharedToGroup: GroupSummaryDto? = nil, sharedLink: FileShareLink? = nil, isLocked: Bool, isOwner: Bool, canEditAccess: Bool, canEditInternal: Bool, canEditDenyDownload: Bool, canEditExpirationDate: Bool, canRevoke: Bool, subjectType: SubjectType) {
        self.access = access
        self.sharedTo = sharedTo
        self.sharedToUser = sharedToUser
        self.sharedToGroup = sharedToGroup
        self.sharedLink = sharedLink
        self.isLocked = isLocked
        self.isOwner = isOwner
        self.canEditAccess = canEditAccess
        self.canEditInternal = canEditInternal
        self.canEditDenyDownload = canEditDenyDownload
        self.canEditExpirationDate = canEditExpirationDate
        self.canRevoke = canRevoke
        self.subjectType = subjectType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case access
        case sharedTo
        case sharedToUser
        case sharedToGroup
        case sharedLink
        case isLocked
        case isOwner
        case canEditAccess
        case canEditInternal
        case canEditDenyDownload
        case canEditExpirationDate
        case canRevoke
        case subjectType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(access, forKey: .access)
        try container.encodeIfPresent(sharedTo, forKey: .sharedTo)
        try container.encodeIfPresent(sharedToUser, forKey: .sharedToUser)
        try container.encodeIfPresent(sharedToGroup, forKey: .sharedToGroup)
        try container.encodeIfPresent(sharedLink, forKey: .sharedLink)
        try container.encode(isLocked, forKey: .isLocked)
        try container.encode(isOwner, forKey: .isOwner)
        try container.encode(canEditAccess, forKey: .canEditAccess)
        try container.encode(canEditInternal, forKey: .canEditInternal)
        try container.encode(canEditDenyDownload, forKey: .canEditDenyDownload)
        try container.encode(canEditExpirationDate, forKey: .canEditExpirationDate)
        try container.encode(canRevoke, forKey: .canRevoke)
        try container.encode(subjectType, forKey: .subjectType)
    }
}

