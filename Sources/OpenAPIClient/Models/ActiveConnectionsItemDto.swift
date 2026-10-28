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

/** One open connection of a user: where the sign-in behind it came from, and the ID it can be closed by. */
public struct ActiveConnectionsItemDto: Sendable, Codable, Hashable {

    /** The ID of the sign-in this connection was opened by. Pass it as `loginEventId` to  `PUT api/2.0/security/activeconnections/logout/{loginEventId}` to end this one connection; the item whose  value equals `loginEvent` is the connection the current request uses. */
    public var id: Int
    /** The portal the sign-in was made on. The operation never crosses portals, so it is the current one on every  item. */
    public var tenantId: Int
    /** The user the connection belongs to, which is the calling user on every item - the operation cannot report  anyone else's connections. */
    public var userId: UUID
    /** Whether the sign-in came from a mobile client. No mobile marker is stored with a connection, so the value  is `false` on every item and tells a caller nothing about the device. */
    public var mobile: Bool?
    /** The IP address the sign-in came from, with the port stripped off. On the item that matches `loginEvent` it  is taken from the address the current request arrives from instead of the one stored at sign-in. */
    public var ip: String?
    /** The English name of the country the IP address is located in. It is empty when the address cannot be  located, which is the normal outcome for private and loopback addresses. */
    public var country: String?
    /** The city the IP address is located in, empty under the same conditions as `country`. */
    public var city: String?
    /** The browser and its version as parsed from the user agent of the sign-in, empty when the client sent no  recognisable one. It is refreshed from the current request on the item that matches `loginEvent`. */
    public var browser: String?
    /** The operating system as parsed from the user agent of the sign-in, refreshed and left empty under the same  conditions as `browser`. */
    public var platform: String?
    /** When the sign-in happened, in the portal time zone rather than in UTC. */
    public var date: ApiDateTime?
    /** Where in the portal the sign-in was made from: the referrer of the request that created it, or that  request's own path when it carried no referrer. Long values are cut off at 512 characters. */
    public var page: String?

    public init(id: Int, tenantId: Int, userId: UUID, mobile: Bool? = nil, ip: String? = nil, country: String? = nil, city: String? = nil, browser: String? = nil, platform: String? = nil, date: ApiDateTime? = nil, page: String? = nil) {
        self.id = id
        self.tenantId = tenantId
        self.userId = userId
        self.mobile = mobile
        self.ip = ip
        self.country = country
        self.city = city
        self.browser = browser
        self.platform = platform
        self.date = date
        self.page = page
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case tenantId
        case userId
        case mobile
        case ip
        case country
        case city
        case browser
        case platform
        case date
        case page
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(tenantId, forKey: .tenantId)
        try container.encode(userId, forKey: .userId)
        try container.encodeIfPresent(mobile, forKey: .mobile)
        try container.encodeIfPresent(ip, forKey: .ip)
        try container.encodeIfPresent(country, forKey: .country)
        try container.encodeIfPresent(city, forKey: .city)
        try container.encodeIfPresent(browser, forKey: .browser)
        try container.encodeIfPresent(platform, forKey: .platform)
        try container.encodeIfPresent(date, forKey: .date)
        try container.encodeIfPresent(page, forKey: .page)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ActiveConnectionsItemDto: Identifiable {}
