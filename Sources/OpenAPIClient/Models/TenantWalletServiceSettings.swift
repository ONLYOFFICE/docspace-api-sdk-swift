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

/** The wallet services settings. */
public struct TenantWalletServiceSettings: Sendable, Codable, Hashable {

    public enum EnabledServices: String, Sendable, Codable, CaseIterable {
        case AITools = -13
        case Backup = -12
        case Storage = -11
    }
    /** The list of the enabled wallet services. */
    public var enabledServices: [EnabledServices]?
    /** The date and time when the wallet services settings were last modified. */
    public var lastModified: Date?

    public init(enabledServices: [EnabledServices]? = nil, lastModified: Date? = nil) {
        self.enabledServices = enabledServices
        self.lastModified = lastModified
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case enabledServices
        case lastModified
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(enabledServices, forKey: .enabledServices)
        try container.encodeIfPresent(lastModified, forKey: .lastModified)
    }
}

