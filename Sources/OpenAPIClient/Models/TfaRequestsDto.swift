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

/** The portal two-factor policy: which method is in force, who must pass it, and from where it is waived. */
public struct TfaRequestsDto: Sendable, Codable, Hashable {

    /** The second factor the portal demands. The two methods are mutually exclusive, so switching one on switches  the other off, and any value outside the defined set is read as switching TFA off rather than refused. */
    public var type: TfaRequestsDtoType?
    /** The account the request concerns, by portal user ID. Naming the portal owner is refused unless it is the  caller's own account. Where an operation detaches an authenticator application, the empty GUID and the  caller's own ID both mean the caller. */
    public var id: UUID?
    /** The list of IP addresses that bypass TFA verification. Each entry is a single address, an inclusive  from-to range or a CIDR block. This is the whole list that is to hold afterwards, so send the addresses  already trusted along with a new one; an entry that cannot be parsed fails the call with 400, and accounts  named as mandatory still have to pass the challenge even from a trusted address. */
    public var trustedIps: [String]?
    /** The accounts that must pass the challenge whatever their address, by portal user ID. This is the whole list  that is to hold afterwards - leaving it out clears it rather than keeping it - and naming the portal owner is  refused unless the caller is the owner. */
    public var mandatoryUsers: [UUID]?
    /** The groups whose members must pass the challenge whatever their address, by group ID. This is the whole list  that is to hold afterwards - leaving it out clears it rather than keeping it. */
    public var mandatoryGroups: [UUID]?

    public init(type: TfaRequestsDtoType? = nil, id: UUID? = nil, trustedIps: [String]? = nil, mandatoryUsers: [UUID]? = nil, mandatoryGroups: [UUID]? = nil) {
        self.type = type
        self.id = id
        self.trustedIps = trustedIps
        self.mandatoryUsers = mandatoryUsers
        self.mandatoryGroups = mandatoryGroups
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case id
        case trustedIps
        case mandatoryUsers
        case mandatoryGroups
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(trustedIps, forKey: .trustedIps)
        try container.encodeIfPresent(mandatoryUsers, forKey: .mandatoryUsers)
        try container.encodeIfPresent(mandatoryGroups, forKey: .mandatoryGroups)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension TfaRequestsDto: Identifiable {}
