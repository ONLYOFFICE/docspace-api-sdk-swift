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

/** The AI settings the editor opens with. They follow the portal-wide AI access setting for signed-in users; an  anonymous visitor who opened the document through an external link always gets AI disabled. */
public struct AiConfigDto: Sendable, Codable, Hashable {

    /** Whether the editor hides its AI tools. It is set when AI is turned off for the portal, and always for an  anonymous visitor of an external link. */
    public var disabled: Bool?

    public init(disabled: Bool? = nil) {
        self.disabled = disabled
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case disabled
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(disabled, forKey: .disabled)
    }
}

