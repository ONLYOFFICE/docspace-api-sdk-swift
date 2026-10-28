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

/** [0 - *, 1 - user.created, 2 - user.invited, 4 - user.updated, 8 - user.deleted, 16 - group.created, 32 - group.updated, 64 - group.deleted, 128 - file.created, 256 - file.uploaded, 512 - file.updated, 1024 - file.trashed, 2048 - file.deleted, 4096 - file.restored, 8192 - file.copied, 16384 - file.moved, 32768 - folder.created, 65536 - folder.updated, 131072 - folder.trashed, 262144 - folder.deleted, 524288 - folder.restored, 1048576 - folder.copied, 2097152 - folder.moved, 4194304 - room.created, 8388608 - room.updated, 16777216 - room.archived, 33554432 - room.deleted, 67108864 - room.restored, 134217728 - room.copied, 268435456 - form.submit, 536870912 - form.filled.out, 1073741824 - form.stopped] */
public enum WebhookTrigger: Int, Sendable, Codable, CaseIterable {
    case All = 0
    case UserCreated = 1
    case UserInvited = 2
    case UserUpdated = 4
    case UserDeleted = 8
    case GroupCreated = 16
    case GroupUpdated = 32
    case GroupDeleted = 64
    case FileCreated = 128
    case FileUploaded = 256
    case FileUpdated = 512
    case FileTrashed = 1024
    case FileDeleted = 2048
    case FileRestored = 4096
    case FileCopied = 8192
    case FileMoved = 16384
    case FolderCreated = 32768
    case FolderUpdated = 65536
    case FolderTrashed = 131072
    case FolderDeleted = 262144
    case FolderRestored = 524288
    case FolderCopied = 1048576
    case FolderMoved = 2097152
    case RoomCreated = 4194304
    case RoomUpdated = 8388608
    case RoomArchived = 16777216
    case RoomDeleted = 33554432
    case RoomRestored = 67108864
    case RoomCopied = 134217728
    case FormSubmit = 268435456
    case FormFilledOut = 536870912
    case FormStopped = 1073741824
}
