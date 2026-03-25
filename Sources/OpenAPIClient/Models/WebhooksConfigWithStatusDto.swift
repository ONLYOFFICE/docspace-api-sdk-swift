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

/** The webhook configuration with its status. */
public struct WebhooksConfigWithStatusDto: Sendable, Codable, Hashable {

    public var configs: WebhooksConfigDto?
    /** The webhook status. */
    public var status: Int?

    public init(configs: WebhooksConfigDto? = nil, status: Int? = nil) {
        self.configs = configs
        self.status = status
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case configs
        case status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(configs, forKey: .configs)
        try container.encodeIfPresent(status, forKey: .status)
    }
}

