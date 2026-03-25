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

/** Request parameters for setting the default AI provider. */
public struct SetDefaultProviderRequestDto: Sendable, Codable, Hashable {

    public static let defaultModelRule = StringRule(minLength: nil, maxLength: 255, pattern: nil)
    /** AI provider identifier. */
    public var providerId: Int?
    /** Default model identifier to use with this provider. */
    public var defaultModel: String?

    public init(providerId: Int? = nil, defaultModel: String?) {
        self.providerId = providerId
        self.defaultModel = defaultModel
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case providerId
        case defaultModel
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(providerId, forKey: .providerId)
        try container.encode(defaultModel, forKey: .defaultModel)
    }
}

