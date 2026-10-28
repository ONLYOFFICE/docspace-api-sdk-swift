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

/** The complete external sharing policy of the portal. Every field is written, so an omitted one is stored as  false. */
public struct ExternalSharingSettingsRequestDto: Sendable, Codable, Hashable {

    /** Whether links that open a file or a room without a portal account may be created at all. This is the master  switch of the policy: while it is false the portal keeps the default link type internal, turns sharing on  social networks off, and applies the three restriction fields below. */
    public var externalShare: Bool?
    /** The kind of link offered first when a new one is created: true offers a link only accounts of this portal can  open, false one that anyone holding it can open. The portal keeps it at true while external sharing is  switched off. */
    public var defaultShareLinkInternal: Bool?
    /** Whether the restriction reaches personal documents: with true, no external link can be created for an entry in  the caller's own documents while external sharing is off. It has no effect while external sharing is allowed. */
    public var externalShareApplyToDocuments: Bool?
    /** Whether the restriction reaches rooms: with true, no external link can be created for a room or its content  while external sharing is off, and a new room cannot be made public. It has no effect while external sharing  is allowed. */
    public var externalShareApplyToRooms: Bool?
    /** What happens to the links that already exist once external sharing is switched off: with true they stop  opening for the sections named above, with false they keep working and only new ones are refused. This is the  field that changes access to data that is already shared. */
    public var blockExistingLinksOnRestrict: Bool?

    public init(externalShare: Bool? = nil, defaultShareLinkInternal: Bool? = nil, externalShareApplyToDocuments: Bool? = nil, externalShareApplyToRooms: Bool? = nil, blockExistingLinksOnRestrict: Bool? = nil) {
        self.externalShare = externalShare
        self.defaultShareLinkInternal = defaultShareLinkInternal
        self.externalShareApplyToDocuments = externalShareApplyToDocuments
        self.externalShareApplyToRooms = externalShareApplyToRooms
        self.blockExistingLinksOnRestrict = blockExistingLinksOnRestrict
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case externalShare
        case defaultShareLinkInternal
        case externalShareApplyToDocuments
        case externalShareApplyToRooms
        case blockExistingLinksOnRestrict
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(externalShare, forKey: .externalShare)
        try container.encodeIfPresent(defaultShareLinkInternal, forKey: .defaultShareLinkInternal)
        try container.encodeIfPresent(externalShareApplyToDocuments, forKey: .externalShareApplyToDocuments)
        try container.encodeIfPresent(externalShareApplyToRooms, forKey: .externalShareApplyToRooms)
        try container.encodeIfPresent(blockExistingLinksOnRestrict, forKey: .blockExistingLinksOnRestrict)
    }
}

