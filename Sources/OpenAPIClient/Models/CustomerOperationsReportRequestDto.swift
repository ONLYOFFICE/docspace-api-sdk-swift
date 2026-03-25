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

/** The request parameters for generating a report on client operations. */
public struct CustomerOperationsReportRequestDto: Sendable, Codable, Hashable {

    /** The service name. */
    public var serviceName: String?
    /** Write-off of the quota for the service */
    public var writeOffServiceQuota: Bool?
    /** The report start date. */
    public var startDate: Date?
    /** The report end date. */
    public var endDate: Date?
    /** The participant name. */
    public var participantName: String?
    /** Specifies whether to include credit operations in the report. */
    public var credit: Bool?
    /** Specifies whether to include debit operations in the report. */
    public var debit: Bool?
    public var types: OperationType?
    public var status: OperationStatus?
    /** The field to order by. */
    public var orderBy: String?
    public var orderType: OperationOrderType?

    public init(serviceName: String? = nil, writeOffServiceQuota: Bool? = nil, startDate: Date? = nil, endDate: Date? = nil, participantName: String? = nil, credit: Bool? = nil, debit: Bool? = nil, types: OperationType? = nil, status: OperationStatus? = nil, orderBy: String? = nil, orderType: OperationOrderType? = nil) {
        self.serviceName = serviceName
        self.writeOffServiceQuota = writeOffServiceQuota
        self.startDate = startDate
        self.endDate = endDate
        self.participantName = participantName
        self.credit = credit
        self.debit = debit
        self.types = types
        self.status = status
        self.orderBy = orderBy
        self.orderType = orderType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case serviceName
        case writeOffServiceQuota
        case startDate
        case endDate
        case participantName
        case credit
        case debit
        case types
        case status
        case orderBy
        case orderType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(serviceName, forKey: .serviceName)
        try container.encodeIfPresent(writeOffServiceQuota, forKey: .writeOffServiceQuota)
        try container.encodeIfPresent(startDate, forKey: .startDate)
        try container.encodeIfPresent(endDate, forKey: .endDate)
        try container.encodeIfPresent(participantName, forKey: .participantName)
        try container.encodeIfPresent(credit, forKey: .credit)
        try container.encodeIfPresent(debit, forKey: .debit)
        try container.encodeIfPresent(types, forKey: .types)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(orderBy, forKey: .orderBy)
        try container.encodeIfPresent(orderType, forKey: .orderType)
    }
}

