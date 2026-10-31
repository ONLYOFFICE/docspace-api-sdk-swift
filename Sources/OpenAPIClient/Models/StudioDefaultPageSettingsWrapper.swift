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

/** The successful API response containing the StudioDefaultPageSettingsDto object. */
public struct StudioDefaultPageSettingsWrapper: Sendable, Codable, Hashable {

    /** The StudioDefaultPageSettingsDto object returned by the operation. */
    public var response: StudioDefaultPageSettingsDto?
    /** How many items this response carries: the length of the page for a list, 1 for a single object */
    public var count: Int?
    /** How many items the whole list holds across all pages, for working out how many pages to request. Sent only by the operations that page their results, and left out of every other response */
    public var total: Int64?
    /** List of links related to the response */
    public var links: [GetPortalPrices200ResponseLinksInner]?
    /** HTTP status code of the response */
    public var status: Int?
    /** HTTP status code of the response (duplicate of status) */
    public var statusCode: Int?

    public init(response: StudioDefaultPageSettingsDto? = nil, count: Int? = nil, total: Int64? = nil, links: [GetPortalPrices200ResponseLinksInner]? = nil, status: Int? = nil, statusCode: Int? = nil) {
        self.response = response
        self.count = count
        self.total = total
        self.links = links
        self.status = status
        self.statusCode = statusCode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case response
        case count
        case total
        case links
        case status
        case statusCode
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(response, forKey: .response)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(total, forKey: .total)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(statusCode, forKey: .statusCode)
    }
}

