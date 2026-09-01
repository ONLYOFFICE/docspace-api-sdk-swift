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

/** The internal file formats. */
public struct FilesSettingsDtoInternalFormats: Sendable, Codable, Hashable {

    public var unknown: String?
    public var archive: String?
    public var video: String?
    public var audio: String?
    public var image: String?
    public var spreadsheet: String?
    public var presentation: String?
    public var document: String?
    public var pdf: String?
    public var diagram: String?

    public init(unknown: String? = nil, archive: String? = nil, video: String? = nil, audio: String? = nil, image: String? = nil, spreadsheet: String? = nil, presentation: String? = nil, document: String? = nil, pdf: String? = nil, diagram: String? = nil) {
        self.unknown = unknown
        self.archive = archive
        self.video = video
        self.audio = audio
        self.image = image
        self.spreadsheet = spreadsheet
        self.presentation = presentation
        self.document = document
        self.pdf = pdf
        self.diagram = diagram
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case unknown = "Unknown"
        case archive = "Archive"
        case video = "Video"
        case audio = "Audio"
        case image = "Image"
        case spreadsheet = "Spreadsheet"
        case presentation = "Presentation"
        case document = "Document"
        case pdf = "Pdf"
        case diagram = "Diagram"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(unknown, forKey: .unknown)
        try container.encodeIfPresent(archive, forKey: .archive)
        try container.encodeIfPresent(video, forKey: .video)
        try container.encodeIfPresent(audio, forKey: .audio)
        try container.encodeIfPresent(image, forKey: .image)
        try container.encodeIfPresent(spreadsheet, forKey: .spreadsheet)
        try container.encodeIfPresent(presentation, forKey: .presentation)
        try container.encodeIfPresent(document, forKey: .document)
        try container.encodeIfPresent(pdf, forKey: .pdf)
        try container.encodeIfPresent(diagram, forKey: .diagram)
    }
}

