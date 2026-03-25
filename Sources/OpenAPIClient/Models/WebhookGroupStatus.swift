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

/** [0 - None, 1 - Not sent, 2 - Status2xx, 4 - Status3xx, 8 - Status4xx, 16 - Status5xx] */
public enum WebhookGroupStatus: Int, Sendable, Codable, CaseIterable {
    case None = 0
    case NotSent = 1
    case Status2xx = 2
    case Status3xx = 4
    case Status4xx = 8
    case Status5xx = 16
}
