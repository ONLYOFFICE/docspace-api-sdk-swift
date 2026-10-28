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

/** Whether a confirmation link may still be used, and what it leads to when it invites into a room. */
public struct ConfirmDto: Sendable, Codable, Hashable {

    /** The outcome of the check. Only `Ok` means the action behind the link may be carried out: `Invalid` and  `Expired` fault the key itself, while `UserExisted`, `UserExcluded`, `TariffLimit` and `QuotaFailed` mean  the key is sound but the invitation behind it cannot be accepted as it stands. */
    public var result: ValidationResult
    /** The room the invitation leads into - a numeric folder ID for a room of the portal, a provider-specific  string for a third-party one. It is empty for an invitation to the portal as a whole, for a room that has  been removed or that the invited account may not see, and whenever `result` is neither `Ok` nor  `UserExisted`. */
    public var roomId: String?
    /** The title of that room, present exactly when `roomId` is and meant to be shown on the confirmation page. */
    public var title: String?
    /** The address the link was issued for, echoed back only when `result` is `Ok` so that a sign-up form can be  prefilled with it. Every other outcome leaves it empty, `UserExisted` included. */
    public var email: String?
    /** Whether the room behind the link is an AI room rather than an ordinary one, which decides where the invited  person is taken. It is `false` whenever `roomId` is empty. */
    public var isAgent: Bool?

    public init(result: ValidationResult, roomId: String? = nil, title: String? = nil, email: String? = nil, isAgent: Bool? = nil) {
        self.result = result
        self.roomId = roomId
        self.title = title
        self.email = email
        self.isAgent = isAgent
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case result
        case roomId
        case title
        case email
        case isAgent
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(result, forKey: .result)
        try container.encodeIfPresent(roomId, forKey: .roomId)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(isAgent, forKey: .isAgent)
    }
}

