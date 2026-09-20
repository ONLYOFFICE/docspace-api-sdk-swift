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

/** The parameters of a file copy that may change the format on the way. */
public struct CopyAsJsonElement: Sendable, Codable, Hashable {

    /** The title of the copy, extension included. That extension decides the format: the same one as the source  copies the content as it is, a different one has it converted first. */
    public var destTitle: String?
    public var destFolderId: CopyAsJsonElementDestFolderId
    /** Whether the extension of the new title may be one the portal does not edit itself. */
    public var enableExternalExt: Bool?
    /** The password that opens the source document, for a file that is protected by one. */
    public var password: String?
    /** Whether the copy is to become a PDF form rather than a plain document, which the conversion supports for the  text formats it can read. */
    public var toForm: Bool?

    public init(destTitle: String?, destFolderId: CopyAsJsonElementDestFolderId, enableExternalExt: Bool? = nil, password: String? = nil, toForm: Bool? = nil) {
        self.destTitle = destTitle
        self.destFolderId = destFolderId
        self.enableExternalExt = enableExternalExt
        self.password = password
        self.toForm = toForm
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case destTitle
        case destFolderId
        case enableExternalExt
        case password
        case toForm
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(destTitle, forKey: .destTitle)
        try container.encode(destFolderId, forKey: .destFolderId)
        try container.encodeIfPresent(enableExternalExt, forKey: .enableExternalExt)
        try container.encodeIfPresent(password, forKey: .password)
        try container.encodeIfPresent(toForm, forKey: .toForm)
    }
}

