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

/** The Access Control external sharing settings request parameters. */
public struct ExternalSharingSettingsRequestDto: Sendable, Codable, Hashable {

    /** Specifies whether external (public) link creation is allowed. */
    public var externalShare: Bool?
    /** Specifies the default sharing link type: true = DocSpace users only, false = Anyone with the link.  Relevant only when ExternalShare is true. */
    public var defaultShareLinkInternal: Bool?
    /** When external sharing is restricted, specifies whether to apply the restriction to the My Documents section.  Relevant only when ExternalShare is false. */
    public var externalShareApplyToDocuments: Bool?
    /** When external sharing is restricted, specifies whether to apply the restriction to the Rooms section.  Relevant only when ExternalShare is false. */
    public var externalShareApplyToRooms: Bool?
    /** When external sharing is restricted, specifies whether to block existing public links immediately.  Relevant only when ExternalShare is false. */
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

