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

/** The request parameters for generating a customer service usage report. */
public struct CustomerServiceUsageReportRequestDto: Sendable, Codable, Hashable {

    /** The service name list. A single string is also accepted for backward compatibility. */
    public var serviceName: [String]?
    /** The report start date. */
    public var startDate: Date?
    /** The report end date. */
    public var endDate: Date?
    /** The participant name. */
    public var participantName: String?
    /** The operation status to filter by. */
    public var status: OperationStatus?
    /** Metadata key-value pairs to filter by. */
    public var metadata: [String: String?]?
    /** The field to order by. */
    public var orderBy: String?
    /** Order direction: Ascending or Descending. */
    public var orderType: OperationOrderType?

    public init(serviceName: [String]? = nil, startDate: Date? = nil, endDate: Date? = nil, participantName: String? = nil, status: OperationStatus? = nil, metadata: [String: String?]? = nil, orderBy: String? = nil, orderType: OperationOrderType? = nil) {
        self.serviceName = serviceName
        self.startDate = startDate
        self.endDate = endDate
        self.participantName = participantName
        self.status = status
        self.metadata = metadata
        self.orderBy = orderBy
        self.orderType = orderType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case serviceName
        case startDate
        case endDate
        case participantName
        case status
        case metadata
        case orderBy
        case orderType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(serviceName, forKey: .serviceName)
        try container.encodeIfPresent(startDate, forKey: .startDate)
        try container.encodeIfPresent(endDate, forKey: .endDate)
        try container.encodeIfPresent(participantName, forKey: .participantName)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(metadata, forKey: .metadata)
        try container.encodeIfPresent(orderBy, forKey: .orderBy)
        try container.encodeIfPresent(orderType, forKey: .orderType)
    }
}

