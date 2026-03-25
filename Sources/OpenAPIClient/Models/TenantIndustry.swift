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

/** [0 - Other, 1 - Accounting, 2 - Advertising marketing PR, 3 - Banking, 4 - Consulting, 5 - Design, 6 - Education, 7 - Environment, 8 - Financial services, 9 - Health care, 10 - IT, 11 - Legal, 12 - Manufacturing, 13 - Public sector, 14 - Publishing, 15 - Retail sales, 16 - Telecommunications] */
public enum TenantIndustry: Int, Sendable, Codable, CaseIterable {
    case Other = 0
    case Accounting = 1
    case AdvertisingMarketingPR = 2
    case Banking = 3
    case Consulting = 4
    case Design = 5
    case Education = 6
    case Environment = 7
    case FinancialServices = 8
    case HealthCare = 9
    case IT = 10
    case Legal = 11
    case Manufacturing = 12
    case PublicSector = 13
    case Publishing = 14
    case RetailSales = 15
    case Telecommunications = 16
}
