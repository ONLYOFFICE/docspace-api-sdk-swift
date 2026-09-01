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

/** Outcome of `WebSearchEngine.configure` — either the persisted config or a field-scoped error suitable for the settings form. */
public struct AiWebSearchMutationResult: Sendable, Codable, Hashable {

    /** True when the configuration was persisted. */
    public var success: Bool
    /** The persisted web-search configuration. Present on success. */
    public var config: AiWebSearchConfig?
    /** Why the configuration was rejected. Present on failure. */
    public var error: AiTErrorData?

    public init(success: Bool, config: AiWebSearchConfig? = nil, error: AiTErrorData? = nil) {
        self.success = success
        self.config = config
        self.error = error
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case success
        case config
        case error
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(success, forKey: .success)
        try container.encodeIfPresent(config, forKey: .config)
        try container.encodeIfPresent(error, forKey: .error)
    }
}

