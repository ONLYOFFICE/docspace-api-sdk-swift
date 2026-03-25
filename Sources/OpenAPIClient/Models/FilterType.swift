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

/** [0 - None, 1 - Files  only, 2 - Folders only, 3 - Documents only, 4 - Presentations only, 5 - Spreadsheets only, 7 - Images only, 8 - By user, 9 - By department, 10 - Archive only, 11 - By extension, 12 - Media only, 13 - Filling forms rooms, 14 - Editing rooms, 17 - Custom rooms, 20 - Public rooms, 22 - Pdf, 23 - Pdf form, 24 - Virtual data rooms, 25 - Diagrams only, 26 - Ai rooms] */
public enum FilterType: Int, Sendable, Codable, CaseIterable {
    case None = 0
    case FilesOnly = 1
    case FoldersOnly = 2
    case DocumentsOnly = 3
    case PresentationsOnly = 4
    case SpreadsheetsOnly = 5
    case ImagesOnly = 7
    case ByUser = 8
    case ByDepartment = 9
    case ArchiveOnly = 10
    case ByExtension = 11
    case MediaOnly = 12
    case FillingFormsRooms = 13
    case EditingRooms = 14
    case CustomRooms = 17
    case PublicRooms = 20
    case Pdf = 22
    case PdfForm = 23
    case VirtualDataRooms = 24
    case DiagramsOnly = 25
    case AiRooms = 26
}
