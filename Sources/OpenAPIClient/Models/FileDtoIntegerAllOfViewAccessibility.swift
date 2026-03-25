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

/** The file accessibility. */
public struct FileDtoIntegerAllOfViewAccessibility: Sendable, Codable, Hashable {

    public var imageView: Bool?
    public var mediaView: Bool?
    public var webView: Bool?
    public var webEdit: Bool?
    public var webReview: Bool?
    public var webCustomFilterEditing: Bool?
    public var webRestrictedEditing: Bool?
    public var webComment: Bool?
    public var canConvert: Bool?
    public var mustConvert: Bool?

    public init(imageView: Bool? = nil, mediaView: Bool? = nil, webView: Bool? = nil, webEdit: Bool? = nil, webReview: Bool? = nil, webCustomFilterEditing: Bool? = nil, webRestrictedEditing: Bool? = nil, webComment: Bool? = nil, canConvert: Bool? = nil, mustConvert: Bool? = nil) {
        self.imageView = imageView
        self.mediaView = mediaView
        self.webView = webView
        self.webEdit = webEdit
        self.webReview = webReview
        self.webCustomFilterEditing = webCustomFilterEditing
        self.webRestrictedEditing = webRestrictedEditing
        self.webComment = webComment
        self.canConvert = canConvert
        self.mustConvert = mustConvert
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case imageView = "ImageView"
        case mediaView = "MediaView"
        case webView = "WebView"
        case webEdit = "WebEdit"
        case webReview = "WebReview"
        case webCustomFilterEditing = "WebCustomFilterEditing"
        case webRestrictedEditing = "WebRestrictedEditing"
        case webComment = "WebComment"
        case canConvert = "CanConvert"
        case mustConvert = "MustConvert"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(imageView, forKey: .imageView)
        try container.encodeIfPresent(mediaView, forKey: .mediaView)
        try container.encodeIfPresent(webView, forKey: .webView)
        try container.encodeIfPresent(webEdit, forKey: .webEdit)
        try container.encodeIfPresent(webReview, forKey: .webReview)
        try container.encodeIfPresent(webCustomFilterEditing, forKey: .webCustomFilterEditing)
        try container.encodeIfPresent(webRestrictedEditing, forKey: .webRestrictedEditing)
        try container.encodeIfPresent(webComment, forKey: .webComment)
        try container.encodeIfPresent(canConvert, forKey: .canConvert)
        try container.encodeIfPresent(mustConvert, forKey: .mustConvert)
    }
}

