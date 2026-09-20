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

/** One page of the portal wallet's money movements, with the paging figures needed to walk the rest. */
public struct ReportDto: Sendable, Codable, Hashable {

    /** The movements on this page - top-ups, charges, refunds and corrections alike, newest first. It is empty  for a page past the end of the report as well as for a period in which nothing happened. */
    public var collection: [OperationDto]?
    /** How many movements were skipped before this page, echoed from the request so a client need not remember  what it asked for. */
    public var offset: Int?
    /** How many movements one page may hold, echoed from the request; it is 25 unless another value was asked  for. A full page is not proof that more exist - compare `currentPage` with `totalPage`. */
    public var limit: Int?
    /** How many movements match the filters in total, across every page. */
    public var totalQuantity: Int64?
    /** How many pages those movements come to at the current `limit`. */
    public var totalPage: Int?
    /** Which of those pages this one is, as the billing service numbers them. Page through by advancing `offset`  rather than this value, which nothing accepts as an argument. */
    public var currentPage: Int?

    public init(collection: [OperationDto]? = nil, offset: Int? = nil, limit: Int? = nil, totalQuantity: Int64? = nil, totalPage: Int? = nil, currentPage: Int? = nil) {
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

