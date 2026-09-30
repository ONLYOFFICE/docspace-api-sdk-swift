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

/** The facts the editor information panel shows about the open document. */
public struct InfoConfigDto: Sendable, Codable, Hashable {

    /** Whether the caller has this document among their favorites. It is empty when favorites do not apply - for an  anonymous caller, for a guest, and for an encrypted document. */
    public var favorite: Bool?
    /** The place of the document as a readable path, its folders joined from the root downwards. It is empty in the  embedded layout, which shows no such panel. */
    public var folder: String?
    /** The display name of the owner of the document. It is empty for an anonymous session. */
    public var owner: String?
    /** Who the document is shared with, as the information panel lists it. An empty list means it is shared with  nobody beyond its owner. */
    public var sharingSettings: [AceShortWrapper]?
    /** The layout the information panel is rendered for. */
    public var type: EditorType?
    /** When the document was created on the portal, already formatted for reading in the culture of the caller rather  than as a machine timestamp. */
    public var uploaded: String?

    public init(favorite: Bool? = nil, folder: String? = nil, owner: String? = nil, sharingSettings: [AceShortWrapper]? = nil, type: EditorType? = nil, uploaded: String? = nil) {
        self.favorite = favorite
        self.folder = folder
        self.owner = owner
        self.sharingSettings = sharingSettings
        self.type = type
        self.uploaded = uploaded
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case favorite
        case folder
        case owner
        case sharingSettings
        case type
        case uploaded
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(favorite, forKey: .favorite)
        try container.encodeIfPresent(folder, forKey: .folder)
        try container.encodeIfPresent(owner, forKey: .owner)
        try container.encodeIfPresent(sharingSettings, forKey: .sharingSettings)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(uploaded, forKey: .uploaded)
    }
}

