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

/** [0 - Unknown, 1 - Archive, 2 - Video, 3 - Audio, 4 - Image, 5 - Spreadsheet, 6 - Presentation, 7 - Document, 10 - Pdf, 11 - Diagram] */
public enum FileType: Int, Sendable, Codable, CaseIterable {
    case Unknown = 0
    case Archive = 1
    case Video = 2
    case Audio = 3
    case Image = 4
    case Spreadsheet = 5
    case Presentation = 6
    case Document = 7
    case Pdf = 10
    case Diagram = 11
}
