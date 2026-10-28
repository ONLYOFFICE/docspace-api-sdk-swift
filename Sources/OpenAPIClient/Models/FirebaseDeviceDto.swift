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

/** One mobile device of the calling user registered for push notifications. */
public struct FirebaseDeviceDto: Sendable, Codable, Hashable {

    /** The id of the registration. */
    public var id: Int?
    /** The account the device belongs to; always the caller. */
    public var userId: UUID?
    /** The portal the registration belongs to; always the current one. */
    public var tenantId: Int?
    /** The Firebase token the device was issued, as it was sent at registration. */
    public var firebaseDeviceToken: String?
    /** The application the registration is for; `doc` for the Documents application. */
    public var application: String?
    /** Whether the device is currently sent push notifications. */
    public var isSubscribed: Bool?

    public init(id: Int? = nil, userId: UUID? = nil, tenantId: Int? = nil, firebaseDeviceToken: String? = nil, application: String? = nil, isSubscribed: Bool? = nil) {
        self.id = id
        self.userId = userId
        self.tenantId = tenantId
        self.firebaseDeviceToken = firebaseDeviceToken
        self.application = application
        self.isSubscribed = isSubscribed
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case userId
        case tenantId
        case firebaseDeviceToken
        case application
        case isSubscribed
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
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension FirebaseDeviceDto: Identifiable {}
