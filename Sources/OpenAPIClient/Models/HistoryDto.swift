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

/** The file history information. */
public struct HistoryDto: Sendable, Codable, Hashable {

    /** The unique identifier for the file history entry. */
    public var id: Int
    public var action: HistoryAction
    public var initiator: EmployeeDto
    public var date: ApiDateTime
    public var data: HistoryData
    /** The list of related history. */
    public var related: [HistoryDto]?

    public init(id: Int, action: HistoryAction, initiator: EmployeeDto, date: ApiDateTime, data: HistoryData, related: [HistoryDto]? = nil) {
        self.id = id
        self.action = action
        self.initiator = initiator
        self.date = date
        self.data = data
        self.related = related
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case action
        case initiator
        case date
        case data
        case related
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(action, forKey: .action)
        try container.encode(initiator, forKey: .initiator)
        try container.encode(date, forKey: .date)
        try container.encode(data, forKey: .data)
        try container.encodeIfPresent(related, forKey: .related)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension HistoryDto: Identifiable {}
