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

/** The parameters for checking the form draft filling. */
public struct CheckFillFormDraft: Sendable, Codable, Hashable {

    /** The file version of the form draft. */
    public var version: Int
    /** The action with the form draft. */
    public var action: String?
    /** Specifies whether to request the form for viewing or not. */
    public var requestView: Bool?
    /** Specifies whether to request an embedded form or not. */
    public var requestEmbedded: Bool?

    public init(version: Int, action: String? = nil, requestView: Bool? = nil, requestEmbedded: Bool? = nil) {
        self.version = version
        self.action = action
        self.requestView = requestView
        self.requestEmbedded = requestEmbedded
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case version
        case action
        case requestView
        case requestEmbedded
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(version, forKey: .version)
        try container.encodeIfPresent(action, forKey: .action)
        try container.encodeIfPresent(requestView, forKey: .requestView)
        try container.encodeIfPresent(requestEmbedded, forKey: .requestEmbedded)
    }
}

