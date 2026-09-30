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

/** The parameters of a text or HTML file created from content sent in the request. */
public struct CreateTextOrHtmlFile: Sendable, Codable, Hashable {

    public static let titleRule = StringRule(minLength: 1, maxLength: 165, pattern: nil)
    /** The title of the file. The extension the operation stands for is appended unless the title already ends with  it, so Notes becomes Notes.txt or Notes.html. */
    public var title: String?
    /** The content of the file, as plain text or as HTML markup. A request carrying none is rejected as an invalid  request, and for a text file content that looks like markup makes the portal store it as HTML instead. */
    public var content: String?
    /** What to do when the folder already holds a file of this title, the other way round than the name reads: `true`  updates that file and adds a version to its history, `false` creates another file and makes its title unique,  as in Notes (1).txt. */
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

