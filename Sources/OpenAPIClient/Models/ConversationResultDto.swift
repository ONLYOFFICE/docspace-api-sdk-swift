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

/** The result of file convertion operation. */
public struct ConversationResultDto: Sendable, Codable, Hashable {

    /** The conversion operation ID. */
    public var id: String?
    public var operation: FileOperationType
    /** The conversion operation progress. */
    public var progress: Int
    /** The source file for the conversion. */
    public var source: String?
    /** The resulting file after the conversion. */
    public var result: JSONValue?
    /** The conversion operation error message. */
    public var error: String?
    /** Specifies if the conversion operation is processed or not. */
    public var processed: String?

    public init(id: String?, operation: FileOperationType, progress: Int, source: String? = nil, result: JSONValue? = nil, error: String? = nil, processed: String? = nil) {
        self.id = id
        self.operation = operation
        self.progress = progress
        self.source = source
        self.result = result
        self.error = error
        self.processed = processed
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case operation = "Operation"
        case progress
        case source
        case result
        case error
        case processed
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(operation, forKey: .operation)
        try container.encode(progress, forKey: .progress)
        try container.encodeIfPresent(source, forKey: .source)
        try container.encodeIfPresent(result, forKey: .result)
        try container.encodeIfPresent(error, forKey: .error)
        try container.encodeIfPresent(processed, forKey: .processed)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ConversationResultDto: Identifiable {}
