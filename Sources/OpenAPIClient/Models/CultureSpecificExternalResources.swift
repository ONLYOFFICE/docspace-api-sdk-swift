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

/** The external resources settings. */
public struct CultureSpecificExternalResources: Sendable, Codable, Hashable {

    /** The link to the product API. */
    public var api: CultureSpecificExternalResource?
    /** The link to the common product information. */
    public var common: CultureSpecificExternalResource?
    /** The link to the forum. */
    public var forum: CultureSpecificExternalResource?
    /** The link to the Help Center. */
    public var helpcenter: CultureSpecificExternalResource?
    /** The link to the product integrations. */
    public var integrations: CultureSpecificExternalResource?
    /** The link to the product website. */
    public var site: CultureSpecificExternalResource?
    /** The link to the product social nerworks. */
    public var socialNetworks: CultureSpecificExternalResource?
    /** The link to the product support. */
    public var support: CultureSpecificExternalResource?
    /** The link to the video guides. */
    public var videoguides: CultureSpecificExternalResource?

    public init(api: CultureSpecificExternalResource? = nil, common: CultureSpecificExternalResource? = nil, forum: CultureSpecificExternalResource? = nil, helpcenter: CultureSpecificExternalResource? = nil, integrations: CultureSpecificExternalResource? = nil, site: CultureSpecificExternalResource? = nil, socialNetworks: CultureSpecificExternalResource? = nil, support: CultureSpecificExternalResource? = nil, videoguides: CultureSpecificExternalResource? = nil) {
        self.api = api
        self.common = common
        self.forum = forum
        self.helpcenter = helpcenter
        self.integrations = integrations
        self.site = site
        self.socialNetworks = socialNetworks
        self.support = support
        self.videoguides = videoguides
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case api
        case common
        case forum
        case helpcenter
        case integrations
        case site
        case socialNetworks
        case support
        case videoguides
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(api, forKey: .api)
        try container.encodeIfPresent(common, forKey: .common)
        try container.encodeIfPresent(forum, forKey: .forum)
        try container.encodeIfPresent(helpcenter, forKey: .helpcenter)
        try container.encodeIfPresent(integrations, forKey: .integrations)
        try container.encodeIfPresent(site, forKey: .site)
        try container.encodeIfPresent(socialNetworks, forKey: .socialNetworks)
        try container.encodeIfPresent(support, forKey: .support)
        try container.encodeIfPresent(videoguides, forKey: .videoguides)
    }
}

