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

/** The role a new invitation link grants, and the limits placed on it. */
public struct InvitationLinkCreateRequestDto: Sendable, Codable, Hashable {

    public static let maxUseCountRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 1000, exclusiveMaximum: false, multipleOf: nil)
    /** The role whoever follows the link joins with. Only `DocSpaceAdmin`, `RoomAdmin` and `User` are accepted, and  the role cannot be changed afterwards - delete the link and create one for the other role instead. */
    public var employeeType: EmployeeType
    /** When the link stops letting anyone in, read in the portal time zone. It has to lie in the future; leaving it  out creates a link with no deadline at all. */
    public var expiration: Date?
    /** How many accounts may join through the link in total. Leaving it out creates a link with no use limit; the  uses spent so far are reported as `currentUseCount`. */
    public var maxUseCount: Int?

    public init(employeeType: EmployeeType, expiration: Date? = nil, maxUseCount: Int? = nil) {
        self.employeeType = employeeType
        self.expiration = expiration
        self.maxUseCount = maxUseCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case employeeType
        case expiration
        case maxUseCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(employeeType, forKey: .employeeType)
        try container.encodeIfPresent(expiration, forKey: .expiration)
        try container.encodeIfPresent(maxUseCount, forKey: .maxUseCount)
    }
}

