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

/** One entry of the portal login history: a sign-in, a sign-out or a failed attempt, and where it came from. */
public struct LoginEventDto: Sendable, Codable, Hashable {

    /** The ID of the recorded sign-in. When the entry is a successful sign-in that is still open, this is also  the value `GET api/2.0/security/activeconnections` reports as the connection's `id`. */
    public var id: Int?
    /** When the attempt was made, in the portal time zone. The `from` and `to` filters are read as UTC instants,  so the two do not line up on a portal that is not on UTC. */
    public var date: ApiDateTime?
    /** The display name of the account the attempt was made against, taken from the account as it stands now  rather than as it stood at the time. A localised placeholder stands in when there is no account to read,  which is the usual case for a failed attempt on an address nobody owns. */
    public var user: String?
    /** The ID of that account, which is what the `userId` filter of this operation matches on. It is the empty  GUID when the attempt could not be tied to an account. */
    public var userId: UUID?
    /** The login string as it was typed - normally the email address. It is the only field that survives a failed  attempt against an unknown account, which makes it the one to read when `user` is a placeholder. */
    public var login: String?
    /** The event as a readable sentence in the portal language. On `GET api/2.0/security/audit/login/last` each  substituted value is cut to 50 characters; the filtered operation substitutes them in full. */
    public var action: String?
    /** What happened, as the `action` filter of this operation spells it: a successful sign-in, a failed one, a  sign-out. Use this rather than parsing `action`, which is prose and changes with the portal language. */
    public var actionId: MessageAction?
    /** The IP address the attempt came from, with the port stripped off. */
    public var ip: String?
    /** The English name of the country the IP address is located in, empty when the address cannot be located -  the normal outcome for private and loopback addresses. */
    public var country: String?
    /** The city the IP address is located in, empty under the same conditions as `country`. */
    public var city: String?
    /** The browser and its version as parsed from the user agent of the attempt, empty when the client sent none  that could be parsed. */
    public var browser: String?
    /** The operating system as parsed from the same user agent, empty under the same conditions as `browser`. */
    public var platform: String?
    /** Where in the portal the attempt was made from: the referrer of the request, or that request's own path  when it carried no referrer. Long values are cut off at 512 characters. */
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
