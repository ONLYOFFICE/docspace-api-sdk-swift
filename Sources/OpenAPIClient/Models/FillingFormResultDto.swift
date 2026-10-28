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

/** The outcome of one completed form-filling session, as the person who has just filled the form sees it. */
public struct FillingFormResultDto: Sendable, Codable, Hashable {

    /** The number this copy was given among the copies made of the same form, counting up from 1. It is the number  the results of the form are ordered by and the one the title of the copy carries. */
    public var formNumber: Int
    /** The filled copy that the session produced, as an ordinary file: it can be read and downloaded with the file  operations of this API. */
    public var completedForm: FileDto?
    /** The form the copy was made from, so that a client can offer filling it once more. */
    public var originalForm: FileDto?
    /** The account that owns the original form, reported with its email address, so that the person who has just  filled the form knows who receives it and whom to ask about it. */
    public var manager: EmployeeFullDto?
    /** The room the form was filled in. It comes back as 0 when the session was reached through a link shared for  that single form rather than for its room, in which case there is no room the caller could be sent to. */
    public var roomId: Int
    /** Tells whether the calling account may open that room: true for a member of the room and for a portal  administrator, in which case a client can offer going to the room; false for the anonymous caller who filled  the form through a link and can only be shown the copy itself. */
    public var isRoomMember: Bool?

    public init(formNumber: Int, completedForm: FileDto? = nil, originalForm: FileDto? = nil, manager: EmployeeFullDto? = nil, roomId: Int, isRoomMember: Bool? = nil) {
        self.formNumber = formNumber
        self.completedForm = completedForm
        self.originalForm = originalForm
        self.manager = manager
        self.roomId = roomId
        self.isRoomMember = isRoomMember
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case formNumber
        case completedForm
        case originalForm
        case manager
        case roomId
        case isRoomMember
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(formNumber, forKey: .formNumber)
        try container.encodeIfPresent(completedForm, forKey: .completedForm)
        try container.encodeIfPresent(originalForm, forKey: .originalForm)
        try container.encodeIfPresent(manager, forKey: .manager)
        try container.encode(roomId, forKey: .roomId)
        try container.encodeIfPresent(isRoomMember, forKey: .isRoomMember)
    }
}

