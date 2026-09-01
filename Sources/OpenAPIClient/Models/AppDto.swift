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

/** The portal application information. */
public struct AppDto: Sendable, Codable, Hashable {

    /** The application identifier (stable slug). The client maps this to its title, description and icon. */
    public var id: String?
    /** Whether the application is enabled for the current tenant. */
    public var enabled: Bool?
    public var settings: AppDtoSettings?

    public init(id: String? = nil, enabled: Bool? = nil, settings: AppDtoSettings? = nil) {
        self.id = id
        self.enabled = enabled
        self.settings = settings
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case enabled
        case settings
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(settings, forKey: .settings)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension AppDto: Identifiable {}
