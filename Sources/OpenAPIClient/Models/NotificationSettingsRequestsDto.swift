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

/** The request parameters for configuring notification settings. */
public struct NotificationSettingsRequestsDto: Sendable, Codable, Hashable {

    public var type: NotificationType
    /** Specifies if the specified notification type is enabled or not. */
    public var isEnabled: Bool?

    public init(type: NotificationType, isEnabled: Bool? = nil) {
        self.type = type
        self.isEnabled = isEnabled
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case isEnabled
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(isEnabled, forKey: .isEnabled)
    }
}

