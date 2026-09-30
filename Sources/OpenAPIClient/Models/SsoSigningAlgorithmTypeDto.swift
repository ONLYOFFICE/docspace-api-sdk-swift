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

/** The signing algorithms the SSO settings accept. */
public struct SsoSigningAlgorithmTypeDto: Sendable, Codable, Hashable {

    /** The RSA-SHA1 signing algorithm, which the built-in configuration uses. SHA-1 is the weakest of the three  and some identity providers no longer accept it. */
    public var rsaSha1: String?
    /** The RSA-SHA256 signing algorithm. */
    public var rsaSha256: String?
    /** The RSA-SHA512 signing algorithm. */
    public var rsaSha512: String?

    public init(rsaSha1: String? = nil, rsaSha256: String? = nil, rsaSha512: String? = nil) {
        self.rsaSha1 = rsaSha1
        self.rsaSha256 = rsaSha256
        self.rsaSha512 = rsaSha512
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case rsaSha1
        case rsaSha256
        case rsaSha512
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(rsaSha1, forKey: .rsaSha1)
        try container.encodeIfPresent(rsaSha256, forKey: .rsaSha256)
        try container.encodeIfPresent(rsaSha512, forKey: .rsaSha512)
    }
}

