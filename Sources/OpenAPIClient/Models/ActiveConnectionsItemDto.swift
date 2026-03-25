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

/** The active connection item parameters. */
public struct ActiveConnectionsItemDto: Sendable, Codable, Hashable {

    /** The active connection ID. */
    public var id: Int
    /** The tenant ID. */
    public var tenantId: Int
    /** The user ID. */
    public var userId: UUID
    /** Specifies if the active connection has a mobile phone or not. */
    public var mobile: Bool?
    /** The IP address of the active connection. */
    public var ip: String?
    /** The active connection country. */
    public var country: String?
    /** The active connection city. */
    public var city: String?
    /** The active connection browser. */
    public var browser: String?
    /** The active connection platform. */
    public var platform: String?
    public var date: ApiDateTime?
    /** The active connection page. */
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
