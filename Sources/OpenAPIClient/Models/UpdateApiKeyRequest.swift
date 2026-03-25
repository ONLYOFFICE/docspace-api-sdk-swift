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

/** The request parameters for updating an existing API key. */
public struct UpdateApiKeyRequest: Sendable, Codable, Hashable {

    public static let nameRule = StringRule(minLength: 0, maxLength: 30, pattern: nil)
    /** The new name for the API key. */
    public var name: String?
    /** The new list of permissions for the API key. */
    public var permissions: [String]?
    /** Indicates whether the API key should be active or not. */
    public var isActive: Bool?

    public init(name: String? = nil, permissions: [String]? = nil, isActive: Bool? = nil) {
        self.name = name
        self.permissions = permissions
        self.isActive = isActive
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case permissions
        case isActive
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(permissions, forKey: .permissions)
        try container.encodeIfPresent(isActive, forKey: .isActive)
    }
}

