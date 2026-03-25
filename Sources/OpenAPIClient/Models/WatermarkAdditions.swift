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

/** [1 - User name, 2 - User email, 4 - User ip adress, 8 - Current date, 16 - Room name] */
public enum WatermarkAdditions: Int, Sendable, Codable, CaseIterable {
    case UserName = 1
    case UserEmail = 2
    case UserIpAdress = 4
    case CurrentDate = 8
    case RoomName = 16
}
