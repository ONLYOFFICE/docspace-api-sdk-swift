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

/** The price of an image model: per prompt token and per generated image. */
public struct AiImagePrice: Sendable, Codable, Hashable {

    /** The price of a single prompt token. */
    public var prompt: Double?
    /** The cost associated with the completion of a prompt in an AI model. */
    public var completion: Double?
    /** The price of a single generated image. */
    public var image: Double?

    public init(prompt: Double? = nil, completion: Double? = nil, image: Double? = nil) {
        self.prompt = prompt
        self.completion = completion
        self.image = image
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case prompt
        case completion
        case image
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(prompt, forKey: .prompt)
        try container.encodeIfPresent(completion, forKey: .completion)
        try container.encodeIfPresent(image, forKey: .image)
    }
}

