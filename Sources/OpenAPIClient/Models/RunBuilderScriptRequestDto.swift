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

/** The document builder script to run and where to put what it produces. */
public struct RunBuilderScriptRequestDto: Sendable, Codable, Hashable {

    public static let scriptRule = StringRule(minLength: 0, maxLength: 2097152, pattern: nil)
    /** The document builder script. It names a portal file by its id where the document builder documentation  writes an address - `builder.OpenFile(1234)`; an address written out in the script is refused. */
    public var script: String?
    /** The id of the folder for the produced files that `outputs` does not list, as reported by a folder listing  such as `GET api/2.0/files/{folderId}`. */
    public var folderId: Int?
    /** Destinations of the produced files, keyed by the name the script saves each one under - the second argument of  `builder.SaveFile(docx, result.docx)`. */
    public var outputs: [String: RunBuilderScriptOutputRequest]?
    public var argument: RunBuilderScriptRequestDtoArgument?

    public init(script: String?, folderId: Int? = nil, outputs: [String: RunBuilderScriptOutputRequest]? = nil, argument: RunBuilderScriptRequestDtoArgument? = nil) {
        self.script = script
        self.folderId = folderId
        self.outputs = outputs
        self.argument = argument
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case script
        case folderId
        case outputs
        case argument
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(script, forKey: .script)
        try container.encodeIfPresent(folderId, forKey: .folderId)
        try container.encodeIfPresent(outputs, forKey: .outputs)
        try container.encodeIfPresent(argument, forKey: .argument)
    }
}

