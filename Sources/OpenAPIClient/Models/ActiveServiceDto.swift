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

/** Represents an active wallet service (quota) of the current portal. */
public struct ActiveServiceDto: Sendable, Codable, Hashable {

    /** The name of the service. */
    public var service: String?
    /** The unit of measurement for the service. */
    public var serviceUnit: String?
    /** Indicates whether the service is subscription-based. */
    public var subscription: Bool?
    /** The title of the service. */
    public var title: String?
    /** The service limit. Populated only for the subscription-based services. */
    public var limit: Int?
    /** The current service usage. Populated only for the subscription-based services. */
    public var used: Int?

    public init(service: String? = nil, serviceUnit: String? = nil, subscription: Bool? = nil, title: String? = nil, limit: Int? = nil, used: Int? = nil) {
        self.service = service
        self.serviceUnit = serviceUnit
        self.subscription = subscription
        self.title = title
        self.limit = limit
        self.used = used
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case service
        case serviceUnit
        case subscription
        case title
        case limit
        case used
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(service, forKey: .service)
        try container.encodeIfPresent(serviceUnit, forKey: .serviceUnit)
        try container.encodeIfPresent(subscription, forKey: .subscription)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(limit, forKey: .limit)
        try container.encodeIfPresent(used, forKey: .used)
    }
}

