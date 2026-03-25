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

/** The information config parameters. */
public struct InfoConfigDto: Sendable, Codable, Hashable {

    /** Specifies if the file is favorite or not. */
    public var favorite: Bool?
    /** The folder of the file. */
    public var folder: String?
    /** The file owner. */
    public var owner: String?
    /** The sharing settings of the file. */
    public var sharingSettings: [AceShortWrapper]?
    public var type: EditorType?
    /** The uploaded file. */
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

