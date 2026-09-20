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

/** One page of the per-service consumption totals, with the paging figures needed to walk the rest. */
public struct CustomerServiceUsageReportDto: Sendable, Codable, Hashable {

    /** The services on this page, one entry per service rather than per charge. It is empty for a period in  which nothing was consumed as well as for a page past the end of the report. */
    public var collection: [CustomerServiceUsageDto]?
    /** How many entries were skipped before this page, echoed from the request. */
    public var offset: Int?
    /** How many entries one page may hold, echoed from the request; it is 25 unless another value was asked for. */
    public var limit: Int?
    /** How many services match the filters in total, across every page - services, not charges. */
    public var totalQuantity: Int64?
    /** How many pages those entries come to at the current `limit`. */
    public var totalPage: Int?
    /** Which of those pages this one is, as the billing service numbers them. Page through by advancing `offset`  rather than this value, which nothing accepts as an argument. */
    public var currentPage: Int?

    public init(collection: [CustomerServiceUsageDto]? = nil, offset: Int? = nil, limit: Int? = nil, totalQuantity: Int64? = nil, totalPage: Int? = nil, currentPage: Int? = nil) {
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

