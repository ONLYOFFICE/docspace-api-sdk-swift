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

/** [0 - Waiting, 1 - Created, 2 - Error, 3 - Not required, 4 - Creating] */
public enum Thumbnail: Int, Sendable, Codable, CaseIterable {
    case Waiting = 0
    case Created = 1
    case Error = 2
    case NotRequired = 3
    case Creating = 4
}
