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

/** The two theme variants of one branding logo. */
public struct LogoRequestsDto: Sendable, Codable, Hashable {

    /** The image used on a light background, either as a `data:image/png;base64,...` payload - `png`, `jpg` and  `svg` are accepted - or as the name of a file already put in the temporary store. */
    public var light: String?
    /** The image used on a dark background, in the same two forms as `light`. It is only stored for the slots that  have a dark variant and is ignored for the favicon and the editor logos. */
    public var dark: String?

    public init(light: String? = nil, dark: String? = nil) {
        self.light = light
        self.dark = dark
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case light
        case dark
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(light, forKey: .light)
        try container.encodeIfPresent(dark, forKey: .dark)
    }
}

