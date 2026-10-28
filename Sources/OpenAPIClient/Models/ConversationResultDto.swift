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

/** The progress of one file conversion, together with the converted file once it exists. */
public struct ConversationResultDto: Sendable, Codable, Hashable {

    /** The identifier of the conversion entry. The portal leaves it empty for file conversions, so a caller follows  its own conversion by the file it queued rather than by this value. */
    public var id: String?
    /** Tells which kind of file operation the entry describes, so that a conversion can be told apart from the copy,  move and download entries that share this envelope. A conversion entry reports the conversion type. */
    public var operation: FileOperationType
    /** How far the conversion has got, counted in percent from 0 while it is only queued to 100 once it is over -  whether it ended with a converted file or with an error. 100 is the value a polling caller waits for. */
    public var progress: Int
    /** Describes what is being converted: the identifier of the source file, the version that was taken and whether  an existing result may be overwritten, packed as a JSON object inside a string. It is what identifies the  entry when several conversions of the same caller are in flight. */
    public var source: String?
    public var result: JSONValue?
    /** The reason the conversion stopped, in the language of the caller, and empty while it is running and after it  has succeeded. `progress` reaches 100 for a failure as well, so this field is what separates a converted file  from a broken conversion; a conversion still unfinished after ten minutes ends with a timeout reported here. */
    public var error: String?
    /** Reports whether the portal has taken the entry as far as it goes: `1` once the conversion has finished or  failed, and empty while it is still queued or still being converted. It is the bookkeeping of the conversion  queue rather than a result - what happened is in `progress`, `error` and `result`. */
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
