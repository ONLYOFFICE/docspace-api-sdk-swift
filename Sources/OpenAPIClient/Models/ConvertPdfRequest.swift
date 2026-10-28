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

/** The settings of a PDF result. */
public struct ConvertPdfRequest: Sendable, Codable, Hashable {

    /** Whether the result is a fillable PDF form: true keeps the form fields of the source as fields to fill in,  false saves a plain PDF. */
    public var form: Bool?

    public init(form: Bool? = nil) {
        self.form = form
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case form
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(form, forKey: .form)
    }
}

