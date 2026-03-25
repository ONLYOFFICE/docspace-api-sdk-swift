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

/** [0 - Created, 1 - Running, 2 - Completed, 3 - Canceled, 4 - Failted] */
public enum DistributedTaskStatus: Int, Sendable, Codable, CaseIterable {
    case Created = 0
    case Running = 1
    case Completed = 2
    case Canceled = 3
    case Failted = 4
}
