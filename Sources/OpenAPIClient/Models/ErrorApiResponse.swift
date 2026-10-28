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

/** The error body returned with every failed request. */
public struct ErrorApiResponse: Sendable, Codable, Hashable {

    /** The response status flag. Always 1 on an error, as opposed to 0 on success. */
    public var status: Int?
    /** The HTTP status code of the response, repeated in the body. */
    public var statusCode: Int?
    public var error: ErrorApiResponseError?

    public init(status: Int? = nil, statusCode: Int? = nil, error: ErrorApiResponseError? = nil) {
        self.status = status
        self.statusCode = statusCode
        self.error = error
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case status
        case statusCode
        case error
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(statusCode, forKey: .statusCode)
        try container.encodeIfPresent(error, forKey: .error)
    }
}

