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

/** Whether AI functionality is available on the portal. */
public struct TenantAiAccessSettingsDto: Sendable, Codable, Hashable {

    /** Whether AI is available on the portal at all - chat, agents and vectorization together. Switching it off  hides the AI Agents folder and makes every AI endpoint unreachable for all members at once, not only for the  caller, and the change is pushed to connected clients rather than waiting for their next request. */
    public var enabled: Bool?

    public init(enabled: Bool? = nil) {
        self.enabled = enabled
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case enabled
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(enabled, forKey: .enabled)
    }
}

