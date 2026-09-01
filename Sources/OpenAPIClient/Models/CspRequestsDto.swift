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

/** The request parameters for configuring the Content Security Policy (CSP) settings. */
public struct CspRequestsDto: Sendable, Codable, Hashable {

    /** The collection of allowed domains in the Content Security Policy (CSP). */
    public var domains: [String]?

    public init(domains: [String]? = nil) {
        self.domains = domains
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case domains
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(domains, forKey: .domains)
    }
}

