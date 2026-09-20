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

/** How the editor interface is dressed: branding, the buttons that lead back into the portal, and the behaviour of  review, mentions and form submission. */
public struct CustomizationConfigDto: Sendable, Codable, Hashable {

    /** Whether the About entry of the editor menu is shown. */
    public var about: Bool?
    /** The branding of the organization running the portal. It is filled in on a server installation only and is  empty in the cloud. */
    public var customer: CustomerConfigDto?
    /** How an anonymous participant is treated in this session. */
    public var anonymous: AnonymousConfigDto?
    /** The support link the editor offers behind its feedback button. */
    public var feedback: FeedbackConfig?
    /** Whether the editors write intermediate revisions while the document stays open. It is empty when the portal  leaves the decision to the editors themselves. */
    public var forcesave: Bool?
    /** Where the editor returns the user to when they leave the document. It is empty when there is nowhere to go  back to, as in an embedded opening. */
    public var goback: GobackConfig?
    /** How tracked changes are displayed when the document opens; it depends on whether this session may write. */
    public var review: ReviewConfig?
    /** The logo the editor shows, in the variants the current layout and file type need. */
    public var logo: LogoConfigDto?
    /** Whether mentioning a user who cannot yet open the document offers to share it with them, instead of silently  notifying nobody. */
    public var mentionShare: Bool?
    /** The submit button of a form: whether it is shown and what it says. */
    public var submitForm: SubmitForm?
    /** The button that starts filling out the form. It is empty when this opening offers no such button. */
    public var startFillingForm: StartFillingForm?
    /** The AI configuration settings. */
    public var ai: AIConfig?

    public init(about: Bool? = nil, customer: CustomerConfigDto? = nil, anonymous: AnonymousConfigDto? = nil, feedback: FeedbackConfig? = nil, forcesave: Bool? = nil, goback: GobackConfig? = nil, review: ReviewConfig? = nil, logo: LogoConfigDto? = nil, mentionShare: Bool? = nil, submitForm: SubmitForm? = nil, startFillingForm: StartFillingForm? = nil, ai: AIConfig? = nil) {
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
        self.ai = ai
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
        case ai
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
        try container.encodeIfPresent(ai, forKey: .ai)
    }
}

