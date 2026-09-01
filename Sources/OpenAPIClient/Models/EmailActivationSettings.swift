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

/** The email activation settings. */
public struct EmailActivationSettings: Sendable, Codable, Hashable {

    /** Specifies whether the email activation settings are shown or hidden. */
    public var show: Bool?
    /** The timestamp indicating when the settings were last modified. */
    public var lastModified: Date?

    public init(show: Bool? = nil, lastModified: Date? = nil) {
        self.show = show
        self.lastModified = lastModified
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case show
        case lastModified
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(show, forKey: .show)
        try container.encodeIfPresent(lastModified, forKey: .lastModified)
    }
}

