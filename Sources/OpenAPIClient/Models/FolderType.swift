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

/** [0 - Default, 1 - Coomon, 2 - Bunch, 3 - Trash, 5 - User, 6 - Share, 8 - Projects, 10 - Favourites, 11 - Recent, 12 - Templates, 13 - Privacy, 14 - Virtual rooms, 15 - Filling forms room, 16 - Editing room, 19 - Custom room, 20 - Archive, 21 - Thirdparty backup, 22 - Public room, 25 - Ready form folder, 26 - In process form folder, 27 - Form filling folder done, 28 - Form filling folder in progress, 29 - Virtual Data Room, 30 - Room templates folder, 31 - AI Room, 32 - Knowledge, 33 - Result storage, 34 - AI Agents, 35 - Default Templates] */
public enum FolderType: Int, Sendable, Codable, CaseIterable {
    case DEFAULT = 0
    case COMMON = 1
    case BUNCH = 2
    case TRASH = 3
    case USER = 5
    case SHARE = 6
    case Projects = 8
    case Favorites = 10
    case Recent = 11
    case Templates = 12
    case Privacy = 13
    case VirtualRooms = 14
    case FillingFormsRoom = 15
    case EditingRoom = 16
    case CustomRoom = 19
    case Archive = 20
    case ThirdpartyBackup = 21
    case PublicRoom = 22
    case ReadyFormFolder = 25
    case InProcessFormFolder = 26
    case FormFillingFolderDone = 27
    case FormFillingFolderInProgress = 28
    case VirtualDataRoom = 29
    case RoomTemplates = 30
    case AiRoom = 31
    case Knowledge = 32
    case ResultStorage = 33
    case AiAgents = 34
    case DefaultTemplates = 35
}
