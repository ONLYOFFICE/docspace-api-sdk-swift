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

/** The request parameters for creating a tag. */
public struct UpdateTagRequestDto: Sendable, Codable, Hashable {

    public static let oldNameRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let newNameRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** The old tag name. */
    public var oldName: String?
    /** The new tag name. */
    public var newName: String?

    public init(oldName: String?, newName: String?) {
        self.oldName = oldName
        self.newName = newName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case oldName
        case newName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(oldName, forKey: .oldName)
        try container.encode(newName, forKey: .newName)
    }
}

