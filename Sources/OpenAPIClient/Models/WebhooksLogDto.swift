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

/** The webhook log parameters. */
public struct WebhooksLogDto: Sendable, Codable, Hashable {

    /** The webhook log ID. */
    public var id: Int
    /** The webhook configuration name. */
    public var configName: String?
    public var trigger: WebhookTrigger?
    /** The webhook creation time. */
    public var creationTime: Date?
    /** The webhook method. */
    public var method: String?
    /** The webhook route. */
    public var route: String?
    /** The webhook request headers. */
    public var requestHeaders: String?
    /** The webhook request payload. */
    public var requestPayload: String?
    /** The webhook response headers. */
    public var responseHeaders: String?
    /** The webhook response payload. */
    public var responsePayload: String?
    /** The webhook status. */
    public var status: Int?
    /** The webhook delivery time. */
    public var delivery: Date?

    public init(id: Int, configName: String? = nil, trigger: WebhookTrigger? = nil, creationTime: Date? = nil, method: String? = nil, route: String? = nil, requestHeaders: String? = nil, requestPayload: String? = nil, responseHeaders: String? = nil, responsePayload: String? = nil, status: Int? = nil, delivery: Date? = nil) {
        self.id = id
        self.configName = configName
        self.trigger = trigger
        self.creationTime = creationTime
        self.method = method
        self.route = route
        self.requestHeaders = requestHeaders
        self.requestPayload = requestPayload
        self.responseHeaders = responseHeaders
        self.responsePayload = responsePayload
        self.status = status
        self.delivery = delivery
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case configName
        case trigger
        case creationTime
        case method
        case route
        case requestHeaders
        case requestPayload
        case responseHeaders
        case responsePayload
        case status
        case delivery
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(configName, forKey: .configName)
        try container.encodeIfPresent(trigger, forKey: .trigger)
        try container.encodeIfPresent(creationTime, forKey: .creationTime)
        try container.encodeIfPresent(method, forKey: .method)
        try container.encodeIfPresent(route, forKey: .route)
        try container.encodeIfPresent(requestHeaders, forKey: .requestHeaders)
        try container.encodeIfPresent(requestPayload, forKey: .requestPayload)
        try container.encodeIfPresent(responseHeaders, forKey: .responseHeaders)
        try container.encodeIfPresent(responsePayload, forKey: .responsePayload)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(delivery, forKey: .delivery)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension WebhooksLogDto: Identifiable {}
