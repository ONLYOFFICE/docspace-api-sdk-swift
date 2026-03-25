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

/** Represents a report containing a collection of operations. */
public struct ReportDto: Sendable, Codable, Hashable {

    /** A collection of operations. */
    public var collection: [OperationDto]?
    /** The report data offset. */
    public var offset: Int?
    /** The report data limit. */
    public var limit: Int?
    /** The total quantity of operations in the report. */
    public var totalQuantity: Int?
    /** The total number of pages in the report. */
    public var totalPage: Int?
    /** The current page number of the report. */
    public var currentPage: Int?

    public init(collection: [OperationDto]? = nil, offset: Int? = nil, limit: Int? = nil, totalQuantity: Int? = nil, totalPage: Int? = nil, currentPage: Int? = nil) {
        self.collection = collection
        self.offset = offset
        self.limit = limit
        self.totalQuantity = totalQuantity
        self.totalPage = totalPage
        self.currentPage = currentPage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case collection
        case offset
        case limit
        case totalQuantity
        case totalPage
        case currentPage
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(collection, forKey: .collection)
        try container.encodeIfPresent(offset, forKey: .offset)
        try container.encodeIfPresent(limit, forKey: .limit)
        try container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
        try container.encodeIfPresent(totalPage, forKey: .totalPage)
        try container.encodeIfPresent(currentPage, forKey: .currentPage)
    }
}

