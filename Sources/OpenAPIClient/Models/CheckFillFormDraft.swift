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

/** The revision of the form to open and what the caller intends to do with it. */
public struct CheckFillFormDraft: Sendable, Codable, Hashable {

    /** The revision of the form to open. Pass 0 for the current revision; a positive number addresses that entry of  the file history and is accepted only from a caller who may read the history, so a member who only has  fill-forms access must send 0. */
    public var version: Int
    /** What the caller intends to do with the form. `view` asks for a read-only address and `embedded` for an address  to be shown inside a frame; both only resolve the address and leave the file untouched. Leave it out to enter  the filling flow, where the personal draft is created or reused. The value is matched case-insensitively, and  anything else behaves like an empty value. */
    public var action: String?
    /** Whether the caller asked for a read-only address. The server derives it from `action` being `view` and ignores  any value sent with the request. */
    public var requestView: Bool?
    /** Whether the caller asked for an address to be shown inside a frame. The server derives it from `action` being  `embedded` and ignores any value sent with the request. */
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

