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

/** The four values that make up the portal password policy, replaced together. */
public struct PasswordSettingsRequestsDto: Sendable, Codable, Hashable {

    /** The shortest password the portal will accept. It has to sit between the floor the installation is configured  with, 8 characters unless it was changed, and the ceiling of 30; a value outside that is refused with 400. */
    public var minLength: Int
    /** Whether a password must contain at least one uppercase letter. There is no partial update on this body, so  leaving the flag out stores it as `false` and drops the requirement. */
    public var upperCase: Bool?
    /** Whether a password must contain at least one digit. Leaving the flag out stores it as `false` and drops the  requirement. */
    public var digits: Bool?
    /** Whether a password must contain at least one special symbol. Leaving the flag out stores it as `false` and  drops the requirement. */
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

