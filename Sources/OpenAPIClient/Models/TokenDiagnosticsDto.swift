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

/** What the current token carries, for diagnostics. */
public struct TokenDiagnosticsDto: Sendable, Codable, Hashable {

    /** The name of the authenticated identity. */
    public var name: String?
    /** The claims of the identity, each formatted as type:value. */
    public var claims: [String]?

    public init(name: String? = nil, claims: [String]? = nil) {
        self.name = name
        self.claims = claims
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case claims
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(claims, forKey: .claims)
    }
}

