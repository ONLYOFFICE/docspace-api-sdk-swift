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

/** The password policy of the portal, with the expressions a client can check a password against. */
public struct PasswordSettingsDto: Sendable, Codable, Hashable {

    /** The shortest password the portal accepts, 8 characters on a portal nobody has configured. Whatever the  policy says, a password longer than 30 characters is refused as well, and that ceiling is not reported  here. */
    public var minLength: Int
    /** Whether at least one uppercase letter is demanded. While it is `false` an uppercase letter is still  allowed - the flag adds a requirement rather than permission. */
    public var upperCase: Bool
    /** Whether at least one digit is demanded, read the same way as `upperCase`. */
    public var digits: Bool
    /** Whether at least one special symbol is demanded, read the same way as `upperCase`. Which symbols count is  spelled out by `specSymbolsRegexStr`. */
    public var specSymbols: Bool
    /** The expression the whole password has to match, which is what defines the alphabet the portal accepts at  all. It comes from the installation's configuration rather than from the portal policy, so it is the same  for every portal of an installation and unaffected by the flags above. */
    public var allowedCharactersRegexStr: String?
    /** The look-ahead expression that tests the digit requirement, meant to be applied only while `digits` is  `true`. It is always filled in, so its presence is not itself a requirement. */
    public var digitsRegexStr: String?
    /** The look-ahead expression that tests the uppercase requirement, to be applied while `upperCase` is `true`. */
    public var upperCaseRegexStr: String?
    /** The look-ahead expression that tests the special-symbol requirement, to be applied while `specSymbols` is  `true`. It also enumerates the symbols the portal treats as special. */
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

