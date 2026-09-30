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

/** One third-party authorization or storage provider and the keys the portal connects to it with. */
public struct AuthServiceRequestsDto: Sendable, Codable, Hashable {

    /** The provider being configured, by its internal key such as `google` or `box`. Take it from the `name` of  `GET api/2.0/settings/authservice`; it is the only field that selects the provider, and a key this  installation does not know is refused the same way a provider that forbids changes is. */
    public var name: String?
    /** The provider name as it is shown in the interface. It is filled in by the portal when the providers are  listed and is ignored when keys are saved. */
    public var title: String?
    /** A sentence about what connecting the provider gives the portal, shown next to it in the interface. It is  filled in by the portal and ignored when keys are saved. */
    public var description: String?
    /** The steps an administrator has to take on the provider side to obtain the keys, shown in the interface. It is  filled in by the portal and ignored when keys are saved. */
    public var instruction: String?
    /** Whether this provider accepts keys through the API at all. A provider whose keys are fixed by the  installation reports `false`, and saving keys for it is refused; the field is reported by the portal and  ignored on the way in. */
    public var canSet: Bool?
    /** Whether the provider is a paid option. A paid one can only be connected while the portal plan includes  third-party storage or the installation is licensed as self-hosted; the field is reported by the portal and  ignored on the way in. */
    public var paid: Bool?
    /** The credentials the portal authenticates to the provider with, as the name and value pairs the provider  defines. Send the whole set the provider expects: leaving every value empty disconnects it, and a set that  fails the provider validation is cleared rather than stored half-applied. The listing operation reports the  values last saved, and a provider that forbids changes reports none at all. */
    public var props: [AuthKey]?

    public init(name: String? = nil, title: String? = nil, description: String? = nil, instruction: String? = nil, canSet: Bool? = nil, paid: Bool? = nil, props: [AuthKey]? = nil) {
        self.name = name
        self.title = title
        self.description = description
        self.instruction = instruction
        self.canSet = canSet
        self.paid = paid
        self.props = props
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case title
        case description
        case instruction
        case canSet
        case paid
        case props
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(instruction, forKey: .instruction)
        try container.encodeIfPresent(canSet, forKey: .canSet)
        try container.encodeIfPresent(paid, forKey: .paid)
        try container.encodeIfPresent(props, forKey: .props)
    }
}

