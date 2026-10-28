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

/** How a spreadsheet converted to PDF is laid out on the page. A field left out takes the document service default. */
public struct ConvertSpreadsheetLayoutRequest: Sendable, Codable, Hashable {

    /** Whether the print area chosen in the spreadsheet is ignored; false converts only that area. */
    public var ignorePrintArea: Bool?
    /** The page orientation of the output PDF file: portrait or landscape. */
    public var orientation: String?
    /** The number of pages the converted area is fitted into in height; 0 does not fit it. */
    public var fitToHeight: Int?
    /** The scale of the output PDF file, in percent. */
    public var scale: Int?
    /** The number of pages the converted area is fitted into in width; 0 does not fit it. */
    public var fitToWidth: Int?
    /** Whether the row and column headings are printed in the output PDF file. */
    public var headings: Bool?
    /** Whether the grid lines are printed in the output PDF file. */
    public var gridLines: Bool?
    /** The margins of the output PDF file. */
    public var margins: ConvertSpreadsheetMarginsRequest?
    /** The page size of the output PDF file. */
    public var pageSize: ConvertSpreadsheetPageSizeRequest?

    public init(ignorePrintArea: Bool? = nil, orientation: String? = nil, fitToHeight: Int? = nil, scale: Int? = nil, fitToWidth: Int? = nil, headings: Bool? = nil, gridLines: Bool? = nil, margins: ConvertSpreadsheetMarginsRequest? = nil, pageSize: ConvertSpreadsheetPageSizeRequest? = nil) {
        self.ignorePrintArea = ignorePrintArea
        self.orientation = orientation
        self.fitToHeight = fitToHeight
        self.scale = scale
        self.fitToWidth = fitToWidth
        self.headings = headings
        self.gridLines = gridLines
        self.margins = margins
        self.pageSize = pageSize
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case ignorePrintArea
        case orientation
        case fitToHeight
        case scale
        case fitToWidth
        case headings
        case gridLines
        case margins
        case pageSize
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(ignorePrintArea, forKey: .ignorePrintArea)
        try container.encodeIfPresent(orientation, forKey: .orientation)
        try container.encodeIfPresent(fitToHeight, forKey: .fitToHeight)
        try container.encodeIfPresent(scale, forKey: .scale)
        try container.encodeIfPresent(fitToWidth, forKey: .fitToWidth)
        try container.encodeIfPresent(headings, forKey: .headings)
        try container.encodeIfPresent(gridLines, forKey: .gridLines)
        try container.encodeIfPresent(margins, forKey: .margins)
        try container.encodeIfPresent(pageSize, forKey: .pageSize)
    }
}

