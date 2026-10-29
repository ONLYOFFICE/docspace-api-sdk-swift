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

public struct AiMetaGenerate402Response: Sendable, Codable, Hashable {

    /** Short reason, ready to be shown to the caller. */
    public var error: String
    /** Stable classification of the failure: `rate_limit`, `insufficient_funds`, `auth`, `model_not_found`, `timeout`, `network`, `bad_request`, `server`, `unknown`, or a provider-specific code relayed as it came. */
    public var code: String
    /** The provider's own error message, cut to 500 characters. Absent when the failure never reached the provider, or was a timeout. */
    public var providerMessage: String?

    public init(error: String, code: String, providerMessage: String? = nil) {
        self.error = error
        self.code = code
        self.providerMessage = providerMessage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case error
        case code
        case providerMessage
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(error, forKey: .error)
        try container.encode(code, forKey: .code)
        try container.encodeIfPresent(providerMessage, forKey: .providerMessage)
    }
}

