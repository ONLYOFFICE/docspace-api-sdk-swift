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

/** The wallet service information. */
public struct WalletServiceDto: Sendable, Codable, Hashable {

    /** The quota ID. */
    public var id: Int
    /** The quota title. */
    public var title: String?
    public var price: PriceDto
    /** Specifies if the quota is nonprofit or not. */
    public var nonProfit: Bool
    /** Specifies if the quota is free or not. */
    public var free: Bool
    /** Specifies if the quota is trial or not. */
    public var trial: Bool
    /** The list of tenant quota features. */
    public var features: [TenantQuotaFeatureDto]?
    public var usersQuota: TenantEntityQuotaSettings?
    public var roomsQuota: TenantEntityQuotaSettings?
    public var aiAgentsQuota: TenantEntityQuotaSettings?
    public var tenantCustomQuota: TenantQuotaSettings?
    /** The due date. */
    public var dueDate: Date?
    /** The list of inner services. */
    public var innerServices: [WalletServiceDto]?
    /** The service name. */
    public var serviceName: String?

    public init(id: Int, title: String?, price: PriceDto, nonProfit: Bool, free: Bool, trial: Bool, features: [TenantQuotaFeatureDto]?, usersQuota: TenantEntityQuotaSettings? = nil, roomsQuota: TenantEntityQuotaSettings? = nil, aiAgentsQuota: TenantEntityQuotaSettings? = nil, tenantCustomQuota: TenantQuotaSettings? = nil, dueDate: Date? = nil, innerServices: [WalletServiceDto]? = nil, serviceName: String? = nil) {
        self.id = id
        self.title = title
        self.price = price
        self.nonProfit = nonProfit
        self.free = free
        self.trial = trial
        self.features = features
        self.usersQuota = usersQuota
        self.roomsQuota = roomsQuota
        self.aiAgentsQuota = aiAgentsQuota
        self.tenantCustomQuota = tenantCustomQuota
        self.dueDate = dueDate
        self.innerServices = innerServices
        self.serviceName = serviceName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case price
        case nonProfit
        case free
        case trial
        case features
        case usersQuota
        case roomsQuota
        case aiAgentsQuota
        case tenantCustomQuota
        case dueDate
        case innerServices
        case serviceName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encode(price, forKey: .price)
        try container.encode(nonProfit, forKey: .nonProfit)
        try container.encode(free, forKey: .free)
        try container.encode(trial, forKey: .trial)
        try container.encode(features, forKey: .features)
        try container.encodeIfPresent(usersQuota, forKey: .usersQuota)
        try container.encodeIfPresent(roomsQuota, forKey: .roomsQuota)
        try container.encodeIfPresent(aiAgentsQuota, forKey: .aiAgentsQuota)
        try container.encodeIfPresent(tenantCustomQuota, forKey: .tenantCustomQuota)
        try container.encodeIfPresent(dueDate, forKey: .dueDate)
        try container.encodeIfPresent(innerServices, forKey: .innerServices)
        try container.encodeIfPresent(serviceName, forKey: .serviceName)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension WalletServiceDto: Identifiable {}
