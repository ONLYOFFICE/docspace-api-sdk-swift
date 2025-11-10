//
//  Copyright (c) Ascensio System SIA 2025
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

/** [0 - All, 1 - Room admin, 2 - Guest, 3 - DocSpace admin, 4 - User] */
public enum EmployeeType: Int, Sendable, Codable, CaseIterable {
    case All = 0
    case RoomAdmin = 1
    case Guest = 2
    case DocSpaceAdmin = 3
    case User = 4
}
