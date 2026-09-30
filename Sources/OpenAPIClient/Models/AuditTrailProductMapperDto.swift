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

/** The audit trail actions of one product, grouped by module. */
public struct AuditTrailProductMapperDto: Sendable, Codable, Hashable {

    /** The product this branch of the tree belongs to, as the `productType` filter of this operation spells it and  as `GET api/2.0/security/audit/types` lists it under `productTypes`. */
    public var productType: String?
    /** The locations inside the product. It is empty when `moduleType` was passed and this product has no module  of that name, which is why a product can come back with nothing under it. */
    public var modules: [AuditTrailModuleMapperDto]?

    public init(productType: String? = nil, modules: [AuditTrailModuleMapperDto]? = nil) {
        self.productType = productType
        self.modules = modules
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case productType
        case modules
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(productType, forKey: .productType)
        try container.encodeIfPresent(modules, forKey: .modules)
    }
}

