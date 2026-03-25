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

/** [0 - Ok, 1 - Invalid, 2 - Expired, 3 - Tariff limit, 4 - User existed, 5 - User excluded, 6 - Quota failed] */
public enum ValidationResult: Int, Sendable, Codable, CaseIterable {
    case Ok = 0
    case Invalid = 1
    case Expired = 2
    case TariffLimit = 3
    case UserExisted = 4
    case UserExcluded = 5
    case QuotaFailed = 6
}
