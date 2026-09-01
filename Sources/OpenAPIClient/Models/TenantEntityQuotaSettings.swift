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

/** The tenant entity quota settings. */
public struct TenantEntityQuotaSettings: Sendable, Codable, Hashable {

    /** Specifies if the quota is enabled for the tenant entity or not. */
    public var enableQuota: Bool?
    /** The default quota of the tenant entity. */
    public var defaultQuota: Int64?
    /** The date of the last quota recalculation. */
    public var lastRecalculateDate: Date?

    public init(enableQuota: Bool? = nil, defaultQuota: Int64? = nil, lastRecalculateDate: Date? = nil) {
        self.enableQuota = enableQuota
        self.defaultQuota = defaultQuota
        self.lastRecalculateDate = lastRecalculateDate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case enableQuota
        case defaultQuota
        case lastRecalculateDate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(enableQuota, forKey: .enableQuota)
        try container.encodeIfPresent(defaultQuota, forKey: .defaultQuota)
        try container.encodeIfPresent(lastRecalculateDate, forKey: .lastRecalculateDate)
    }
}

