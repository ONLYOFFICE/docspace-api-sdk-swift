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

/** The third-party account parameters. */
public struct ThirdPartyParams: Sendable, Codable, Hashable {

    public var authData: AuthData?
    /** Specifies if this is a corporate account or not. */
    public var corporate: Bool?
    /** Specifies if this is a room storage or not. */
    public var roomsStorage: Bool?
    /** The customer title. */
    public var customerTitle: String?
    /** The provider ID. */
    public var providerId: Int?
    /** The provider key. */
    public var providerKey: String?

    public init(authData: AuthData? = nil, corporate: Bool? = nil, roomsStorage: Bool? = nil, customerTitle: String? = nil, providerId: Int? = nil, providerKey: String? = nil) {
        self.authData = authData
        self.corporate = corporate
        self.roomsStorage = roomsStorage
        self.customerTitle = customerTitle
        self.providerId = providerId
        self.providerKey = providerKey
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case authData = "auth_data"
        case corporate
        case roomsStorage
        case customerTitle = "customer_title"
        case providerId = "provider_id"
        case providerKey = "provider_key"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(authData, forKey: .authData)
        try container.encodeIfPresent(corporate, forKey: .corporate)
        try container.encodeIfPresent(roomsStorage, forKey: .roomsStorage)
        try container.encodeIfPresent(customerTitle, forKey: .customerTitle)
        try container.encodeIfPresent(providerId, forKey: .providerId)
        try container.encodeIfPresent(providerKey, forKey: .providerKey)
    }
}

