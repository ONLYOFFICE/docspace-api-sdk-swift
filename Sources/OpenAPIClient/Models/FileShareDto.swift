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

/** The file sharing information and access rights. */
public struct FileShareDto: Sendable, Codable, Hashable {

    public var access: FileShare?
    /** The user who has the access to the specified file. */
    @available(*, deprecated, message: "This property is deprecated.")
    public var sharedTo: JSONValue?
    public var sharedToUser: EmployeeFullDto?
    public var sharedToGroup: GroupSummaryDto?
    public var sharedLink: FileShareLink?
    /** Specifies if the access right is locked or not. */
    public var isLocked: Bool
    /** Specifies if the user is an owner of the specified file or not. */
    public var isOwner: Bool
    /** Specifies if the user can edit the access to the specified file or not. */
    public var canEditAccess: Bool
    /** Indicates whether internal editing permissions are granted. */
    public var canEditInternal: Bool
    /** Determines whether the user has permission to modify the deny download setting for the file share. */
    public var canEditDenyDownload: Bool
    /** Indicates whether the expiration date of access permissions can be edited. */
    public var canEditExpirationDate: Bool
    /** Specifies whether the file sharing access can be revoked by the current user. */
    public var canRevoke: Bool
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

