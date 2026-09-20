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

/** The addresses the framed viewer needs. It is reported for the embedded layout only. */
public struct EmbeddedConfig: Sendable, Codable, Hashable {

    /** The page to put into the frame. It is empty when the opening carries no external share key, since a framed  viewer cannot authenticate a portal member. */
    public var embedUrl: String?
    /** Where the download button of the framed viewer leads. */
    public var saveUrl: String?
    /** The query fragment carrying the external share key, ampersand included, out of which the addresses around it  are built. */
    public var shareLinkParam: String?
    /** The address behind the share button of the framed viewer, the document opened full-screen for reading. It is  empty when the opening carries no external share key. */
    public var shareUrl: String?
    /** Where the framed viewer puts its toolbar. The portal always asks for the top. */
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

