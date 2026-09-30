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

/** A third-party storage account connected to the portal. */
public struct ThirdPartyParams: Sendable, Codable, Hashable {

    /** The stored credentials of the account. They are not filled in here: the portal does not give back credentials  once an account is saved. */
    public var authData: AuthData?
    /** Whether the account is attached to the legacy Common section, which is the case only for accounts inherited  from an older portal. */
    public var corporate: Bool?
    /** Whether the account is attached to the Rooms section, room templates and the archive counted in. This is where  `POST api/2.0/files/thirdparty` puts every account it connects. */
    public var roomsStorage: Bool?
    /** The name the account is shown under in the portal, as it was saved when the account was connected. */
    public var customerTitle: String?
    /** The account ID to send to `DELETE api/2.0/files/thirdparty/{providerId}`, or as `providerId` to  re-authenticate the account. */
    public var providerId: Int?
    /** The storage service behind the account. `WebDav` stands for every WebDAV preset, so it does not tell which of  them was chosen when the account was connected. */
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

