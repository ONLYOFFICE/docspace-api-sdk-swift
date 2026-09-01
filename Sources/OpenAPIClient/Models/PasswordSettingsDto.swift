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

/** The password settings parameters. */
public struct PasswordSettingsDto: Sendable, Codable, Hashable {

    /** The minimum number of characters required for valid passwords. */
    public var minLength: Int
    /** Specifies whether the password should contain the uppercase letters or not. */
    public var upperCase: Bool
    /** Specifies whether the password should contain the digits or not. */
    public var digits: Bool
    /** Specifies whether the password should contain the special symbols or not. */
    public var specSymbols: Bool
    /** The allowed password characters in the regex string format. */
    public var allowedCharactersRegexStr: String?
    /** The password digits in the regex string format. */
    public var digitsRegexStr: String?
    /** The password uppercase letters in the regex string format. */
    public var upperCaseRegexStr: String?
    /** The passaword special symbols in the regex string format. */
    public var specSymbolsRegexStr: String?

    public init(minLength: Int, upperCase: Bool, digits: Bool, specSymbols: Bool, allowedCharactersRegexStr: String?, digitsRegexStr: String?, upperCaseRegexStr: String?, specSymbolsRegexStr: String?) {
        self.minLength = minLength
        self.upperCase = upperCase
        self.digits = digits
        self.specSymbols = specSymbols
        self.allowedCharactersRegexStr = allowedCharactersRegexStr
        self.digitsRegexStr = digitsRegexStr
        self.upperCaseRegexStr = upperCaseRegexStr
        self.specSymbolsRegexStr = specSymbolsRegexStr
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case minLength
        case upperCase
        case digits
        case specSymbols
        case allowedCharactersRegexStr
        case digitsRegexStr
        case upperCaseRegexStr
        case specSymbolsRegexStr
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(minLength, forKey: .minLength)
        try container.encode(upperCase, forKey: .upperCase)
        try container.encode(digits, forKey: .digits)
        try container.encode(specSymbols, forKey: .specSymbols)
        try container.encode(allowedCharactersRegexStr, forKey: .allowedCharactersRegexStr)
        try container.encode(digitsRegexStr, forKey: .digitsRegexStr)
        try container.encode(upperCaseRegexStr, forKey: .upperCaseRegexStr)
        try container.encode(specSymbolsRegexStr, forKey: .specSymbolsRegexStr)
    }
}

