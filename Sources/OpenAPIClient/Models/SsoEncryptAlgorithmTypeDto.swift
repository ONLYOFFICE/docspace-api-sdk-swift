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

/** The encryption algorithms the SSO settings accept. */
public struct SsoEncryptAlgorithmTypeDto: Sendable, Codable, Hashable {

    /** The AES-128-CBC encryption algorithm, which the built-in configuration uses. */
    public var aes128: String?
    /** The AES-256-CBC encryption algorithm, the strongest of the three. */
    public var aes256: String?
    /** The Triple DES CBC encryption algorithm, kept for identity providers that support nothing newer. */
    public var triDec: String?

    public init(aes128: String? = nil, aes256: String? = nil, triDec: String? = nil) {
        self.aes128 = aes128
        self.aes256 = aes256
        self.triDec = triDec
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case aes128
        case aes256
        case triDec
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(aes128, forKey: .aes128)
        try container.encodeIfPresent(aes256, forKey: .aes256)
        try container.encodeIfPresent(triDec, forKey: .triDec)
    }
}

