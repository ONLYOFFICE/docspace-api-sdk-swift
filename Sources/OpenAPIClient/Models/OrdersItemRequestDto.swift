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

/** One entry to move to a given position inside its folder. */
public struct OrdersItemRequestDto: Sendable, Codable, Hashable {

    public static let orderRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 2147483647, exclusiveMaximum: false, multipleOf: nil)
    /** The file or folder to move. */
    public var entryId: Int
    /** Which of the two the identifier names, because a file and a folder may carry the same number. */
    public var entryType: FileEntryType
    /** The position the entry is to take, counting from 1. The entry that held it, and everything after it, is  shifted to make room. A dotted path such as 1.2.3 is accepted as well, of which only the last segment is  read. */
    public var order: Int

    public init(entryId: Int, entryType: FileEntryType, order: Int) {
        self.entryId = entryId
        self.entryType = entryType
        self.order = order
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case entryId
        case entryType
        case order
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(entryId, forKey: .entryId)
        try container.encode(entryType, forKey: .entryType)
        try container.encode(order, forKey: .order)
    }
}

