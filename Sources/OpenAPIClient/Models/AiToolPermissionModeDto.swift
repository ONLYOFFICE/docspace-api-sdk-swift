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

/** The current user's tool permission mode. */
public struct AiToolPermissionModeDto: Sendable, Codable, Hashable {

    /** How tool calls made by the model are approved for the current user. The default applies while the user has stored nothing. */
    public var mode: AiToolPermissionMode?

    public init(mode: AiToolPermissionMode? = nil) {
        self.mode = mode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case mode
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(mode, forKey: .mode)
    }
}

