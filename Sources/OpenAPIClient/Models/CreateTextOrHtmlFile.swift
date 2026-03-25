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

/** The parameters for creating an HTML or text file. */
public struct CreateTextOrHtmlFile: Sendable, Codable, Hashable {

    public static let titleRule = StringRule(minLength: 0, maxLength: 165, pattern: nil)
    /** The file title for text or HTML file. */
    public var title: String?
    /** The text or HTML file contents. */
    public var content: String?
    /** Specifies whether to create a new text or HTML file if it exists or not. */
    public var createNewIfExist: Bool?

    public init(title: String?, content: String? = nil, createNewIfExist: Bool? = nil) {
        self.title = title
        self.content = content
        self.createNewIfExist = createNewIfExist
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case content
        case createNewIfExist
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(title, forKey: .title)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(createNewIfExist, forKey: .createNewIfExist)
    }
}

