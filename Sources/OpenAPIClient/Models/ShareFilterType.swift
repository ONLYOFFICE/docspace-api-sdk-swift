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

/** [0 - User or group, 1 - Invitation link, 2 - External link, 4 - Additional external link, 8 - Primary external link, 16 - User, 32 - Group] */
public enum ShareFilterType: Int, Sendable, Codable, CaseIterable {
    case UserOrGroup = 0
    case InvitationLink = 1
    case ExternalLink = 2
    case AdditionalExternalLink = 4
    case PrimaryExternalLink = 8
    case Link = 15
    case User = 16
    case Group = 32
}
