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

/** The layout of forms printed as pdf documents or images. */
public struct ConvertDocumentLayoutRequest: Sendable, Codable, Hashable {

    /** Whether an empty form field shows its placeholder text in the result; false leaves it blank. */
    public var drawPlaceHolders: Bool?
    /** Whether form fields keep their highlight colour in the result; false draws them without it. */
    public var drawFormHighlight: Bool?
    /** Whether the print mode is turned on. It only applies to a docx converted into pdf: with the print mode off  the highlight flag does nothing and the placeholder flag saves the forms in the pdf. */
    public var isPrint: Bool?

    public init(drawPlaceHolders: Bool? = nil, drawFormHighlight: Bool? = nil, isPrint: Bool? = nil) {
        self.drawPlaceHolders = drawPlaceHolders
        self.drawFormHighlight = drawFormHighlight
        self.isPrint = isPrint
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case drawPlaceHolders
        case drawFormHighlight
        case isPrint
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(drawPlaceHolders, forKey: .drawPlaceHolders)
        try container.encodeIfPresent(drawFormHighlight, forKey: .drawFormHighlight)
        try container.encodeIfPresent(isPrint, forKey: .isPrint)
    }
}

