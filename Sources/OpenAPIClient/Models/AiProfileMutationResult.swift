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

/** Outcome of `create` / `update` — either a success carrying the persisted profile, or a failure with a field-level error description from the name check or the provider credential check. */
public struct AiProfileMutationResult: Sendable, Codable, Hashable {

    /** True when the profile was persisted. */
    public var success: Bool
    /** The persisted profile. Present on success. */
    public var profile: AiProfile?
    /** Why the profile was rejected - the name check or the provider credential check. Present on failure. */
    public var error: AiTErrorData?

    public init(success: Bool, profile: AiProfile? = nil, error: AiTErrorData? = nil) {
        self.success = success
        self.profile = profile
        self.error = error
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case success
        case profile
        case error
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(success, forKey: .success)
        try container.encodeIfPresent(profile, forKey: .profile)
        try container.encodeIfPresent(error, forKey: .error)
    }
}

