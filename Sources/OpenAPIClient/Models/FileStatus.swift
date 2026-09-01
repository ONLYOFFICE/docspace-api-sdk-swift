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

/** [0 - None, 1 - Is editing, 2 - Is new, 4 - Is converting, 8 - Is original, 16 - Is editing alone, 32 - Is favorite, 64 - Is template, 128 - Is fill form draft, 256 - Is completed form] */
public enum FileStatus: Int, Sendable, Codable, CaseIterable {
    case None = 0
    case IsEditing = 1
    case IsNew = 2
    case IsConverting = 4
    case IsOriginal = 8
    case IsEditingAlone = 16
    case IsFavorite = 32
    case IsTemplate = 64
    case IsFillFormDraft = 128
    case IsCompletedForm = 256
}
