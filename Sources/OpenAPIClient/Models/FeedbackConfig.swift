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

/** The settings for the Feedback & Support menu button. */
public struct FeedbackConfig: Sendable, Codable, Hashable {

    /** The absolute URL to the website address which will be opened when clicking the Feedback & Support menu button. */
    public var url: String?
    /** Shows or hides the Feedback & Support menu button. */
    public var visible: Bool?

    public init(url: String? = nil, visible: Bool? = nil) {
        self.url = url
        self.visible = visible
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case url
        case visible
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(visible, forKey: .visible)
    }
}

