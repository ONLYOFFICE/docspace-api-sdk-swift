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

/** [0 - None, 1 - Draft, 2 - You turn, 3 - In progress, 4 - Complete, 5 - Stoped] */
public enum FormFillingStatus: Int, Sendable, Codable, CaseIterable {
    case None = 0
    case Draft = 1
    case YouTurn = 2
    case InProgress = 3
    case Complete = 4
    case Stoped = 5
}
