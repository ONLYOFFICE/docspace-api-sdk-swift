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

/** How the portal opens its links on a mobile device. */
public struct DeepLinkConfigurationRequestsDto: Sendable, Codable, Hashable {

    /** The deep link configuration to store. Only its `handlingMode` is read - whether a link always opens in the  browser, always in the native application, or asks the user each time - and a mode outside the defined set is  refused with 400 before anything is stored. */
    public var deepLinkSettings: TenantDeepLinkSettings?

    public init(deepLinkSettings: TenantDeepLinkSettings? = nil) {
        self.deepLinkSettings = deepLinkSettings
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case deepLinkSettings
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(deepLinkSettings, forKey: .deepLinkSettings)
    }
}

