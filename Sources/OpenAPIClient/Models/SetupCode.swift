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

public struct SetupCode: Sendable, Codable, Hashable {

    public var account: String?
    public var manualEntryKey: String?
    public var qrCodeSetupImageUrl: String?

    public init(account: String? = nil, manualEntryKey: String? = nil, qrCodeSetupImageUrl: String? = nil) {
        self.account = account
        self.manualEntryKey = manualEntryKey
        self.qrCodeSetupImageUrl = qrCodeSetupImageUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case account
        case manualEntryKey
        case qrCodeSetupImageUrl
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(account, forKey: .account)
        try container.encodeIfPresent(manualEntryKey, forKey: .manualEntryKey)
        try container.encodeIfPresent(qrCodeSetupImageUrl, forKey: .qrCodeSetupImageUrl)
    }
}

