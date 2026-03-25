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

/** The configuration parameters for the embedded document type. */
public struct EmbeddedConfig: Sendable, Codable, Hashable {

    /** The absolute URL to the document serving as a source file for the document embedded into the web page. */
    public var embedUrl: String?
    /** The absolute URL that will allow the document to be saved onto the user personal computer. */
    public var saveUrl: String?
    /** The shared URL parameter. */
    public var shareLinkParam: String?
    /** The absolute URL that will allow other users to share this document. */
    public var shareUrl: String?
    /** The place for the embedded viewer toolbar, can be either top or bottom. */
    public var toolbarDocked: String?

    public init(embedUrl: String? = nil, saveUrl: String? = nil, shareLinkParam: String? = nil, shareUrl: String? = nil, toolbarDocked: String? = nil) {
        self.embedUrl = embedUrl
        self.saveUrl = saveUrl
        self.shareLinkParam = shareLinkParam
        self.shareUrl = shareUrl
        self.toolbarDocked = toolbarDocked
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case embedUrl
        case saveUrl
        case shareLinkParam
        case shareUrl
        case toolbarDocked
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(embedUrl, forKey: .embedUrl)
        try container.encodeIfPresent(saveUrl, forKey: .saveUrl)
        try container.encodeIfPresent(shareLinkParam, forKey: .shareLinkParam)
        try container.encodeIfPresent(shareUrl, forKey: .shareUrl)
        try container.encodeIfPresent(toolbarDocked, forKey: .toolbarDocked)
    }
}

