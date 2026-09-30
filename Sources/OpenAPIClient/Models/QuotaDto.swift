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

/** A quota - a plan, an add-on or a wallet service - with its price, the features it switches on and their limits. */
public struct QuotaDto: Sendable, Codable, Hashable {

    /** The identifier of the quota, which is what the tariff reports as a quota `id` and what a purchase names.  A negative value belongs to a built-in quota rather than one on the price list. */
    public var id: Int
    /** The quota name in the portal language, for printing rather than matching. It is empty when this build  ships no wording for the quota, which is normal for a quota that is not on the public price list. */
    public var title: String?
    /** What the quota costs, in the currency resolved for the request. Its `value` is empty for a quota that is  not sold for money, which is what `free`, `trial` and `nonProfit` describe. */
    public var price: PriceDto
    /** Whether this is the non-profit quota, which is granted rather than bought. A portal on it cannot buy any  other plan, so a catalogue asked for plans returns this one alone. */
    public var nonProfit: Bool
    /** Whether this is the free quota a portal falls back to when nothing is paid for. It has no end date and  the tightest limits of any quota. */
    public var free: Bool
    /** Whether this is the trial quota, which grants the paid limits for a while and then expires. A trial is not  extended by paying - a plan has to be bought instead. */
    public var trial: Bool
    /** The features the quota switches on, each with the limit it grants and, on the quota the portal is  actually on, how much of that limit is already used. A feature that is absent is off, so the list is the  whole truth about what the quota includes. */
    public var features: [TenantQuotaFeatureDto]?
    /** The per-member storage allowance an administrator has set on top of the quota, and whether it is applied  at all. It describes the live portal rather than this quota, so every entry of a catalogue listing repeats  the same values, and it is empty unless the portal is a server installation or its plan includes  statistics. */
    public var usersQuota: TenantEntityQuotaSettings?
    /** The same kind of per-room storage override, filled in and read the same way as `usersQuota`. */
    public var roomsQuota: TenantEntityQuotaSettings?
    /** The same kind of per-agent storage override for AI agents, filled in and read the same way as  `usersQuota`. */
    public var aiAgentsQuota: TenantEntityQuotaSettings?
    /** The storage allowance an administrator has set for the portal as a whole, which caps it below what the  quota grants. Filled in under the same conditions as `usersQuota`. */
    public var tenantCustomQuota: TenantQuotaSettings?
    /** When the quota runs out, in UTC. It is empty on a quota from the catalogue, which has no date until it is  bought, and on a quota that never expires. */
    public var dueDate: Date?

    public init(id: Int, title: String? = nil, price: PriceDto, nonProfit: Bool, free: Bool, trial: Bool, features: [TenantQuotaFeatureDto]?, usersQuota: TenantEntityQuotaSettings? = nil, roomsQuota: TenantEntityQuotaSettings? = nil, aiAgentsQuota: TenantEntityQuotaSettings? = nil, tenantCustomQuota: TenantQuotaSettings? = nil, dueDate: Date? = nil) {
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
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(title, forKey: .title)
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
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension QuotaDto: Identifiable {}
