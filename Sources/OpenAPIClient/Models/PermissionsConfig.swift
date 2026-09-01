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

/** The permissions configuration parameters. */
public struct PermissionsConfig: Sendable, Codable, Hashable {

    /** Defines if the document can be commented or not. */
    public var comment: Bool?
    /** Defines if the chat functionality is enabled in the document or not. */
    public var chat: Bool?
    /** Defines if the document can be downloaded or only viewed or edited online. */
    public var download: Bool?
    /** Defines if the document can be edited or only viewed. */
    public var edit: Bool?
    /** Defines if the forms can be filled. */
    public var fillForms: Bool?
    /** Defines if the filter can be applied globally (true) affecting all the other users,  or locally (false), i.e. for the current user only. */
    public var modifyFilter: Bool?
    /** Defines if the Protection tab on the toolbar and the Protect button in the left menu are displayedor hidden. */
    public var protect: Bool?
    /** Defines if the document can be printed or not. */
    public var print: Bool?
    /** Defines if the document can be reviewed or not. */
    public var review: Bool?
    /** Defines if the content can be copied to the clipboard or not. */
    public var copy: Bool?

    public init(comment: Bool? = nil, chat: Bool? = nil, download: Bool? = nil, edit: Bool? = nil, fillForms: Bool? = nil, modifyFilter: Bool? = nil, protect: Bool? = nil, print: Bool? = nil, review: Bool? = nil, copy: Bool? = nil) {
        self.comment = comment
        self.chat = chat
        self.download = download
        self.edit = edit
        self.fillForms = fillForms
        self.modifyFilter = modifyFilter
        self.protect = protect
        self.print = print
        self.review = review
        self.copy = copy
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case comment
        case chat
        case download
        case edit
        case fillForms
        case modifyFilter
        case protect
        case print
        case review
        case copy
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(comment, forKey: .comment)
        try container.encodeIfPresent(chat, forKey: .chat)
        try container.encodeIfPresent(download, forKey: .download)
        try container.encodeIfPresent(edit, forKey: .edit)
        try container.encodeIfPresent(fillForms, forKey: .fillForms)
        try container.encodeIfPresent(modifyFilter, forKey: .modifyFilter)
        try container.encodeIfPresent(protect, forKey: .protect)
        try container.encodeIfPresent(print, forKey: .print)
        try container.encodeIfPresent(review, forKey: .review)
        try container.encodeIfPresent(copy, forKey: .copy)
    }
}

