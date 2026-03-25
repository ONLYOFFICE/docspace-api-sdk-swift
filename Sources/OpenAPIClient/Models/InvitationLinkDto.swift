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

/** The invitation link parameters. */
public struct InvitationLinkDto: Sendable, Codable, Hashable {

    /** The ID of the invitation link. */
    public var id: UUID?
    public var employeeType: EmployeeType
    public var expiration: ApiDateTime?
    /** Indicates whether the invitation link has expired. */
    public var isExpired: Bool?
    /** The maximum number of times the invitation link can be used. */
    public var maxUseCount: Int?
    /** The current number of times the invitation link has been used. */
    public var currentUseCount: Int?
    /** The URL of the invitation link. */
    public var url: String?

    public init(id: UUID? = nil, employeeType: EmployeeType, expiration: ApiDateTime? = nil, isExpired: Bool? = nil, maxUseCount: Int? = nil, currentUseCount: Int? = nil, url: String? = nil) {
        self.id = id
        self.employeeType = employeeType
        self.expiration = expiration
        self.isExpired = isExpired
        self.maxUseCount = maxUseCount
        self.currentUseCount = currentUseCount
        self.url = url
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case employeeType
        case expiration
        case isExpired
        case maxUseCount
        case currentUseCount
        case url
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encode(employeeType, forKey: .employeeType)
        try container.encodeIfPresent(expiration, forKey: .expiration)
        try container.encodeIfPresent(isExpired, forKey: .isExpired)
        try container.encodeIfPresent(maxUseCount, forKey: .maxUseCount)
        try container.encodeIfPresent(currentUseCount, forKey: .currentUseCount)
        try container.encodeIfPresent(url, forKey: .url)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension InvitationLinkDto: Identifiable {}
