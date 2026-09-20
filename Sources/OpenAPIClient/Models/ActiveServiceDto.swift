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

/** One wallet service the portal is running right now, with the allowance it grants where that is counted. */
public struct ActiveServiceDto: Sendable, Codable, Hashable {

    /** The stable key of the service, which is what `POST api/2.0/portal/payment/servicestate` takes to switch  it off again. */
    public var service: String?
    /** What `limit` and `used` count, in the portal language - gigabytes, editor seats, credits. */
    public var serviceUnit: String?
    /** Whether the service is billed as a standing subscription rather than per unit consumed. Only a  subscription can carry `limit` and `used`. */
    public var subscription: Bool?
    /** The service name in the portal language, for printing rather than matching. */
    public var title: String?
    /** How much of the service the portal is entitled to. It is empty for a service whose consumption is not  counted this way, which is not the same as a service without a limit. */
    public var limit: Int?
    /** How much of that allowance is in use - the editors currently active for the cloud editors, the units  already consumed for disk storage. Empty under the same conditions as `limit`. */
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

