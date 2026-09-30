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

/** The document itself as the editors address it: what to fetch, under which revision key, and what this caller may  do with it. */
public struct DocumentConfigDto: Sendable, Codable, Hashable {

    /** The format the editors treat the content as, without the leading dot. For a file that had to be converted this  is the format it was converted to, not the one it is stored under. */
    public var fileType: String?
    /** The facts the editor information panel shows about the document. */
    public var info: InfoConfigDto?
    /** Whether the caller opened the original document rather than a link pointing at it, which matters only for  formats whose editing is restricted through links. */
    public var isLinkedForMe: Bool?
    /** Identifies the exact revision to the editors: everyone who receives the same key joins the same co-editing  session, and the key changes as soon as the document is saved. */
    public var key: String?
    /** What this caller may do inside the editor - edit, comment, review, fill, download, print, copy and chat. */
    public var permissions: PermissionsConfig?
    /** The name of the query parameter that carries the external share key. It is set only when the document was  opened through an external link. */
    public var sharedLinkParam: String?
    /** The external share key this opening runs under, empty when the caller opened the document as a portal member.  The editors pass it back on every request they make for the document. */
    public var sharedLinkKey: String?
    /** How another spreadsheet names this document in a formula. Pass it to `POST api/2.0/files/file/referencedata`  to resolve such a reference. */
    public var referenceData: FileReferenceData?
    /** The name the editors display. When a past version was opened, the moment that version was created is appended  to it in brackets. */
    public var title: String?
    /** Where the editors fetch the content. It is addressed to the host the document service can reach, which is not  necessarily the address a browser should follow. */
    public var url: String?
    /** Whether the document is a fillable PDF form. A PDF that the portal has never classified is inspected while the  configuration is built, so the answer is trustworthy even for a freshly uploaded file. */
    public var isForm: Bool?
    /** Extra instructions for the editors, currently the watermark to draw over the document. It is empty when the  room sets no watermark. */
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

