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

/** Represents a DocsCloud tenant of a portal. */
public struct DocsCloudTenant: Sendable, Codable, Hashable {

    /** The external ID of the dedicated resource the tenant is hosted on. */
    public var dedicatedResourceExId: Int?
    /** The tenant alias. */
    public var alias: String?
    /** The tenant name. */
    public var name: String?
    /** The date and time when the tenant was last modified. */
    public var modifiedDate: Date?
    /** The customer ID. */
    public var customerId: String?
    /** The customer name. */
    public var customerName: String?
    /** The date and time when the tenant subscription ends. */
    public var endDate: Date?
    /** The resource type. */
    public var resourceType: Int?
    /** Whether the tenant is active (the end date is in the future). */
    public var isActive: Bool?
    /** The tenant address. */
    public var address: String?
    /** The tenant payment information. */
    public var payment: DocsCloudPayment?

    public init(dedicatedResourceExId: Int? = nil, alias: String? = nil, name: String? = nil, modifiedDate: Date? = nil, customerId: String? = nil, customerName: String? = nil, endDate: Date? = nil, resourceType: Int? = nil, isActive: Bool? = nil, address: String? = nil, payment: DocsCloudPayment? = nil) {
        self.dedicatedResourceExId = dedicatedResourceExId
        self.alias = alias
        self.name = name
        self.modifiedDate = modifiedDate
        self.customerId = customerId
        self.customerName = customerName
        self.endDate = endDate
        self.resourceType = resourceType
        self.isActive = isActive
        self.address = address
        self.payment = payment
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dedicatedResourceExId
        case alias
        case name
        case modifiedDate
        case customerId
        case customerName
        case endDate
        case resourceType
        case isActive
        case address
        case payment
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(dedicatedResourceExId, forKey: .dedicatedResourceExId)
        try container.encodeIfPresent(alias, forKey: .alias)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(modifiedDate, forKey: .modifiedDate)
        try container.encodeIfPresent(customerId, forKey: .customerId)
        try container.encodeIfPresent(customerName, forKey: .customerName)
        try container.encodeIfPresent(endDate, forKey: .endDate)
        try container.encodeIfPresent(resourceType, forKey: .resourceType)
        try container.encodeIfPresent(isActive, forKey: .isActive)
        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(payment, forKey: .payment)
    }
}

