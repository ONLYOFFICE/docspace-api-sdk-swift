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

/** The external sharing policy of the portal as it now stands. */
public struct ExternalSharingSettingsDto: Sendable, Codable, Hashable {

    /** Whether links that open a file or a room without a portal account may be created. While it is false the portal  also reports sharing on social networks as off and the default link type as internal, whatever was asked for. */
    public var externalShare: Bool?
    /** The kind of link the portal offers first: true means a link only accounts of this portal can open, false one  that anyone holding it can open. */
    public var defaultShareLinkInternal: Bool?
    /** Whether the restriction covers personal documents. It only has an effect while external sharing is off, so a  true here with sharing allowed restricts nothing. */
    public var externalShareApplyToDocuments: Bool?
    /** Whether the restriction covers rooms, including the creation of new public ones. It only has an effect while  external sharing is off. */
    public var externalShareApplyToRooms: Bool?
    /** Whether links created before the restriction stop opening as well. With false they keep working and only new  ones are refused. */
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

