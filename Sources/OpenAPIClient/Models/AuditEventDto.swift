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

/** One entry of the portal audit trail: who changed what, from where, and where it belongs in the product. */
public struct AuditEventDto: Sendable, Codable, Hashable {

    /** The ID of the recorded entry. Nothing accepts it as an argument - no operation fetches a single audit event  - so it serves only to tell two otherwise identical entries apart. */
    public var id: Int?
    /** When the action happened, in the portal time zone. The `from` and `to` filters are read as UTC instants, so  the two do not line up on a portal that is not on UTC. */
    public var date: ApiDateTime?
    /** The display name of the user who acted, taken from the account as it stands now rather than as it stood  when the entry was written. A localised placeholder stands in when there is no account to read: a portal  background job, an anonymous guest, or a user who has since been deleted. */
    public var user: String?
    /** The ID of the user who acted, which is what the `userId` filter of this operation matches on. It stays  readable after the account is deleted, which is when `user` falls back to a placeholder. */
    public var userId: UUID?
    /** The whole event as a readable sentence in the portal language, with the names of the objects involved  substituted into it. On the two `audit/.../last` operations each substituted value is cut to 50 characters;  the filtered operations substitute them in full. It is empty when the build has no wording for the action. */
    public var action: String?
    /** The action itself, as the `action` filter of this operation spells it and as  `GET api/2.0/security/audit/mappers` lists it under `messageAction`. Use this rather than parsing `action`,  which is prose and changes with the portal language. */
    public var actionId: MessageAction?
    /** The IP address the request came from, with the port stripped off. It is empty for an action a portal  background job performed, which has no request behind it. */
    public var ip: String?
    /** The English name of the country the IP address is located in, empty when the address cannot be located -  the normal outcome for private and loopback addresses. */
    public var country: String?
    /** The city the IP address is located in, empty under the same conditions as `country`. */
    public var city: String?
    /** The browser and its version as parsed from the user agent of the request, empty when the client sent none  that could be parsed or when no request was involved. */
    public var browser: String?
    /** The operating system as parsed from the same user agent, empty under the same conditions as `browser`. */
    public var platform: String?
    /** Where in the portal the action was made from: the referrer of the request, or that request's own path when  it carried no referrer. Long values are cut off at 512 characters. */
    public var page: String?
    /** The kind of change the action stands for, as the `actionType` filter of this operation spells it. It is  derived from `actionId`, not stored per entry, so it is the same on every entry of one action. */
    public var actionType: ActionType?
    /** The product the action belongs to. It cannot be filtered on here; the tree that groups actions by product  is `GET api/2.0/security/audit/mappers`. */
    public var product: ProductType?
    /** The location inside that product, as the `moduleType` filter of this operation spells it. It is also  derived from `actionId` rather than stored per entry. */
    public var location: LocationType?
    /** The objects the action was applied to, as the trail recorded them - a title, an account, an ID - one string  each. It is empty for an action that targets nothing, such as a settings change, and the `target` filter of  this operation matches one of these values in full. */
    public var target: [String]?
    /** The kinds of object the action applies to, holding at most two entries and none at all for an action that  targets nothing. Only the first of them can be filtered on, through `entryType`. */
    public var entries: [EntryType]?
    /** Where the action took place, spelled out in the portal language rather than as a code: for a Documents  event the room or the root folder it happened in, and for anything else the name of the module. Nothing  filters on it. */
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
