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

/** Whether the finished import mails the imported people their activation links before it is cleared away. */
public struct FinishDto: Sendable, Codable, Hashable {

    /** Whether every imported account that has not been activated yet is mailed its activation link. Setting it  requires the finished job to still be in the queue, so the import must not have been cleared first; the  letters go out again on each call, and already active accounts are skipped either way. Setting it false ends  the import quietly and leaves inviting those people for later. */
    public var isSendWelcomeEmail: Bool

    public init(isSendWelcomeEmail: Bool) {
        self.isSendWelcomeEmail = isSendWelcomeEmail
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case isSendWelcomeEmail
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(isSendWelcomeEmail, forKey: .isSendWelcomeEmail)
    }
}

