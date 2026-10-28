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

/** [0 - Unknown, 1 - ServicePayment, 2 - PackagePayment, 3 - AiServicePayment, 4 - Deposit, 5 - ReceiveProviderInvoice, 6 - ProcessProviderInvoice, 7 - WriteOffServiceProfit, 8 - Profit, 9 - PartnerAccrual, 10 - ProviderPayment, 11 - PartnerPayment, 12 - Refund, 13 - BankDeposit, 14 - BankWithdrawal, 15 - GoodwillCredit, 16 - WriteOffProfit, 17 - WriteOffDifferenceCurrency, 18 - AiDebit, 19 - AiCredit] */
public enum OperationType: Int, Sendable, Codable, CaseIterable {
    case Unknown = 0
    case ServicePayment = 1
    case PackagePayment = 2
    case AiServicePayment = 3
    case Deposit = 4
    case ReceiveProviderInvoice = 5
    case ProcessProviderInvoice = 6
    case WriteOffServiceProfit = 7
    case Profit = 8
    case PartnerAccrual = 9
    case ProviderPayment = 10
    case PartnerPayment = 11
    case Refund = 12
    case BankDeposit = 13
    case BankWithdrawal = 14
    case GoodwillCredit = 15
    case WriteOffProfit = 16
    case WriteOffDifferenceCurrency = 17
    case AiDebit = 18
    case AiCredit = 19
}
