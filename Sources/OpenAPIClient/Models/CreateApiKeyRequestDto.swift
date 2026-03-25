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

/** The request parameters for creating a new API key. */
public struct CreateApiKeyRequestDto: Sendable, Codable, Hashable {

    public static let nameRule = StringRule(minLength: 0, maxLength: 30, pattern: nil)
    public static let expiresInDaysRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 365, exclusiveMaximum: false, multipleOf: nil)
    /** The API key name. */
    public var name: String
    /** The list of permissions granted to the API key. */
    public var permissions: [String]?
    /** The number of days until the API key expires (null for no expiration). */
    public var expiresInDays: Int?

    public init(name: String, permissions: [String]? = nil, expiresInDays: Int? = nil) {
        self.name = name
        self.permissions = permissions
        self.expiresInDays = expiresInDays
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case permissions
        case expiresInDays
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(permissions, forKey: .permissions)
        try container.encodeIfPresent(expiresInDays, forKey: .expiresInDays)
    }
}

