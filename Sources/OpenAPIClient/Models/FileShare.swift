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

/** [0 - None, 1 - Read and write, 2 - Read, 3 - Restrict, 4 - Varies, 5 - Review, 6 - Comment, 7 - Fill forms, 8 - Custom filter, 9 - Room manager, 10 - Editing, 11 - Content creator] */
public enum FileShare: Int, Sendable, Codable, CaseIterable {
    case None = 0
    case ReadWrite = 1
    case Read = 2
    case Restrict = 3
    case Varies = 4
    case Review = 5
    case Comment = 6
    case FillForms = 7
    case CustomFilter = 8
    case RoomManager = 9
    case Editing = 10
    case ContentCreator = 11
}
