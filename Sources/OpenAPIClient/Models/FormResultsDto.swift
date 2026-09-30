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

/** One completed copy of a form, with the values that were entered into it. */
public struct FormResultsDto: Sendable, Codable, Hashable {

    /** When the portal recorded this copy, in UTC: the moment the filled copy was completed and its data indexed, not  the moment the form itself was made. */
    public var createOn: Date?
    /** The values that were entered into this copy, one entry per field, preceded by an entry keyed `FormNumber` that  carries the number of the copy and is what the submissions are ordered by. Fields holding a picture or a  signature are left out of the record, so a field missing here was not necessarily left blank. */
    public var formsData: [FormsItemData]?

    public init(createOn: Date? = nil, formsData: [FormsItemData]? = nil) {
        self.createOn = createOn
        self.formsData = formsData
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createOn
        case formsData
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(createOn, forKey: .createOn)
        try container.encodeIfPresent(formsData, forKey: .formsData)
    }
}

