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

/** The customer information. */
public struct CustomerInfoDto: Sendable, Codable, Hashable {

    /** The portal ID. */
    public var portalId: String?
    public var paymentMethodStatus: PaymentMethodStatus?
    /** The customer email address. */
    public var email: String?
    public var payer: EmployeeDto?

    public init(portalId: String? = nil, paymentMethodStatus: PaymentMethodStatus? = nil, email: String? = nil, payer: EmployeeDto? = nil) {
        self.portalId = portalId
        self.paymentMethodStatus = paymentMethodStatus
        self.email = email
        self.payer = payer
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case portalId
        case paymentMethodStatus
        case email
        case payer
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(portalId, forKey: .portalId)
        try container.encodeIfPresent(paymentMethodStatus, forKey: .paymentMethodStatus)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(payer, forKey: .payer)
    }
}

