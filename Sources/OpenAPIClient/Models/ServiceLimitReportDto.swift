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

/** A page of the spending limits in force for the portal users. */
public struct ServiceLimitReportDto: Sendable, Codable, Hashable {

    /** The limits of this page, one per user; empty when no limit applies to any user or the page is past the end. */
    public var collection: [ServiceLimitDto]?
    /** The number of limits skipped before this page. */
    public var offset: Int?
    /** The page size the page was read with. */
    public var limit: Int?
    /** The number of pages the whole list takes at this page size. */
    public var totalPage: Int?
    /** The number of this page, starting from 1. */
    public var currentPage: Int?
    /** The number of users with a limit in force across all pages. */
    public var totalQuantity: Int?

    public init(collection: [ServiceLimitDto]? = nil, offset: Int? = nil, limit: Int? = nil, totalPage: Int? = nil, currentPage: Int? = nil, totalQuantity: Int? = nil) {
        self.collection = collection
        self.offset = offset
        self.limit = limit
        self.totalPage = totalPage
        self.currentPage = currentPage
        self.totalQuantity = totalQuantity
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case collection
        case offset
        case limit
        case totalPage
        case currentPage
        case totalQuantity
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(collection, forKey: .collection)
        try container.encodeIfPresent(offset, forKey: .offset)
        try container.encodeIfPresent(limit, forKey: .limit)
        try container.encodeIfPresent(totalPage, forKey: .totalPage)
        try container.encodeIfPresent(currentPage, forKey: .currentPage)
        try container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
    }
}

