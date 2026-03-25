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

/** The audit event parameters. */
public struct AuditEventDto: Sendable, Codable, Hashable {

    /** The audit event ID. */
    public var id: Int?
    public var date: ApiDateTime?
    /** The name of the user who triggered the audit event. */
    public var user: String?
    /** The ID of the user who triggered the audit event. */
    public var userId: UUID?
    /** The audit event action. */
    public var action: String?
    public var actionId: MessageAction?
    /** The audit event IP. */
    public var ip: String?
    /** The audit event country. */
    public var country: String?
    /** The audit event city. */
    public var city: String?
    /** The audit event browser. */
    public var browser: String?
    /** The audit event platform. */
    public var platform: String?
    /** The audit event page. */
    public var page: String?
    public var actionType: ActionType?
    public var product: ProductType?
    public var location: LocationType?
    /** The list of target objects affected by the audit event (e.g., document ID, user account). */
    public var target: [String]?
    /** The list of audit entry types (e.g., Folder, User, File). */
    public var entries: [EntryType]?
    /** The audit event context. */
    public var context: String?

    public init(id: Int? = nil, date: ApiDateTime? = nil, user: String? = nil, userId: UUID? = nil, action: String? = nil, actionId: MessageAction? = nil, ip: String? = nil, country: String? = nil, city: String? = nil, browser: String? = nil, platform: String? = nil, page: String? = nil, actionType: ActionType? = nil, product: ProductType? = nil, location: LocationType? = nil, target: [String]? = nil, entries: [EntryType]? = nil, context: String? = nil) {
        self.id = id
        self.date = date
        self.user = user
        self.userId = userId
        self.action = action
        self.actionId = actionId
        self.ip = ip
        self.country = country
        self.city = city
        self.browser = browser
        self.platform = platform
        self.page = page
        self.actionType = actionType
        self.product = product
        self.location = location
        self.target = target
        self.entries = entries
        self.context = context
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case date
        case user
        case userId
        case action
        case actionId
        case ip
        case country
        case city
        case browser
        case platform
        case page
        case actionType
        case product
        case location
        case target
        case entries
        case context
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(date, forKey: .date)
        try container.encodeIfPresent(user, forKey: .user)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(action, forKey: .action)
        try container.encodeIfPresent(actionId, forKey: .actionId)
        try container.encodeIfPresent(ip, forKey: .ip)
        try container.encodeIfPresent(country, forKey: .country)
        try container.encodeIfPresent(city, forKey: .city)
        try container.encodeIfPresent(browser, forKey: .browser)
        try container.encodeIfPresent(platform, forKey: .platform)
        try container.encodeIfPresent(page, forKey: .page)
        try container.encodeIfPresent(actionType, forKey: .actionType)
        try container.encodeIfPresent(product, forKey: .product)
        try container.encodeIfPresent(location, forKey: .location)
        try container.encodeIfPresent(target, forKey: .target)
        try container.encodeIfPresent(entries, forKey: .entries)
        try container.encodeIfPresent(context, forKey: .context)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension AuditEventDto: Identifiable {}
