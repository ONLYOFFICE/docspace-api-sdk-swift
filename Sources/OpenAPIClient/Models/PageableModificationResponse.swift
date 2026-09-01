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

/** The response containing paginated modification information. */
public struct PageableModificationResponse: Sendable, Codable, Hashable {

    /** The paginated modification data. */
    public var data: JSONValue?
    /** The maximum number of results returned per page. */
    public var limit: Int?
    /** The date when the user consent was last modified. */
    public var lastModifiedOn: Date?

    public init(data: JSONValue? = nil, limit: Int? = nil, lastModifiedOn: Date? = nil) {
        self.data = data
        self.limit = limit
        self.lastModifiedOn = lastModifiedOn
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case limit
        case lastModifiedOn = "last_modified_on"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(limit, forKey: .limit)
        try container.encodeIfPresent(lastModifiedOn, forKey: .lastModifiedOn)
    }
}

