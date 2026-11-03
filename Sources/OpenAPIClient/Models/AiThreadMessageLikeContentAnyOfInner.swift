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

public struct AiThreadMessageLikeContentAnyOfInner: Sendable, Codable, Hashable {

    /** Part kind: `text`, `reasoning`, `source`, `image`, `file`, `audio`, `data` or `tool-call`. */
    public var type: String
    /** The text of a `text` or `reasoning` part. */
    public var text: String?
    /** Id of the part this one belongs to, on `text`, `reasoning`, `source` and `tool-call` parts. On a `reasoning` part the chat library keeps the provider's thinking signature here. */
    public var parentId: String?
    /** A `source` part's source kind; always `url`. */
    public var sourceType: String?
    /** A `source` part's id. */
    public var id: String?
    /** A `source` part's URL. */
    public var url: String?
    /** A `source` part's title. */
    public var title: String?
    /** An `image` part's picture, as a URL (usually a `data:` URL). For an image the user attached, a JSON string `{ ref, title, kind: image }` naming the stored attachment instead. */
    public var image: String?
    /** A `file` part's media type. For a file the user attached, a JSON string `{ ref, title, kind: file, path, type }` naming the stored attachment instead - the chat library carries the reference here. */
    public var mimeType: String?
    /** A `file` part's content; empty when the part references an attachment. (A `data` part would carry its payload here too, as any JSON value; neither the chat library nor this service writes one.) */
    public var data: String?
    /** The file name of a `file` or `image` part. */
    public var filename: String?
    /** An `image` part's display name, or a `data` part's name. */
    public var name: String?
    public var audio: AiThreadMessageLikeContentAnyOfInnerAudio?
    /** A `tool-call` part's call id. */
    public var toolCallId: String?
    /** A `tool-call` part's tool name. */
    public var toolName: String?
    /** A `tool-call` part's arguments. */
    public var args: JSONValue?
    /** A `tool-call` part's arguments as the model streamed them, JSON text. */
    public var argsText: String?
    public var result: JSONValue?
    /** Whether a `tool-call` part's result is an error. */
    public var isError: Bool?
    public var artifact: JSONValue?
    public var interrupt: AiThreadMessageLikeContentAnyOfInnerInterrupt?
    /** Messages of a sub-agent run inside a `tool-call` part. */
    public var messages: [JSONValue]?
    /** Provider-specific data of a `tool-call` part - for a Gemini call, `{ thoughtSignature }`, which has to be sent back with the call. */
    public var metadata: JSONValue?

    public init(type: String, text: String? = nil, parentId: String? = nil, sourceType: String? = nil, id: String? = nil, url: String? = nil, title: String? = nil, image: String? = nil, mimeType: String? = nil, data: String? = nil, filename: String? = nil, name: String? = nil, audio: AiThreadMessageLikeContentAnyOfInnerAudio? = nil, toolCallId: String? = nil, toolName: String? = nil, args: JSONValue? = nil, argsText: String? = nil, result: JSONValue? = nil, isError: Bool? = nil, artifact: JSONValue? = nil, interrupt: AiThreadMessageLikeContentAnyOfInnerInterrupt? = nil, messages: [JSONValue]? = nil, metadata: JSONValue? = nil) {
        self.type = type
        self.text = text
        self.parentId = parentId
        self.sourceType = sourceType
        self.id = id
        self.url = url
        self.title = title
        self.image = image
        self.mimeType = mimeType
        self.data = data
        self.filename = filename
        self.name = name
        self.audio = audio
        self.toolCallId = toolCallId
        self.toolName = toolName
        self.args = args
        self.argsText = argsText
        self.result = result
        self.isError = isError
        self.artifact = artifact
        self.interrupt = interrupt
        self.messages = messages
        self.metadata = metadata
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case text
        case parentId
        case sourceType
        case id
        case url
        case title
        case image
        case mimeType
        case data
        case filename
        case name
        case audio
        case toolCallId
        case toolName
        case args
        case argsText
        case result
        case isError
        case artifact
        case interrupt
        case messages
        case metadata
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(parentId, forKey: .parentId)
        try container.encodeIfPresent(sourceType, forKey: .sourceType)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(image, forKey: .image)
        try container.encodeIfPresent(mimeType, forKey: .mimeType)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(filename, forKey: .filename)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(audio, forKey: .audio)
        try container.encodeIfPresent(toolCallId, forKey: .toolCallId)
        try container.encodeIfPresent(toolName, forKey: .toolName)
        try container.encodeIfPresent(args, forKey: .args)
        try container.encodeIfPresent(argsText, forKey: .argsText)
        try container.encodeIfPresent(result, forKey: .result)
        try container.encodeIfPresent(isError, forKey: .isError)
        try container.encodeIfPresent(artifact, forKey: .artifact)
        try container.encodeIfPresent(interrupt, forKey: .interrupt)
        try container.encodeIfPresent(messages, forKey: .messages)
        try container.encodeIfPresent(metadata, forKey: .metadata)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension AiThreadMessageLikeContentAnyOfInner: Identifiable {}
