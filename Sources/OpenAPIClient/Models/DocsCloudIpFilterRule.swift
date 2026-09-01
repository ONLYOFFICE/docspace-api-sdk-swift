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

/** Represents the IP filter rule of a DocsCloud tenant. */
public struct DocsCloudIpFilterRule: Sendable, Codable, Hashable {

    public static let addressRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** The IP address. */
    public var address: String?
    /** Whether the IP address is allowed. */
    public var allowed: Bool?

    public init(address: String? = nil, allowed: Bool? = nil) {
        self.address = address
        self.allowed = allowed
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case allowed
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(allowed, forKey: .allowed)
    }
}

