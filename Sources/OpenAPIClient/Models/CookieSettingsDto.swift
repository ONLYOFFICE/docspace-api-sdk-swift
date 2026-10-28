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

/** How long an authentication session of the portal stays valid, and whether that limit is applied. */
public struct CookieSettingsDto: Sendable, Codable, Hashable {

    /** How long, in minutes, a session issued from now on remains valid. It is `1440` on a portal that has never  stored a limit, and that stored number is reported whether or not `enabled` puts it to use. */
    public var lifeTime: Int
    /** Whether the stored lifetime is applied at all. While it is `false` the number above is ignored and an  issued session is honoured for a year. */
    public var enabled: Bool

    public init(lifeTime: Int, enabled: Bool) {
        self.lifeTime = lifeTime
        self.enabled = enabled
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case lifeTime
        case enabled
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(lifeTime, forKey: .lifeTime)
        try container.encode(enabled, forKey: .enabled)
    }
}

