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

/** [0 - None, 1 - Create, 2 - Update, 3 - Delete, 4 - Link, 5 - Unlink, 6 - Attach, 7 - Detach, 8 - Send, 9 - Import, 10 - Export, 11 - Update access, 12 - Download, 13 - Upload, 14 - Copy, 15 - Move, 16 - Reassigns, 17 - Follow, 18 - Unfollow, 19 - Logout] */
public enum ActionType: Int, Sendable, Codable, CaseIterable {
    case None = 0
    case Create = 1
    case Update = 2
    case Delete = 3
    case Link = 4
    case Unlink = 5
    case Attach = 6
    case Detach = 7
    case Send = 8
    case Import = 9
    case Export = 10
    case UpdateAccess = 11
    case Download = 12
    case Upload = 13
    case Copy = 14
    case Move = 15
    case Reassigns = 16
    case Follow = 17
    case Unfollow = 18
    case Logout = 19
}
