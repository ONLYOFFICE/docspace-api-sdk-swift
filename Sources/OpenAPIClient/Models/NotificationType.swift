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

/** [0 - Badges, 1 - Rooms activity, 2 - Daily feed, 3 - Usefull tips] */
public enum NotificationType: Int, Sendable, Codable, CaseIterable {
    case Badges = 0
    case RoomsActivity = 1
    case DailyFeed = 2
    case UsefullTips = 3
}
