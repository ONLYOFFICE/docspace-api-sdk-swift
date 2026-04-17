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

/** The TFA app code. */
public struct TfaAppCodeDto: Sendable, Codable, Hashable {

    /** The TFA app code usage status. */
    public var isUsed: Bool?
    /** The TFA app code. */
    public var code: String?

    public init(isUsed: Bool? = nil, code: String? = nil) {
        self.isUsed = isUsed
        self.code = code
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case isUsed
        case code
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(isUsed, forKey: .isUsed)
        try container.encodeIfPresent(code, forKey: .code)
    }
}

