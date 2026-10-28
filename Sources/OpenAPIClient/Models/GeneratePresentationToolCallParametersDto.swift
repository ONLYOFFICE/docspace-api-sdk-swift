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

/** The generate presentation tool call parameters. */
public struct GeneratePresentationToolCallParametersDto: Sendable, Codable, Hashable {

    /** What the generated presentation is about. */
    public var topic: String?
    /** How many slides to generate, as the request spelled it. */
    public var slideCount: String?
    /** The visual style the slides should be generated in. */
    public var style: String?

    public init(topic: String? = nil, slideCount: String? = nil, style: String? = nil) {
        self.topic = topic
        self.slideCount = slideCount
        self.style = style
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case topic
        case slideCount
        case style
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(topic, forKey: .topic)
        try container.encodeIfPresent(slideCount, forKey: .slideCount)
        try container.encodeIfPresent(style, forKey: .style)
    }
}

