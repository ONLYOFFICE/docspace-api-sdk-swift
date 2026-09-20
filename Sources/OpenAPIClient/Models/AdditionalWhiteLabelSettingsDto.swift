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

/** Which of the ONLYOFFICE help and community entries the interface may offer, installation-wide. */
public struct AdditionalWhiteLabelSettingsDto: Sendable, Codable, Hashable {

    /** Whether the sample documents that ONLYOFFICE ships may be placed in a new user's Documents. Unlike the link  flags below it depends on nothing that has to be configured, so its built-in value is always `true`. */
    public var startDocsEnabled: Bool
    /** Whether the interface may offer the Help Center entry. It is `false` both when the entry was switched off  for the installation and when the installation configures no Help Center address at all; the addresses  themselves are not part of this answer and arrive in `externalResources` of `GET api/2.0/settings`. */
    public var helpCenterEnabled: Bool
    /** Whether the interface may offer the Feedback and Support entry, `false` for the same two reasons as  `helpCenterEnabled`. */
    public var feedbackAndSupportEnabled: Bool
    /** Whether the interface may offer the user forum entry, `false` for the same two reasons as  `helpCenterEnabled`. */
    public var userForumEnabled: Bool
    /** Whether the interface may offer the Video Guides entry, `false` for the same two reasons as  `helpCenterEnabled`. */
    public var videoGuidesEnabled: Bool
    /** Whether the interface may offer the License Agreements entry, `false` for the same two reasons as  `helpCenterEnabled`. */
    public var licenseAgreementsEnabled: Bool
    /** Whether all six flags still hold the values the installation starts out with. It turns `false` as soon as  one of them is saved differently and `true` again after `DELETE api/2.0/settings/rebranding/additional`.  Because a link flag starts out off when no address is configured for it, `true` does not mean every entry  is on. */
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

