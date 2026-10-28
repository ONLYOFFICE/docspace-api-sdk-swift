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
import OpenAPIClient

// --- CONFIG ---
let configuration = OpenAPIClientAPIConfiguration.shared
configuration.basePath = "https://your-docspace.onlyoffice.com"

do {
    // --- AUTH ---
    let authDto = AuthRequestDto(userName: "example@onlyoffice.com", password: "11111111")

    let authResponse = try await AuthenticationAPIApi.authenticateMe(authRequestDto: authDto)
    guard let token = authResponse.response?.token else {
        print("The portal returned no token")
        exit(1)
    }

    configuration.customHeaders["Authorization"] = "Bearer \(token)"

    // --- FOLDERS ---
    let myFolder = try await FilesFoldersAPIApi.getMyFolder(count: 100, startIndex: 0)
    guard let myFolderId = myFolder.response?.current?.id else {
        print("The portal returned no My documents folder")
        exit(1)
    }
    print("My folder id: \(myFolderId)")

    let created = try await FilesFoldersAPIApi.createFolder(folderId: myFolderId, createFolderRequest: CreateFolderRequest(title: "TestTitle"))
    guard let newFolderId = created.response?.id else {
        print("The portal returned no folder id")
        exit(1)
    }
    print("Created folder: \(newFolderId)")

    let renamed = try await FilesFoldersAPIApi.renameFolder(folderId: newFolderId, createFolderRequest: CreateFolderRequest(title: "Updated title"))
    print("My folder title: \(renamed.response?.title ?? "")")

    let deleted = try await FilesFoldersAPIApi.deleteFolder(folderId: newFolderId, deleteFolderRequest: DeleteFolderRequest(deleteAfter: false, immediately: true))
    print("Folder deleted status: \(deleted.statusCode ?? 0)")

    // --- ROOMS ---
    let rooms = try await RoomsAPIApi.getRoomsFolder(
        searchArea: .active,
        count: 100,
        startIndex: 0,
        sortBy: "DateAndTime",
        sortOrder: .Descending,
        fields: "current.security,folders.id"
    )
    print("Rooms status: \(rooms.statusCode ?? 0)")

    // --- BACKUP ---
    _ = try await BackupAPIApi.startBackup(startBackupRequestDto: StartBackupRequestDto(storageType: .DataStore, dump: false))
    print("Backup started")

    while true {
        let progress = try await BackupAPIApi.getBackupProgress()
        if progress.response?.isCompleted == true {
            print("Backup completed")
            break
        }
        try await Task.sleep(nanoseconds: 1_000_000_000)
    }
} catch {
    print("Request failed: \(error)")
    exit(1)
}
