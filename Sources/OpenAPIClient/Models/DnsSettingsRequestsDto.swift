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

/** The request parameters for managing the DNS (Domain Name System) settings. */
public struct DnsSettingsRequestsDto: Sendable, Codable, Hashable {

    /** The DNS (Domain Name System) configuration name. */
    public var dnsName: String?
    /** Specifies whether the DNS settings are enabled. */
    public var enable: Bool?

    public init(dnsName: String? = nil, enable: Bool? = nil) {
        self.dnsName = dnsName
        self.enable = enable
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dnsName
        case enable
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(dnsName, forKey: .dnsName)
        try container.encodeIfPresent(enable, forKey: .enable)
    }
}

