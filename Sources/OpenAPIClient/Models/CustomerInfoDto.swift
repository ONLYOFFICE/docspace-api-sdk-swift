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

/** The billing customer behind the portal, and which portal member pays for it. */
public struct CustomerInfoDto: Sendable, Codable, Hashable {

    /** The portal's identifier in the billing system, which is what support and invoices refer to. It is not the  portal alias. */
    public var portalId: String?
    /** Whether a payment method is stored for the account and usable. Without one the portal can hold a wallet  balance but cannot be charged automatically. */
    public var paymentMethodStatus: PaymentMethodStatus?
    /** The customer's payment method type. */
    public var paymentMethodType: String?
    /** Indicates whether the customer's payment method is delayed, i.e. the money reaches the wallet only after  the transfer settles rather than immediately. */
    public var isDelayedPaymentMethod: Bool?
    /** The address the billing account is registered to, lower-cased. It need not belong to a portal member,  which is exactly when `payer` stays empty. */
    public var email: String?
    /** The portal member whose account is behind the billing address. It is empty when `email` matches no member  of this portal, and while it is empty every operation of this group that only the payer may call is out  of reach for everybody. */
    public var payer: EmployeeDto?

    public init(portalId: String? = nil, paymentMethodStatus: PaymentMethodStatus? = nil, paymentMethodType: String? = nil, isDelayedPaymentMethod: Bool? = nil, email: String? = nil, payer: EmployeeDto? = nil) {
        self.portalId = portalId
        self.paymentMethodStatus = paymentMethodStatus
        self.paymentMethodType = paymentMethodType
        self.isDelayedPaymentMethod = isDelayedPaymentMethod
        self.email = email
        self.payer = payer
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case portalId
        case paymentMethodStatus
        case paymentMethodType
        case isDelayedPaymentMethod
        case email
        case payer
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(portalId, forKey: .portalId)
        try container.encodeIfPresent(paymentMethodStatus, forKey: .paymentMethodStatus)
        try container.encodeIfPresent(paymentMethodType, forKey: .paymentMethodType)
        try container.encodeIfPresent(isDelayedPaymentMethod, forKey: .isDelayedPaymentMethod)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(payer, forKey: .payer)
    }
}

