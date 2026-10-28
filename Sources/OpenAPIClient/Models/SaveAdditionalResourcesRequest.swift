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

/** Which help and community resources the interface links to. */
public struct SaveAdditionalResourcesRequest: Sendable, Codable, Hashable {

    /** Whether the getting-started documents are offered. */
    public var startDocsEnabled: Bool?
    /** Whether the help center is linked. */
    public var helpCenterEnabled: Bool?
    /** Whether the feedback and support link is shown. */
    public var feedbackAndSupportEnabled: Bool?
    /** Whether the user forum is linked. */
    public var userForumEnabled: Bool?
    /** Whether the video guides are linked. */
    public var videoGuidesEnabled: Bool?
    /** Whether the license agreements are linked. */
    public var licenseAgreementsEnabled: Bool?
    /** Accepted for compatibility with earlier clients and not read: the server keeps its own value. */
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

