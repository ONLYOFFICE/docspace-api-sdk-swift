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

/** The modules switched on or off together, one entry per module. */
public struct WebItemsSecurityRequestsDto: Sendable, Codable, Hashable {

    /** The modules to switch, each entry pairing a module GUID as its `key` with the new enabled flag as its  `value`. A key that is not a GUID fails the whole request as invalid, and a module listed twice is applied  once, from its first entry. No allow-list travels here: switching a product module on restores the users and  groups it was last restricted to, and everything else is stored as a plain allow or deny for everyone. */
    public var items: [ItemKeyValuePairStringBoolean]?

    public init(items: [ItemKeyValuePairStringBoolean]? = nil) {
        self.items = items
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case items
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(items, forKey: .items)
    }
}

