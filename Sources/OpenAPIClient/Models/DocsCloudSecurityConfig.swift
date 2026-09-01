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

/** Represents the security configuration of a DocsCloud tenant. */
public struct DocsCloudSecurityConfig: Sendable, Codable, Hashable {

    public static let secretRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let headerRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** The security secret. */
    public var secret: String?
    /** The security header name. */
    public var header: String?

    public init(secret: String? = nil, header: String? = nil) {
        self.secret = secret
        self.header = header
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case secret
        case header
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(secret, forKey: .secret)
        try container.encodeIfPresent(header, forKey: .header)
    }
}

