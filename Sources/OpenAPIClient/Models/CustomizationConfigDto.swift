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

/** The customization config parameters. */
public struct CustomizationConfigDto: Sendable, Codable, Hashable {

    /** Specifies if the customization is about. */
    public var about: Bool?
    public var customer: CustomerConfigDto?
    public var anonymous: AnonymousConfigDto?
    public var feedback: FeedbackConfig?
    /** Specifies if the customization should be force saved. */
    public var forcesave: Bool?
    public var goback: GobackConfig?
    public var review: ReviewConfig?
    public var logo: LogoConfigDto?
    /** Specifies if the share should be mentioned. */
    public var mentionShare: Bool?
    public var submitForm: SubmitForm?
    public var startFillingForm: StartFillingForm?

    public init(about: Bool? = nil, customer: CustomerConfigDto? = nil, anonymous: AnonymousConfigDto? = nil, feedback: FeedbackConfig? = nil, forcesave: Bool? = nil, goback: GobackConfig? = nil, review: ReviewConfig? = nil, logo: LogoConfigDto? = nil, mentionShare: Bool? = nil, submitForm: SubmitForm? = nil, startFillingForm: StartFillingForm? = nil) {
        self.about = about
        self.customer = customer
        self.anonymous = anonymous
        self.feedback = feedback
        self.forcesave = forcesave
        self.goback = goback
        self.review = review
        self.logo = logo
        self.mentionShare = mentionShare
        self.submitForm = submitForm
        self.startFillingForm = startFillingForm
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case about
        case customer
        case anonymous
        case feedback
        case forcesave
        case goback
        case review
        case logo
        case mentionShare
        case submitForm
        case startFillingForm
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(about, forKey: .about)
        try container.encodeIfPresent(customer, forKey: .customer)
        try container.encodeIfPresent(anonymous, forKey: .anonymous)
        try container.encodeIfPresent(feedback, forKey: .feedback)
        try container.encodeIfPresent(forcesave, forKey: .forcesave)
        try container.encodeIfPresent(goback, forKey: .goback)
        try container.encodeIfPresent(review, forKey: .review)
        try container.encodeIfPresent(logo, forKey: .logo)
        try container.encodeIfPresent(mentionShare, forKey: .mentionShare)
        try container.encodeIfPresent(submitForm, forKey: .submitForm)
        try container.encodeIfPresent(startFillingForm, forKey: .startFillingForm)
    }
}

