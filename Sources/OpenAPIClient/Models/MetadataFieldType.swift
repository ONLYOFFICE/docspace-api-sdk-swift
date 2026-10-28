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

/** [0 - String, 1 - Date, 2 - Number, 3 - Single choice, 4 - Multiple choice] */
public enum MetadataFieldType: Int, Sendable, Codable, CaseIterable {
    case String = 0
    case Date = 1
    case Number = 2
    case SingleChoice = 3
    case MultiChoice = 4
}
