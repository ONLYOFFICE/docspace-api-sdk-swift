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

/** The Content Security Policy of the portal: the domains an administrator allowed, and the header built from them. */
public struct CspDto: Sendable, Codable, Hashable {

    /** The external hosts an administrator has allowed, each in the form it was saved in - a bare host, a host  with a scheme, or a wildcard such as `*.example.com`. An empty list means nobody has added one, not that  the portal serves no policy. */
    public var domains: [String]?
    /** The complete policy value the portal sends to browsers, assembled from `domains` together with the  portal's own sources and the integrations it has switched on. It is therefore wider than `domains` alone,  and is filled in even while that list is empty. */
    public var header: String?

    public init(domains: [String]?, header: String?) {
        self.domains = domains
        self.header = header
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case domains
        case header
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(domains, forKey: .domains)
        try container.encode(header, forKey: .header)
    }
}

