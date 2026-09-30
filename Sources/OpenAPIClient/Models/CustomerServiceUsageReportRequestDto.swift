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

/** The filters that select which wallet service consumption is reported: the services, the period, the participant,  the outcome, the usage metadata and the ordering. */
public struct CustomerServiceUsageReportRequestDto: Sendable, Codable, Hashable {

    /** The wallet services whose consumption is reported, named the way the billing catalogue names them -  `backup`, `ai-tools`, `ai-search`, `disk-storage`, `docscloud`. Take the values from the `serviceName` field  of `GET api/2.0/portal/payment/walletservices`; the match ignores case, a name this installation does not  sell fails the call with 404, and an omitted list reports every service. A bare string is accepted in place  of an array for backward compatibility. */
    public var serviceName: [String]?
    /** The beginning of the reported period, inclusive. Read in the portal time zone rather than in UTC, and  defaults to the portal creation date. */
    public var startDate: Date?
    /** The end of the reported period, inclusive. Read in the portal time zone rather than in UTC, and defaults to  the moment the call is made. */
    public var endDate: Date?
    /** The participant whose consumption is reported - the account the accounting service records as the consumer.  Consumption caused by a portal user carries that user ID here; surrounding whitespace is trimmed, and an  omitted value reports every participant. */
    public var participantName: String?
    /** The outcome to keep. Consumption that is still being settled is reported as pending and may change later,  while the other outcomes are final; every outcome is reported when this is omitted. */
    public var status: OperationStatus?
    /** The usage annotations a wallet service records alongside its consumption, as the key and value pairs that  must all match for a record to be reported. The keys are chosen by the service that writes them, so read  them off the `metadata` of the records returned by `GET api/2.0/portal/payment/customer/usage` rather than  guessing; an omitted map reports every record. */
    public var metadata: [String: String?]?
    /** The name of the field the per-service totals are sorted by, spelled as the accounting service names it, such  as `ServiceName` or `StartDate`. Surrounding whitespace is trimmed, and the accounting service applies its  own ordering when this is omitted. */
    public var orderBy: String?
    /** The direction the field named in `orderBy` is sorted in. Newest or largest first is what the accounting  service does by default, so leaving this out sorts the same way as asking for descending explicitly. */
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

