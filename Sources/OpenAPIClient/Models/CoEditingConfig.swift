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

/** How co-editing is preset when the document opens, and whether the user may switch it afterwards. */
public struct CoEditingConfig: Sendable, Codable, Hashable {

    /** Whether the user may switch between the two co-editing modes from the editor interface, or is held to the one  the portal preset. */
    public var change: Bool?
    /** Whether other participants see each change as it is typed. Left off, changes are exchanged only when a  participant saves, and the paragraph being edited is locked for the others meanwhile. */
    public var fast: Bool?
    /** The mode the two settings above amount to, as the editors name it. */
    public var mode: CoEditingConfigMode?

    public init(change: Bool? = nil, fast: Bool? = nil, mode: CoEditingConfigMode? = nil) {
        self.change = change
        self.fast = fast
        self.mode = mode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case change
        case fast
        case mode
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(change, forKey: .change)
        try container.encodeIfPresent(fast, forKey: .fast)
        try container.encodeIfPresent(mode, forKey: .mode)
    }
}

