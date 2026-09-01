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

/** The request parameters for configuring the password complexity requirements. */
public struct PasswordSettingsRequestsDto: Sendable, Codable, Hashable {

    /** The minimum number of characters required for valid passwords. */
    public var minLength: Int
    /** Specifies whether the password should contain the uppercase letters or not. */
    public var upperCase: Bool?
    /** Specifies whether the password should contain the digits or not. */
    public var digits: Bool?
    /** Specifies whether the password should contain the special symbols or not. */
    public var specSymbols: Bool?

    public init(minLength: Int, upperCase: Bool? = nil, digits: Bool? = nil, specSymbols: Bool? = nil) {
        self.minLength = minLength
        self.upperCase = upperCase
        self.digits = digits
        self.specSymbols = specSymbols
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case minLength
        case upperCase
        case digits
        case specSymbols
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(minLength, forKey: .minLength)
        try container.encodeIfPresent(upperCase, forKey: .upperCase)
        try container.encodeIfPresent(digits, forKey: .digits)
        try container.encodeIfPresent(specSymbols, forKey: .specSymbols)
    }
}

