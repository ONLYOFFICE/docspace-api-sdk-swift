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

/** One movement on the portal wallet: what it was for, who caused it, and how much money it moved. */
public struct OperationDto: Sendable, Codable, Hashable {

    /** When the movement was booked, in the portal time zone - the same zone the `startDate` and `endDate`  filters are read in, so the two do line up here. */
    public var date: ApiDateTime?
    /** The wallet service the movement belongs to, by its stable key. It is what the `serviceName` filter  matches on, and it is empty for a movement that belongs to no service, such as a top-up. */
    public var service: String?
    /** A one-line summary of the movement in the portal language, already composed from the service and the  quantity - meant to be printed as it is rather than parsed. */
    public var description: String?
    /** The longer explanation of the same movement, where the service recorded one. It is empty for a movement  that has nothing to add to `description`. */
    public var details: String?
    /** What `quantity` counts for this service, in the portal language. AI consumption is reported in tokens  here rather than in the AI credits the service is sold in. */
    public var serviceUnit: String?
    /** How many units the movement covers, in the unit named by `serviceUnit`. It is `0` for a movement that  moves money without consuming a service. */
    public var quantity: Int?
    /** The currency `credit` and `debit` are expressed in, as a three-letter ISO 4217 code. It is the accounting  currency of the wallet, which need not be the currency the subscription is priced in. */
    public var currency: String?
    /** The amount that went into the wallet. It is `0` on a movement that only took money out, so the pair of  `credit` and `debit` is what shows which way the money went; the `credit` and `debit` filters of the  operation select the two directions by exactly this. */
    public var credit: Double?
    /** The amount that was taken out of the wallet, `0` on a movement that put money in. */
    public var debit: Double?
    /** Who caused the movement, as the billing service records them - an internal name, which is what the  `participantName` filter matches on. Show `participantDisplayName` instead. */
    public var participantName: String?
    /** The same person as their portal display name. It falls back to `participantName` when the name belongs to  no portal account, so it is never empty while `participantName` is filled. */
    public var participantDisplayName: String?
    /** What kind of thing an AI operation was run on - an agent, a file, a folder, a room or a form. It is empty  on any movement that is not an AI charge. */
    public var sourceType: String?
    /** The title that thing had when the operation ran, kept as recorded, so it does not follow a later rename.  Empty under the same conditions as `sourceType`. */
    public var sourceTitle: String?
    /** The identifier of that thing, to look it up in the module it belongs to. Empty under the same conditions  as `sourceType`. */
    public var sourceId: String?
    /** What kind of movement this is - a payment, a charge, a refund, a correction. It is what the `type` filter  matches on, and `Unknown` covers a movement the billing service reported under a kind this build does not  recognise. */
    public var type: OperationType?

    public init(date: ApiDateTime? = nil, service: String? = nil, description: String? = nil, details: String? = nil, serviceUnit: String? = nil, quantity: Int? = nil, currency: String? = nil, credit: Double? = nil, debit: Double? = nil, participantName: String? = nil, participantDisplayName: String? = nil, sourceType: String? = nil, sourceTitle: String? = nil, sourceId: String? = nil, type: OperationType? = nil) {
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
        self.sourceType = sourceType
        self.sourceTitle = sourceTitle
        self.sourceId = sourceId
        self.type = type
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
        case sourceType
        case sourceTitle
        case sourceId
        case type
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
        try container.encodeIfPresent(sourceType, forKey: .sourceType)
        try container.encodeIfPresent(sourceTitle, forKey: .sourceTitle)
        try container.encodeIfPresent(sourceId, forKey: .sourceId)
        try container.encodeIfPresent(type, forKey: .type)
    }
}

