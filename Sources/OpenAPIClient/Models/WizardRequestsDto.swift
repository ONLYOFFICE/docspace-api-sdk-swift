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

/** What the initial setup wizard needs to finish a new portal: the owner credentials and the portal locale. */
public struct WizardRequestsDto: Sendable, Codable, Hashable {

    /** The address the portal owner account is created with, which is also the address every administrative letter  goes to afterwards. It has to be a well-formed email address; a malformed one leaves the wizard unfinished. */
    public var email: String?
    /** The owner password, already hashed in the client rather than sent in the clear. Hash it with the `salt`,  iteration count and hash size that `GET api/2.0/settings?withpassword=true` publishes, so the portal can  recognise it later; an empty value leaves the wizard unfinished. */
    public var passwordHash: String?
    /** The portal interface language, as a culture name such as `en-US`. It has to be one of the cultures enabled  for the installation, and an unknown one leaves the shipped default in place instead of failing the wizard. */
    public var lng: String?
    /** The time zone every portal date is rendered in, as an IANA identifier such as `Europe/Riga`. A value that  matches nothing falls back to UTC rather than failing the wizard. */
    public var timeZone: String?
    /** The identifier of the Amazon Machine Image the portal was launched from, for an installation started from an  AWS image. It is recorded for the installation record only and changes nothing about the portal; leave it out  anywhere else. */
    public var amiId: String?
    /** Whether the owner agrees to receive product news at the address in `email`. It is a mailing consent and has  no bearing on the portal notifications, which are subscribed separately. */
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

