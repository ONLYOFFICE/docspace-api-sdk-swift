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

/** Represents the license information of a DocsCloud tenant. */
public struct DocsCloudLicenseInfo: Sendable, Codable, Hashable {

    /** The date and time until which the license is valid. */
    public var valid: Date?
    /** Whether the license is a trial. */
    public var trial: Bool?
    /** The license build date. */
    public var buildDate: Date?

    public init(valid: Date? = nil, trial: Bool? = nil, buildDate: Date? = nil) {
        self.valid = valid
        self.trial = trial
        self.buildDate = buildDate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case valid
        case trial
        case buildDate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(valid, forKey: .valid)
        try container.encodeIfPresent(trial, forKey: .trial)
        try container.encodeIfPresent(buildDate, forKey: .buildDate)
    }
}

