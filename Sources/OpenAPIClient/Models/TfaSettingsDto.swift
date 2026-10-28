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

/** One two-factor authentication method the portal offers, with the portal-wide state of that method. */
public struct TfaSettingsDto: Sendable, Codable, Hashable {

    /** Which method this entry describes: `sms` for a code sent by text message, `app` for a code from an  authenticator application. It is the value `PUT api/2.0/settings/tfaapp` takes as its `type`, and no other  value ever appears here. */
    public var id: String?
    /** The label for the method in the portal language, meant for a button or a radio option. It is not stable  enough to branch on - match `id` for that. */
    public var title: String?
    /** Whether this method is the portal's current policy. At most one entry can have it set, and none has it  while the portal challenges nobody. It says nothing about the caller's own account, which may be exempt  through `trustedIps` or forced through `mandatoryUsers`. */
    public var enabled: Bool
    /** Whether the method could be switched on at all. For `sms` it is `false` until the installation has a  working SMS provider, so a method can be offered here and still be impossible to enable; for `app` it is  always `true`. */
    public var available: Bool
    /** The addresses that skip the challenge, each either a single address, a `from-to` pair or a CIDR range. It  is empty when no address is exempt, which means every account is challenged. */
    public var trustedIps: [String]?
    /** The accounts that are challenged even from a trusted address, by user ID. Empty means the exemption in  `trustedIps` holds for everyone. */
    public var mandatoryUsers: [UUID]?
    /** The groups whose members are challenged even from a trusted address, by group ID, with the same reading of  an empty list as `mandatoryUsers`. */
    public var mandatoryGroups: [UUID]?

    public init(id: String?, title: String?, enabled: Bool, available: Bool, trustedIps: [String]? = nil, mandatoryUsers: [UUID]? = nil, mandatoryGroups: [UUID]? = nil) {
        self.id = id
        self.title = title
        self.enabled = enabled
        self.available = available
        self.trustedIps = trustedIps
        self.mandatoryUsers = mandatoryUsers
        self.mandatoryGroups = mandatoryGroups
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case enabled
        case available
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
        try container.encode(available, forKey: .available)
        try container.encodeIfPresent(trustedIps, forKey: .trustedIps)
        try container.encodeIfPresent(mandatoryUsers, forKey: .mandatoryUsers)
        try container.encodeIfPresent(mandatoryGroups, forKey: .mandatoryGroups)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension TfaSettingsDto: Identifiable {}
