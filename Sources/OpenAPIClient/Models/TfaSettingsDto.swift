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

/** The parameters representing the Two-Factor Authentication (TFA) configuration settings. */
public struct TfaSettingsDto: Sendable, Codable, Hashable {

    /** The ID of the TFA configuration. */
    public var id: String?
    /** The display name or description of the TFA configuration. */
    public var title: String?
    /** Indicates whether the TFA configuration is currently active. */
    public var enabled: Bool
    /** Indicates whether the TFA configuration can be used. */
    public var avaliable: Bool
    /** The list of IP addresses that are exempt from TFA requirements. */
    public var trustedIps: [String]?
    /** The list of user IDs that are required to use TFA. */
    public var mandatoryUsers: [UUID]?
    /** The list of group IDs whose members are required to use TFA. */
    public var mandatoryGroups: [UUID]?

    public init(id: String?, title: String?, enabled: Bool, avaliable: Bool, trustedIps: [String]? = nil, mandatoryUsers: [UUID]? = nil, mandatoryGroups: [UUID]? = nil) {
        self.id = id
        self.title = title
        self.enabled = enabled
        self.avaliable = avaliable
        self.trustedIps = trustedIps
        self.mandatoryUsers = mandatoryUsers
        self.mandatoryGroups = mandatoryGroups
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case enabled
        case avaliable
        case trustedIps
        case mandatoryUsers
        case mandatoryGroups
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encode(enabled, forKey: .enabled)
        try container.encode(avaliable, forKey: .avaliable)
        try container.encodeIfPresent(trustedIps, forKey: .trustedIps)
        try container.encodeIfPresent(mandatoryUsers, forKey: .mandatoryUsers)
        try container.encodeIfPresent(mandatoryGroups, forKey: .mandatoryGroups)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension TfaSettingsDto: Identifiable {}
