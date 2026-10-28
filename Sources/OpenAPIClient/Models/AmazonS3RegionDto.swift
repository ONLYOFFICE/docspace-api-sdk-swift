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

/** An Amazon S3 region. */
public struct AmazonS3RegionDto: Sendable, Codable, Hashable {

    /** The region code to send as the region value when configuring an Amazon S3 storage or backup target. It is  the one field of this object that is an argument elsewhere; a code the server does not list here cannot be  reached, so pick one from this list rather than typing it. */
    public var systemName: String?
    /** The region name as Amazon writes it, in English regardless of the portal language, for showing in a  picker next to `systemName`. */
    public var displayName: String?
    /** The Amazon partition the region sits in - the ordinary commercial cloud, the Chinese one, or a government  one. Regions of different partitions are not reachable with the same credentials. */
    public var partitionName: String?
    /** The domain the partition's service host names end in, which differs from partition to partition. */
    public var partitionDnsSuffix: String?
    /** The pattern every region code of this partition matches, for validating a code before sending it. */
    public var partitionRegionRegex: String?
    /** How a service host name of the partition is assembled, with `{service}`, `{region}` and `{dnsSuffix}` to  be filled in. It is reference material - the portal builds its own endpoints from `systemName`. */
    public var hostnameTemplate: String?

    public init(systemName: String? = nil, displayName: String? = nil, partitionName: String? = nil, partitionDnsSuffix: String? = nil, partitionRegionRegex: String? = nil, hostnameTemplate: String? = nil) {
        self.systemName = systemName
        self.displayName = displayName
        self.partitionName = partitionName
        self.partitionDnsSuffix = partitionDnsSuffix
        self.partitionRegionRegex = partitionRegionRegex
        self.hostnameTemplate = hostnameTemplate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case systemName
        case displayName
        case partitionName
        case partitionDnsSuffix
        case partitionRegionRegex
        case hostnameTemplate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(systemName, forKey: .systemName)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(partitionName, forKey: .partitionName)
        try container.encodeIfPresent(partitionDnsSuffix, forKey: .partitionDnsSuffix)
        try container.encodeIfPresent(partitionRegionRegex, forKey: .partitionRegionRegex)
        try container.encodeIfPresent(hostnameTemplate, forKey: .hostnameTemplate)
    }
}

