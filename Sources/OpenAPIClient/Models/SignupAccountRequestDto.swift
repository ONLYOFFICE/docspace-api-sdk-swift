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

/** The request parameters for creating a third-party account. */
public struct SignupAccountRequestDto: Sendable, Codable, Hashable {

    /** The type the invitation link is looked up as, defaulting to `RoomAdmin`. It does not decide the resulting  type: the link itself does, and this value only has to match the kind of link that was issued. */
    public var employeeType: EmployeeType?
    /** The key of the invitation link being accepted, taken from the link the invitation email or the room  invitation contains. An expired or already used key is rejected with 403. */
    public var key: String?
    /** The culture to set on the new profile, as a culture code. It is applied only when the portal has that culture  enabled, and otherwise the portal default is kept. */
    public var culture: String?
    /** The profile a completed provider authorization produced, in the serialized form the login flow hands back.  Pass that value unchanged; the first name, the last name, the email and the avatar of the new profile are  taken from it. */
    public var serializedProfile: String?

    public init(employeeType: EmployeeType? = nil, key: String?, culture: String? = nil, serializedProfile: String?) {
        self.employeeType = employeeType
        self.key = key
        self.culture = culture
        self.serializedProfile = serializedProfile
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case employeeType
        case key
        case culture
        case serializedProfile
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(employeeType, forKey: .employeeType)
        try container.encode(key, forKey: .key)
        try container.encodeIfPresent(culture, forKey: .culture)
        try container.encode(serializedProfile, forKey: .serializedProfile)
    }
}

