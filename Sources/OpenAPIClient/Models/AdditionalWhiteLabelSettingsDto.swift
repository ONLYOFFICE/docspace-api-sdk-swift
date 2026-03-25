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

/** The additional white label settings parameters. */
public struct AdditionalWhiteLabelSettingsDto: Sendable, Codable, Hashable {

    /** Specifies if the sample documents are displayed or hidden. */
    public var startDocsEnabled: Bool
    /** Specifies if the Help Center link is available or not. */
    public var helpCenterEnabled: Bool
    /** Specifies if the Feedback & Support link is available or not. */
    public var feedbackAndSupportEnabled: Bool
    /** Specifies if the user forum is available or not. */
    public var userForumEnabled: Bool
    /** Specifies if the Video Guides link is available or not. */
    public var videoGuidesEnabled: Bool
    /** Specifies if the License Agreements link is available or not. */
    public var licenseAgreementsEnabled: Bool
    /** Specifies if the additional white label settings are default or not. */
    public var isDefault: Bool

    public init(startDocsEnabled: Bool, helpCenterEnabled: Bool, feedbackAndSupportEnabled: Bool, userForumEnabled: Bool, videoGuidesEnabled: Bool, licenseAgreementsEnabled: Bool, isDefault: Bool) {
        self.startDocsEnabled = startDocsEnabled
        self.helpCenterEnabled = helpCenterEnabled
        self.feedbackAndSupportEnabled = feedbackAndSupportEnabled
        self.userForumEnabled = userForumEnabled
        self.videoGuidesEnabled = videoGuidesEnabled
        self.licenseAgreementsEnabled = licenseAgreementsEnabled
        self.isDefault = isDefault
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case startDocsEnabled
        case helpCenterEnabled
        case feedbackAndSupportEnabled
        case userForumEnabled
        case videoGuidesEnabled
        case licenseAgreementsEnabled
        case isDefault
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(startDocsEnabled, forKey: .startDocsEnabled)
        try container.encode(helpCenterEnabled, forKey: .helpCenterEnabled)
        try container.encode(feedbackAndSupportEnabled, forKey: .feedbackAndSupportEnabled)
        try container.encode(userForumEnabled, forKey: .userForumEnabled)
        try container.encode(videoGuidesEnabled, forKey: .videoGuidesEnabled)
        try container.encode(licenseAgreementsEnabled, forKey: .licenseAgreementsEnabled)
        try container.encode(isDefault, forKey: .isDefault)
    }
}

