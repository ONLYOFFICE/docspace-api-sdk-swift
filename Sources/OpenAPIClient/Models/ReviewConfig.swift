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

/** How tracked changes are displayed when the document opens. */
public struct ReviewConfig: Sendable, Codable, Hashable {

    /** How the editors render tracked changes at first: with the markup, in a simplified markup, as the final text,  or as the original text. A session that may not write opens on the final text. */
    public var reviewDisplay: String?

    public init(reviewDisplay: String? = nil) {
        self.reviewDisplay = reviewDisplay
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case reviewDisplay
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(reviewDisplay, forKey: .reviewDisplay)
    }
}

