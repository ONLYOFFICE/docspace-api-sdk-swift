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

/** The parameters of the form filling result. */
public struct FillingFormResultDtoInteger: Sendable, Codable, Hashable {

    /** The filling form number. */
    public var formNumber: Int
    public var completedForm: FileDtoInteger?
    public var originalForm: FileDtoInteger?
    public var manager: EmployeeFullDto?
    /** The room ID where filling the form. */
    public var roomId: Int
    /** Specifies if the manager who fills the form is a room member or not. */
    public var isRoomMember: Bool?

    public init(formNumber: Int, completedForm: FileDtoInteger? = nil, originalForm: FileDtoInteger? = nil, manager: EmployeeFullDto? = nil, roomId: Int, isRoomMember: Bool? = nil) {
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

