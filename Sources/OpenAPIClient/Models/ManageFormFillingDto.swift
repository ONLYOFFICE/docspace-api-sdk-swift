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

/** The action to apply to the filling of a PDF form. */
public struct ManageFormFillingDto: Sendable, Codable, Hashable {

    /** The PDF form the action applies to. This is the value the operation reads, rather than the identifier in its  route, and the two are to be sent the same. */
    public var formId: Int
    /** The action to apply. */
    public var action: FormFillingManageAction?

    public init(formId: Int, action: FormFillingManageAction? = nil) {
        self.formId = formId
        self.action = action
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case formId
        case action
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(formId, forKey: .formId)
        try container.encodeIfPresent(action, forKey: .action)
    }
}

