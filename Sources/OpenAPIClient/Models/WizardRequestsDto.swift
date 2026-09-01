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

/** The request parameters for initial configuration of the setup wizard. */
public struct WizardRequestsDto: Sendable, Codable, Hashable {

    /** The user's email address for authentication and communication. */
    public var email: String?
    /** The hashed representation of the user's password. */
    public var passwordHash: String?
    /** The user's preferred interface language code. */
    public var lng: String?
    /** The user's time zone identifier. */
    public var timeZone: String?
    /** The Amazon Machine Image (AMI) identifier. */
    public var amiId: String?
    /** Specifies whether the user opted in for site communications. */
    public var subscribeFromSite: Bool?

    public init(email: String?, passwordHash: String?, lng: String? = nil, timeZone: String? = nil, amiId: String? = nil, subscribeFromSite: Bool? = nil) {
        self.email = email
        self.passwordHash = passwordHash
        self.lng = lng
        self.timeZone = timeZone
        self.amiId = amiId
        self.subscribeFromSite = subscribeFromSite
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case passwordHash
        case lng
        case timeZone
        case amiId
        case subscribeFromSite
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(email, forKey: .email)
        try container.encode(passwordHash, forKey: .passwordHash)
        try container.encodeIfPresent(lng, forKey: .lng)
        try container.encodeIfPresent(timeZone, forKey: .timeZone)
        try container.encodeIfPresent(amiId, forKey: .amiId)
        try container.encodeIfPresent(subscribeFromSite, forKey: .subscribeFromSite)
    }
}

