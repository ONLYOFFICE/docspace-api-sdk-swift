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

/** Represents an operation. */
public struct OperationDto: Sendable, Codable, Hashable {

    public var date: ApiDateTime?
    /** The service related to the operation. */
    public var service: String?
    /** The brief operation description. */
    public var description: String?
    /** The detailed information about the operation. */
    public var details: String?
    /** The service unit. */
    public var serviceUnit: String?
    /** The quantity of the service used. */
    public var quantity: Int?
    /** The three-character ISO 4217 currency symbol of the operation. */
    public var currency: String?
    /** The credit amount of the operation. */
    public var credit: Double?
    /** The debit amount of the operation. */
    public var debit: Double?
    /** The participant original name. */
    public var participantName: String?
    /** The participant display name. */
    public var participantDisplayName: String?

    public init(date: ApiDateTime? = nil, service: String? = nil, description: String? = nil, details: String? = nil, serviceUnit: String? = nil, quantity: Int? = nil, currency: String? = nil, credit: Double? = nil, debit: Double? = nil, participantName: String? = nil, participantDisplayName: String? = nil) {
        self.date = date
        self.service = service
        self.description = description
        self.details = details
        self.serviceUnit = serviceUnit
        self.quantity = quantity
        self.currency = currency
        self.credit = credit
        self.debit = debit
        self.participantName = participantName
        self.participantDisplayName = participantDisplayName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case date
        case service
        case description
        case details
        case serviceUnit
        case quantity
        case currency
        case credit
        case debit
        case participantName
        case participantDisplayName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(date, forKey: .date)
        try container.encodeIfPresent(service, forKey: .service)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(details, forKey: .details)
        try container.encodeIfPresent(serviceUnit, forKey: .serviceUnit)
        try container.encodeIfPresent(quantity, forKey: .quantity)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(credit, forKey: .credit)
        try container.encodeIfPresent(debit, forKey: .debit)
        try container.encodeIfPresent(participantName, forKey: .participantName)
        try container.encodeIfPresent(participantDisplayName, forKey: .participantDisplayName)
    }
}

