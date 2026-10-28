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

/** One page of consent-facing client info together with the next-page cursor. */
public struct PageableClientInfoResponse: Sendable, Codable, Hashable {

    /** The items on this page, at most as many as the requested limit. An empty array means there is nothing further to read. */
    public var data: [ClientInfoResponse]?
    /** The page size that was applied to this request, between 1 and 50. */
    public var limit: Int?
    /** The cursor to send back as last_client_id to ask for the next page, together with last_created_on. It is null when the page is empty. */
    public var lastClientId: String?
    /** The cursor to send back as last_created_on to ask for the next page, together with last_client_id. It is null when the page is empty. */
    public var lastCreatedOn: Date?

    public init(data: [ClientInfoResponse]? = nil, limit: Int? = nil, lastClientId: String? = nil, lastCreatedOn: Date? = nil) {
        self.data = data
        self.limit = limit
        self.lastClientId = lastClientId
        self.lastCreatedOn = lastCreatedOn
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case limit
        case lastClientId = "last_client_id"
        case lastCreatedOn = "last_created_on"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(limit, forKey: .limit)
        try container.encodeIfPresent(lastClientId, forKey: .lastClientId)
        try container.encodeIfPresent(lastCreatedOn, forKey: .lastCreatedOn)
    }
}

