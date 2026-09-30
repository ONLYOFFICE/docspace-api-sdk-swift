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

/** Who is invited to join the portal, and in which language the invitation is written. */
public struct AdminMessageBaseSettingsRequestsDto: Sendable, Codable, Hashable {

    public static let emailRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** The address the join link is sent to. It has to be a well-formed ASCII address rather than an  internationalized one, must not already belong to a member of the portal, and, where the portal trusts named  domains only, has to end with one of them; any of these faults is refused with 400. */
    public var email: String?
    /** The language the letter is written in, as a culture name such as `en-US`. A culture the installation does not  have falls back to the portal language rather than failing the call. */
    public var culture: String?

    public init(email: String?, culture: String? = nil) {
        self.email = email
        self.culture = culture
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case culture
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(email, forKey: .email)
        try container.encodeIfPresent(culture, forKey: .culture)
    }
}

