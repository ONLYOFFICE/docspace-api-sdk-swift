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

/** A socket event from an integration module: who receives it in the portal, its name and its payload. */
public struct SendModuleEventRequest: Sendable, Codable, Hashable {

    /** A room of the module in this portal: everyone subscribed to `plugin-{module}-{room}` receives the event. Latin  letters, digits and the characters `_ . : -`. */
    public var room: String?
    /** The e-mail of the portal user who receives the event; with single sign-on it is the same e-mail the module's own  application knows the person by. Only that user's open sessions receive it. */
    public var user: String?
    /** The event name. Browsers receive it as `plugin:{module}:{event}`. Latin letters, digits and the characters  `_ . : -`. */
    public var event: String?
    /** Passed to the browser as it is, as `{ message }`. Meant as a signal to re-read, such as an unread count; use  JSON text for structured data and keep personal content out of it. */
    public var message: String?

    public init(room: String? = nil, user: String? = nil, event: String? = nil, message: String? = nil) {
        self.room = room
        self.user = user
        self.event = event
        self.message = message
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case room
        case user
        case event
        case message
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(room, forKey: .room)
        try container.encodeIfPresent(user, forKey: .user)
        try container.encodeIfPresent(event, forKey: .event)
        try container.encodeIfPresent(message, forKey: .message)
    }
}

