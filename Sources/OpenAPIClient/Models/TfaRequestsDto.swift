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

/** The request parameters for configuring the Two-Factor Authentication (TFA) settings. */
public struct TfaRequestsDto: Sendable, Codable, Hashable {

    public var type: TfaRequestsDtoType?
    /** The ID of the user for whom the TFA settings are being configured. */
    public var id: UUID?
    /** The list of IP addresses that bypass TFA verification. */
    public var trustedIps: [String]?
    /** The list of user IDs for whom TFA is mandatory. */
    public var mandatoryUsers: [UUID]?
    /** The list group IDs whose members must use TFA. */
    public var mandatoryGroups: [UUID]?

    public init(type: TfaRequestsDtoType? = nil, id: UUID? = nil, trustedIps: [String]? = nil, mandatoryUsers: [UUID]? = nil, mandatoryGroups: [UUID]? = nil) {
        self.type = type
        self.id = id
        self.trustedIps = trustedIps
        self.mandatoryUsers = mandatoryUsers
        self.mandatoryGroups = mandatoryGroups
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case id
        case trustedIps
        case mandatoryUsers
        case mandatoryGroups
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(trustedIps, forKey: .trustedIps)
        try container.encodeIfPresent(mandatoryUsers, forKey: .mandatoryUsers)
        try container.encodeIfPresent(mandatoryGroups, forKey: .mandatoryGroups)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension TfaRequestsDto: Identifiable {}
