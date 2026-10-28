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

/** What to convert, where to keep the result, and the parameters the document service is handed. Everything below the  first two fields is the contract of the document service itself, named and shaped exactly as it names it, so that  the portal passes the request on rather than translating it. What the portal can read off the file - its format,  its name and the key of its revision - is not asked for and cannot be overridden. */
public struct ConvertFileRequestDto: Sendable, Codable, Hashable {

    /** The id of the portal file to convert, as reported by a folder listing such as `GET api/2.0/files/{folderId}`. */
    public var fileId: Int
    /** The id of the folder to save the converted file in, as reported by a folder listing such as  `GET api/2.0/files/{folderId}`. */
    public var folderId: Int?
    /** The encoding of a csv or txt source, as a code page number: 1251 for Cyrillic, 65001 for UTF-8, and so on.  Leaving it out lets the document service guess, which garbles non-latin text. */
    public var codePage: Int?
    /** The character separating the values of a csv source: 0 - none, 1 - tab, 2 - semicolon, 3 - colon, 4 - comma,  5 - space. */
    public var delimiter: Int?
    /** The layout of forms printed as pdf documents or images. */
    public var documentLayout: ConvertDocumentLayoutRequest?
    /** How the text of a pdf, xps or oxps source is read back. */
    public var documentRenderer: ConvertDocumentRendererRequest?
    /** The extension of the format to convert to, without the dot. The formats a source can become are listed under  `extsConvertible` in `GET api/2.0/files/settings`, keyed by the source extension, both with a leading dot there. */
    public var outputtype: String?
    /** The password of the source document, for a document that is protected with one. */
    public var password: String?
    /** The culture code whose currency, date and time formats a spreadsheet converted to PDF is shown in. */
    public var region: String?
    /** How a thumbnail is fitted, when the target format is an image. */
    public var thumbnail: ConvertThumbnailRequest?
    /** How a spreadsheet is laid out on the page, when it is converted to PDF. */
    public var spreadsheetLayout: ConvertSpreadsheetLayoutRequest?
    /** The PDF settings, used when the target format is PDF. */
    public var pdf: ConvertPdfRequest?

    public init(fileId: Int, folderId: Int? = nil, codePage: Int? = nil, delimiter: Int? = nil, documentLayout: ConvertDocumentLayoutRequest? = nil, documentRenderer: ConvertDocumentRendererRequest? = nil, outputtype: String?, password: String? = nil, region: String? = nil, thumbnail: ConvertThumbnailRequest? = nil, spreadsheetLayout: ConvertSpreadsheetLayoutRequest? = nil, pdf: ConvertPdfRequest? = nil) {
        self.fileId = fileId
        self.folderId = folderId
        self.codePage = codePage
        self.delimiter = delimiter
        self.documentLayout = documentLayout
        self.documentRenderer = documentRenderer
        self.outputtype = outputtype
        self.password = password
        self.region = region
        self.thumbnail = thumbnail
        self.spreadsheetLayout = spreadsheetLayout
        self.pdf = pdf
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fileId
        case folderId
        case codePage
        case delimiter
        case documentLayout
        case documentRenderer
        case outputtype
        case password
        case region
        case thumbnail
        case spreadsheetLayout
        case pdf
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(fileId, forKey: .fileId)
        try container.encodeIfPresent(folderId, forKey: .folderId)
        try container.encodeIfPresent(codePage, forKey: .codePage)
        try container.encodeIfPresent(delimiter, forKey: .delimiter)
        try container.encodeIfPresent(documentLayout, forKey: .documentLayout)
        try container.encodeIfPresent(documentRenderer, forKey: .documentRenderer)
        try container.encode(outputtype, forKey: .outputtype)
        try container.encodeIfPresent(password, forKey: .password)
        try container.encodeIfPresent(region, forKey: .region)
        try container.encodeIfPresent(thumbnail, forKey: .thumbnail)
        try container.encodeIfPresent(spreadsheetLayout, forKey: .spreadsheetLayout)
        try container.encodeIfPresent(pdf, forKey: .pdf)
    }
}

