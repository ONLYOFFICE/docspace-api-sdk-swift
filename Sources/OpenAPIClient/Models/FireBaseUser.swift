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

/** The Firebase user parameters. */
public struct FireBaseUser: Sendable, Codable, Hashable {

    public static let firebaseDeviceTokenRule = StringRule(minLength: nil, maxLength: 255, pattern: nil)
    public static let applicationRule = StringRule(minLength: nil, maxLength: 20, pattern: nil)
    /** The Firebase user ID. */
    public var id: Int?
    /** The user ID. */
    public var userId: UUID?
    /** The tenant ID. */
    public var tenantId: Int?
    /** The Firebase device token. */
    public var firebaseDeviceToken: String?
    /** The Firebase application. */
    public var application: String?
    /** Specifies if the user is subscribed to the push notifications or not. */
    public var isSubscribed: Bool?
    public var tenant: DbTenant?

    public init(id: Int? = nil, userId: UUID? = nil, tenantId: Int? = nil, firebaseDeviceToken: String? = nil, application: String? = nil, isSubscribed: Bool? = nil, tenant: DbTenant? = nil) {
        self.id = id
        self.userId = userId
        self.tenantId = tenantId
        self.firebaseDeviceToken = firebaseDeviceToken
        self.application = application
        self.isSubscribed = isSubscribed
        self.tenant = tenant
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case userId
        case tenantId
        case firebaseDeviceToken
        case application
        case isSubscribed
        case tenant
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(tenantId, forKey: .tenantId)
        try container.encodeIfPresent(firebaseDeviceToken, forKey: .firebaseDeviceToken)
        try container.encodeIfPresent(application, forKey: .application)
        try container.encodeIfPresent(isSubscribed, forKey: .isSubscribed)
        try container.encodeIfPresent(tenant, forKey: .tenant)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension FireBaseUser: Identifiable {}
