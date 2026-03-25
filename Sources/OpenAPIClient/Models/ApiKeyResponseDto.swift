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

/** The response data for the API key operations. */
public struct ApiKeyResponseDto: Sendable, Codable, Hashable {

    /** The API key unique identifier. */
    public var id: UUID
    /** The API key name. */
    public var name: String?
    /** The full API key value (only returned when creating a new key). */
    public var key: String?
    /** The API key postfix (used for identification). */
    public var keyPostfix: String?
    /** The list of permissions granted to the API key. */
    public var permissions: [String]?
    public var lastUsed: ApiDateTime?
    public var createOn: ApiDateTime?
    public var createBy: EmployeeDto?
    public var expiresAt: ApiDateTime?
    /** Indicates whether the API key is active or not. */
    public var isActive: Bool

    public init(id: UUID, name: String?, key: String?, keyPostfix: String? = nil, permissions: [String]?, lastUsed: ApiDateTime? = nil, createOn: ApiDateTime? = nil, createBy: EmployeeDto? = nil, expiresAt: ApiDateTime? = nil, isActive: Bool) {
        self.id = id
        self.name = name
        self.key = key
        self.keyPostfix = keyPostfix
        self.permissions = permissions
        self.lastUsed = lastUsed
        self.createOn = createOn
        self.createBy = createBy
        self.expiresAt = expiresAt
        self.isActive = isActive
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case key
        case keyPostfix
        case permissions
        case lastUsed
        case createOn
        case createBy
        case expiresAt
        case isActive
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(key, forKey: .key)
        try container.encodeIfPresent(keyPostfix, forKey: .keyPostfix)
        try container.encode(permissions, forKey: .permissions)
        try container.encodeIfPresent(lastUsed, forKey: .lastUsed)
        try container.encodeIfPresent(createOn, forKey: .createOn)
        try container.encodeIfPresent(createBy, forKey: .createBy)
        try container.encodeIfPresent(expiresAt, forKey: .expiresAt)
        try container.encode(isActive, forKey: .isActive)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ApiKeyResponseDto: Identifiable {}
