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

/** The additional white label settings. */
public struct AdditionalWhiteLabelSettings: Sendable, Codable, Hashable {

    /** Specifies if the sample documents are displayed or hidden. */
    public var startDocsEnabled: Bool?
    /** Specifies if the Help Center link is available or not. */
    public var helpCenterEnabled: Bool?
    /** Specifies if the Feedback & Support link is available or not. */
    public var feedbackAndSupportEnabled: Bool?
    /** Specifies if the user forum is available or not. */
    public var userForumEnabled: Bool?
    /** Specifies if the Video Guides link is available or not. */
    public var videoGuidesEnabled: Bool?
    /** Specifies if the License Agreements link is available or not. */
    public var licenseAgreementsEnabled: Bool?
    /** The timestamp indicating when the settings were last modified. */
    public var lastModified: Date?

    public init(startDocsEnabled: Bool? = nil, helpCenterEnabled: Bool? = nil, feedbackAndSupportEnabled: Bool? = nil, userForumEnabled: Bool? = nil, videoGuidesEnabled: Bool? = nil, licenseAgreementsEnabled: Bool? = nil, lastModified: Date? = nil) {
        self.startDocsEnabled = startDocsEnabled
        self.helpCenterEnabled = helpCenterEnabled
        self.feedbackAndSupportEnabled = feedbackAndSupportEnabled
        self.userForumEnabled = userForumEnabled
        self.videoGuidesEnabled = videoGuidesEnabled
        self.licenseAgreementsEnabled = licenseAgreementsEnabled
        self.lastModified = lastModified
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case startDocsEnabled
        case helpCenterEnabled
        case feedbackAndSupportEnabled
        case userForumEnabled
        case videoGuidesEnabled
        case licenseAgreementsEnabled
        case lastModified
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(startDocsEnabled, forKey: .startDocsEnabled)
        try container.encodeIfPresent(helpCenterEnabled, forKey: .helpCenterEnabled)
        try container.encodeIfPresent(feedbackAndSupportEnabled, forKey: .feedbackAndSupportEnabled)
        try container.encodeIfPresent(userForumEnabled, forKey: .userForumEnabled)
        try container.encodeIfPresent(videoGuidesEnabled, forKey: .videoGuidesEnabled)
        try container.encodeIfPresent(licenseAgreementsEnabled, forKey: .licenseAgreementsEnabled)
        try container.encodeIfPresent(lastModified, forKey: .lastModified)
    }
}

