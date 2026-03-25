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

/** The document config parameters. */
public struct DocumentConfigDto: Sendable, Codable, Hashable {

    /** The file type of the document. */
    public var fileType: String?
    public var info: InfoConfigDto?
    /** Specifies if the documnet is linked for current user. */
    public var isLinkedForMe: Bool?
    /** The document key. */
    public var key: String?
    public var permissions: PermissionsConfig?
    /** The shared link parameter of the document. */
    public var sharedLinkParam: String?
    /** The shared link key of the document. */
    public var sharedLinkKey: String?
    public var referenceData: FileReferenceData?
    /** The document title. */
    public var title: String?
    /** The document url. */
    public var url: String?
    /** Indicates whether this is a form. */
    public var isForm: Bool?
    public var options: Options?

    public init(fileType: String? = nil, info: InfoConfigDto? = nil, isLinkedForMe: Bool? = nil, key: String? = nil, permissions: PermissionsConfig? = nil, sharedLinkParam: String? = nil, sharedLinkKey: String? = nil, referenceData: FileReferenceData? = nil, title: String? = nil, url: String? = nil, isForm: Bool? = nil, options: Options? = nil) {
        self.fileType = fileType
        self.info = info
        self.isLinkedForMe = isLinkedForMe
        self.key = key
        self.permissions = permissions
        self.sharedLinkParam = sharedLinkParam
        self.sharedLinkKey = sharedLinkKey
        self.referenceData = referenceData
        self.title = title
        self.url = url
        self.isForm = isForm
        self.options = options
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fileType
        case info
        case isLinkedForMe
        case key
        case permissions
        case sharedLinkParam
        case sharedLinkKey
        case referenceData
        case title
        case url
        case isForm
        case options
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(fileType, forKey: .fileType)
        try container.encodeIfPresent(info, forKey: .info)
        try container.encodeIfPresent(isLinkedForMe, forKey: .isLinkedForMe)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(permissions, forKey: .permissions)
        try container.encodeIfPresent(sharedLinkParam, forKey: .sharedLinkParam)
        try container.encodeIfPresent(sharedLinkKey, forKey: .sharedLinkKey)
        try container.encodeIfPresent(referenceData, forKey: .referenceData)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(isForm, forKey: .isForm)
        try container.encodeIfPresent(options, forKey: .options)
    }
}

