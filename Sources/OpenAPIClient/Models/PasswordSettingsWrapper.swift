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

public struct PasswordSettingsWrapper: Sendable, Codable, Hashable {

    public var response: PasswordSettingsDto?
    /** The total number of items in the response */
    public var count: Int?
    /** List of links related to the response */
    public var links: [GetPortalPrices200ResponseLinksInner]?
    /** HTTP status code of the response */
    public var status: Int?
    /** HTTP status code of the response (duplicate of status) */
    public var statusCode: Int?

    public init(response: PasswordSettingsDto? = nil, count: Int? = nil, links: [GetPortalPrices200ResponseLinksInner]? = nil, status: Int? = nil, statusCode: Int? = nil) {
        self.response = response
        self.count = count
        self.links = links
        self.status = status
        self.statusCode = statusCode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case response
        case count
        case links
        case status
        case statusCode
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(response, forKey: .response)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(statusCode, forKey: .statusCode)
    }
}

