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

/** [0 - None, 1 - Hour, 2 - Day, 3 - Week, 4 - Month, 5 - Year, 6 - ThreeYears] */
public enum PriceTimeUnit: Int, Sendable, Codable, CaseIterable {
    case None = 0
    case Hour = 1
    case Day = 2
    case Week = 3
    case Month = 4
    case Year = 5
    case ThreeYears = 6
}
