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

/** [0 - Any, 1 - Unknown, 2 - ServicePayment, 4 - PackagePayment, 8 - ServiceUsage, 16 - Deposit, 32 - ReceiveProviderInvoice, 64 - ProcessProviderInvoice, 128 - WriteOffServiceProfit, 256 - Profit, 512 - PartnerAccrual, 1024 - ProviderPayment, 2048 - PartnerPayment, 4096 - Refund, 8192 - BankDeposit, 16384 - BankWithdrawal, 32768 - GoodwillCredit, 65536 - WriteOffProfit, 131072 - WriteOffDifferenceCurrency] */
public enum OperationType: Int, Sendable, Codable, CaseIterable {
    case Any = 0
    case Unknown = 1
    case ServicePayment = 2
    case PackagePayment = 4
    case ServiceUsage = 8
    case Deposit = 16
    case ReceiveProviderInvoice = 32
    case ProcessProviderInvoice = 64
    case WriteOffServiceProfit = 128
    case Profit = 256
    case PartnerAccrual = 512
    case ProviderPayment = 1024
    case PartnerPayment = 2048
    case Refund = 4096
    case BankDeposit = 8192
    case BankWithdrawal = 16384
    case GoodwillCredit = 32768
    case WriteOffProfit = 65536
    case WriteOffDifferenceCurrency = 131072
}
