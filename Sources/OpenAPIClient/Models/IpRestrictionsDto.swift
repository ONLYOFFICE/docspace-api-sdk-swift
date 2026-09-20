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

/** The addresses allowed to reach the portal, and whether the restriction is enforced. */
public struct IpRestrictionsDto: Sendable, Codable, Hashable {

    /** The allowed addresses, each entry pairing a single IPv4 or IPv6 address with the flag that limits it to  administrators. This is the whole list that is to hold afterwards: entries not repeated here are deleted.  Ranges written as `from-to` and CIDR blocks are refused with 400, even though the portal matches such forms  when they are already stored. Enforcement spares only the portal owner and the installation own networks, so  a list without the caller address locks the remaining administrators out. */
    public var ipRestrictions: [IpRestrictionBase]?
    /** Whether the list is enforced. Leaving it out follows the list - on when addresses are sent, off when the list  is empty - and sending `true` with an empty list is refused with 400, since that would admit nobody. */
    public var enable: Bool?

    public init(ipRestrictions: [IpRestrictionBase]?, enable: Bool? = nil) {
        self.ipRestrictions = ipRestrictions
        self.enable = enable
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case ipRestrictions
        case enable
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(ipRestrictions, forKey: .ipRestrictions)
        try container.encodeIfPresent(enable, forKey: .enable)
    }
}

