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

public struct MigratingApiGroup: Sendable, Codable, Hashable {

    public var shouldImport: Bool?
    public var groupName: String?
    public var moduleName: String?
    public var userUidList: [String]?

    public init(shouldImport: Bool? = nil, groupName: String? = nil, moduleName: String? = nil, userUidList: [String]? = nil) {
        self.shouldImport = shouldImport
        self.groupName = groupName
        self.moduleName = moduleName
        self.userUidList = userUidList
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case shouldImport
        case groupName
        case moduleName
        case userUidList
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(shouldImport, forKey: .shouldImport)
        try container.encodeIfPresent(groupName, forKey: .groupName)
        try container.encodeIfPresent(moduleName, forKey: .moduleName)
        try container.encodeIfPresent(userUidList, forKey: .userUidList)
    }
}

