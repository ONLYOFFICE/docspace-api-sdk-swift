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

/** Represents a balance with an account number and a list of sub-accounts. */
public struct Balance: Sendable, Codable, Hashable {

    /** The account number. */
    public var accountNumber: Int?
    /** The sub-account number. */
    public var subAccountNumber: Int?
    /** The account name. */
    public var accountName: String?
    /** The account currency. */
    public var accountCurrency: String?
    /** A list of sub-accounts. */
    public var subAccounts: [SubAccount]?
    public var lastCredit: TransactionInfo?

    public init(accountNumber: Int? = nil, subAccountNumber: Int? = nil, accountName: String? = nil, accountCurrency: String? = nil, subAccounts: [SubAccount]? = nil, lastCredit: TransactionInfo? = nil) {
        self.accountNumber = accountNumber
        self.subAccountNumber = subAccountNumber
        self.accountName = accountName
        self.accountCurrency = accountCurrency
        self.subAccounts = subAccounts
        self.lastCredit = lastCredit
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case accountNumber
        case subAccountNumber
        case accountName
        case accountCurrency
        case subAccounts
        case lastCredit
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(accountNumber, forKey: .accountNumber)
        try container.encodeIfPresent(subAccountNumber, forKey: .subAccountNumber)
        try container.encodeIfPresent(accountName, forKey: .accountName)
        try container.encodeIfPresent(accountCurrency, forKey: .accountCurrency)
        try container.encodeIfPresent(subAccounts, forKey: .subAccounts)
        try container.encodeIfPresent(lastCredit, forKey: .lastCredit)
    }
}

