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

/** The login event parameters. */
public struct LoginEventDto: Sendable, Codable, Hashable {

    /** The login event ID. */
    public var id: Int?
    public var date: ApiDateTime?
    /** The user name of the login event. */
    public var user: String?
    /** The user ID of the login event. */
    public var userId: UUID?
    /** The user login of the login event. */
    public var login: String?
    /** The login event action. */
    public var action: String?
    public var actionId: MessageAction?
    /** The login event IP. */
    public var ip: String?
    /** The login event country. */
    public var country: String?
    /** The login event city. */
    public var city: String?
    /** The login event browser. */
    public var browser: String?
    /** The login event platform. */
    public var platform: String?
    /** The login event page. */
    public var page: String?

    public init(id: Int? = nil, date: ApiDateTime? = nil, user: String? = nil, userId: UUID? = nil, login: String? = nil, action: String? = nil, actionId: MessageAction? = nil, ip: String? = nil, country: String? = nil, city: String? = nil, browser: String? = nil, platform: String? = nil, page: String? = nil) {
        self.id = id
        self.date = date
        self.user = user
        self.userId = userId
        self.login = login
        self.action = action
        self.actionId = actionId
        self.ip = ip
        self.country = country
        self.city = city
        self.browser = browser
        self.platform = platform
        self.page = page
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case date
        case user
        case userId
        case login
        case action
        case actionId
        case ip
        case country
        case city
        case browser
        case platform
        case page
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(date, forKey: .date)
        try container.encodeIfPresent(user, forKey: .user)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(login, forKey: .login)
        try container.encodeIfPresent(action, forKey: .action)
        try container.encodeIfPresent(actionId, forKey: .actionId)
        try container.encodeIfPresent(ip, forKey: .ip)
        try container.encodeIfPresent(country, forKey: .country)
        try container.encodeIfPresent(city, forKey: .city)
        try container.encodeIfPresent(browser, forKey: .browser)
        try container.encodeIfPresent(platform, forKey: .platform)
        try container.encodeIfPresent(page, forKey: .page)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension LoginEventDto: Identifiable {}
