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

/** [0 - Facebook, 1 - Google, 2 - Dropbox, 3 - Docusign, 4 - Box, 5 - OneDrive, 6 - GosUslugi, 7 - LinkedIn, 8 - MailRu, 9 - VK, 10 - Wordpress, 11 - Yahoo, 12 - Yandex, 13 - Github] */
public enum LoginProvider: Int, Sendable, Codable, CaseIterable {
    case Facebook = 0
    case Google = 1
    case Dropbox = 2
    case Docusign = 3
    case Box = 4
    case OneDrive = 5
    case GosUslugi = 6
    case LinkedIn = 7
    case MailRu = 8
    case VK = 9
    case Wordpress = 10
    case Yahoo = 11
    case Yandex = 12
    case Github = 13
}
