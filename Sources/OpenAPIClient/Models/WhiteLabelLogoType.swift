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

/** [1 - Light small, 2 - Login page, 3 - Favicon, 4 - Docs editor, 5 - Docs editor embed, 6 - Left menu, 7 - About page, 8 - Notification, 9 - Spreadsheet editor, 10 - Spreadsheet editor embed, 11 - Presentation editor, 12 - Presentation editor embed, 13 - Pdf editor, 14 - Pdf editor embed, 15 - Diagram editor, 16 - Diagram editor embed] */
public enum WhiteLabelLogoType: Int, Sendable, Codable, CaseIterable {
    case LightSmall = 1
    case LoginPage = 2
    case Favicon = 3
    case DocsEditor = 4
    case DocsEditorEmbed = 5
    case LeftMenu = 6
    case AboutPage = 7
    case Notification = 8
    case SpreadsheetEditor = 9
    case SpreadsheetEditorEmbed = 10
    case PresentationEditor = 11
    case PresentationEditorEmbed = 12
    case PdfEditor = 13
    case PdfEditorEmbed = 14
    case DiagramEditor = 15
    case DiagramEditorEmbed = 16
}
