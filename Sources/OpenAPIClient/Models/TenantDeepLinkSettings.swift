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

/** The deep link settings. */
public struct TenantDeepLinkSettings: Sendable, Codable, Hashable {

    public var handlingMode: DeepLinkHandlingMode?
    /** The timestamp indicating when the settings were last modified. */
    public var lastModified: Date?

    public init(handlingMode: DeepLinkHandlingMode? = nil, lastModified: Date? = nil) {
        self.handlingMode = handlingMode
        self.lastModified = lastModified
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case handlingMode
        case lastModified
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(handlingMode, forKey: .handlingMode)
        try container.encodeIfPresent(lastModified, forKey: .lastModified)
    }
}

