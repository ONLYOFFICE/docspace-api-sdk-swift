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

/** [0 - Date and time, 1 - AZ, 2 - Size, 3 - Author, 4 - Type, 5 - New, 6 - Date and time creation, 7 - Room type, 8 - Tags, 9 - Room, 10 - Custom order, 11 - Last opened, 12 - Used space] */
public enum SortedByType: Int, Sendable, Codable, CaseIterable {
    case DateAndTime = 0
    case AZ = 1
    case Size = 2
    case Author = 3
    case Type = 4
    case New = 5
    case DateAndTimeCreation = 6
    case RoomType = 7
    case Tags = 8
    case Room = 9
    case CustomOrder = 10
    case LastOpened = 11
    case UsedSpace = 12
}
