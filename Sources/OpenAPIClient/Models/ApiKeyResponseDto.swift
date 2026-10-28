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

    /** The ID of the key. This is the value to pass to `PUT api/2.0/keys/{keyId}` and  `DELETE api/2.0/keys/{keyId}`. */
    public var id: UUID
    /** The label given to the key when it was created or last updated. */
    public var name: String?
    /** The secret to send in the `Authorization` header as `Bearer sk-...`. It is filled in only by the answer of  `POST api/2.0/keys` and cannot be read again afterwards, so it has to be stored at that moment. */
    public var key: String?
    /** The last four characters of the secret. It is the only part of the secret that later reads expose, and it is  meant for telling keys apart in a list. */
    public var keyPostfix: String?
    /** The scopes the key may use, as accepted by `GET api/2.0/keys/permissions`. An empty list means the key has no  scope restrictions. */
    public var permissions: [String]?
    /** The UTC moment the key was last used to authenticate a request. It is empty for a key that has never been  used. */
    public var lastUsed: ApiDateTime?
    /** The UTC moment the key was created. */
    public var createOn: ApiDateTime?
    /** The portal member who created the key, and whose access the key acts with. */
    public var createBy: EmployeeDto?
    /** The UTC moment the key stops working. It is empty for a key created without `expiresInDays`, which never  expires. */
    public var expiresAt: ApiDateTime?
    /** Whether the key may authenticate requests. A key deactivated through `PUT api/2.0/keys/{keyId}` stays in the  list with this field set to false. */
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
