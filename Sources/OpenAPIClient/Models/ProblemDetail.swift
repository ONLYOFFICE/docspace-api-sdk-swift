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

/** RFC 7807 problem details returned by the registration API for failed requests. */
public struct ProblemDetail: Sendable, Codable, Hashable {

    /** A URI reference that identifies the problem type. This service sets it to the DocSpace API getting-started page. */
    public var type: String?
    /** A short, human-readable summary of the problem type, typically the HTTP status reason phrase. */
    public var title: String?
    /** The HTTP status code for this occurrence of the problem. */
    public var status: Int?
    /** A human-readable explanation specific to this occurrence of the problem. */
    public var detail: String?
    /** A URI reference that identifies the specific occurrence, set to the request path. */
    public var instance: String?
    /** Extension members carried on the problem. Usually empty; validation failures also surface as the top-level errors array. */
    public var properties: [String: JSONValue?]?
    /** Field-specific validation errors. Present when the request body or parameters failed validation, or when a named scope is not in the tenant catalogue. */
    public var errors: [FieldError]?

    public init(type: String? = nil, title: String? = nil, status: Int? = nil, detail: String? = nil, instance: String? = nil, properties: [String: JSONValue?]? = nil, errors: [FieldError]? = nil) {
        self.type = type
        self.title = title
        self.status = status
        self.detail = detail
        self.instance = instance
        self.properties = properties
        self.errors = errors
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case title
        case status
        case detail
        case instance
        case properties
        case errors
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(detail, forKey: .detail)
        try container.encodeIfPresent(instance, forKey: .instance)
        try container.encodeIfPresent(properties, forKey: .properties)
        try container.encodeIfPresent(errors, forKey: .errors)
    }
}

