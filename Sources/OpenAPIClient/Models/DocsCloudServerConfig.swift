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

/** Represents the server configuration of a DocsCloud tenant. */
public struct DocsCloudServerConfig: Sendable, Codable, Hashable {

    public static let fileSizeLimitRule = NumericRule<Int64>(minimum: 0, exclusiveMinimum: false, maximum: 209715200, exclusiveMaximum: false, multipleOf: nil)
    /** Whether anonymous access is supported. */
    public var isAnonymousSupport: Bool?
    /** The maximum file size in bytes. */
    public var fileSizeLimit: Int64?

    public init(isAnonymousSupport: Bool? = nil, fileSizeLimit: Int64? = nil) {
        self.isAnonymousSupport = isAnonymousSupport
        self.fileSizeLimit = fileSizeLimit
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case isAnonymousSupport
        case fileSizeLimit
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(isAnonymousSupport, forKey: .isAnonymousSupport)
        try container.encodeIfPresent(fileSizeLimit, forKey: .fileSizeLimit)
    }
}

