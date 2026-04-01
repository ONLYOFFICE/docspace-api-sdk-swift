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

/** The actions that can be performed with the file entry. */
public struct FileEntryDtoIntegerAllOfSecurity: Sendable, Codable, Hashable {

    public var read: Bool?
    public var comment: Bool?
    public var fillForms: Bool?
    public var review: Bool?
    public var create: Bool?
    public var createFrom: Bool?
    public var edit: Bool?
    public var delete: Bool?
    public var customFilter: Bool?
    public var editRoom: Bool?
    public var rename: Bool?
    public var readHistory: Bool?
    public var lock: Bool?
    public var editHistory: Bool?
    public var copyTo: Bool?
    public var copy: Bool?
    public var moveTo: Bool?
    public var move: Bool?
    public var pin: Bool?
    public var mute: Bool?
    public var editAccess: Bool?
    public var duplicate: Bool?
    public var submitToFormGallery: Bool?
    public var download: Bool?
    public var convert: Bool?
    public var copySharedLink: Bool?
    public var readLinks: Bool?
    public var reconnect: Bool?
    public var createRoomFrom: Bool?
    public var copyLink: Bool?
    public var embed: Bool?
    public var changeOwner: Bool?
    public var indexExport: Bool?
    public var startFilling: Bool?
    public var fillingStatus: Bool?
    public var resetFilling: Bool?
    public var stopFilling: Bool?
    public var openForm: Bool?
    public var editInternal: Bool?
    public var editExpiration: Bool?
    public var vectorization: Bool?
    public var askAi: Bool?
    public var useChat: Bool?
    public var updateXlsx: Bool?

    public init(read: Bool? = nil, comment: Bool? = nil, fillForms: Bool? = nil, review: Bool? = nil, create: Bool? = nil, createFrom: Bool? = nil, edit: Bool? = nil, delete: Bool? = nil, customFilter: Bool? = nil, editRoom: Bool? = nil, rename: Bool? = nil, readHistory: Bool? = nil, lock: Bool? = nil, editHistory: Bool? = nil, copyTo: Bool? = nil, copy: Bool? = nil, moveTo: Bool? = nil, move: Bool? = nil, pin: Bool? = nil, mute: Bool? = nil, editAccess: Bool? = nil, duplicate: Bool? = nil, submitToFormGallery: Bool? = nil, download: Bool? = nil, convert: Bool? = nil, copySharedLink: Bool? = nil, readLinks: Bool? = nil, reconnect: Bool? = nil, createRoomFrom: Bool? = nil, copyLink: Bool? = nil, embed: Bool? = nil, changeOwner: Bool? = nil, indexExport: Bool? = nil, startFilling: Bool? = nil, fillingStatus: Bool? = nil, resetFilling: Bool? = nil, stopFilling: Bool? = nil, openForm: Bool? = nil, editInternal: Bool? = nil, editExpiration: Bool? = nil, vectorization: Bool? = nil, askAi: Bool? = nil, useChat: Bool? = nil, updateXlsx: Bool? = nil) {
        self.read = read
        self.comment = comment
        self.fillForms = fillForms
        self.review = review
        self.create = create
        self.createFrom = createFrom
        self.edit = edit
        self.delete = delete
        self.customFilter = customFilter
        self.editRoom = editRoom
        self.rename = rename
        self.readHistory = readHistory
        self.lock = lock
        self.editHistory = editHistory
        self.copyTo = copyTo
        self.copy = copy
        self.moveTo = moveTo
        self.move = move
        self.pin = pin
        self.mute = mute
        self.editAccess = editAccess
        self.duplicate = duplicate
        self.submitToFormGallery = submitToFormGallery
        self.download = download
        self.convert = convert
        self.copySharedLink = copySharedLink
        self.readLinks = readLinks
        self.reconnect = reconnect
        self.createRoomFrom = createRoomFrom
        self.copyLink = copyLink
        self.embed = embed
        self.changeOwner = changeOwner
        self.indexExport = indexExport
        self.startFilling = startFilling
        self.fillingStatus = fillingStatus
        self.resetFilling = resetFilling
        self.stopFilling = stopFilling
        self.openForm = openForm
        self.editInternal = editInternal
        self.editExpiration = editExpiration
        self.vectorization = vectorization
        self.askAi = askAi
        self.useChat = useChat
        self.updateXlsx = updateXlsx
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case read = "Read"
        case comment = "Comment"
        case fillForms = "FillForms"
        case review = "Review"
        case create = "Create"
        case createFrom = "CreateFrom"
        case edit = "Edit"
        case delete = "Delete"
        case customFilter = "CustomFilter"
        case editRoom = "EditRoom"
        case rename = "Rename"
        case readHistory = "ReadHistory"
        case lock = "Lock"
        case editHistory = "EditHistory"
        case copyTo = "CopyTo"
        case copy = "Copy"
        case moveTo = "MoveTo"
        case move = "Move"
        case pin = "Pin"
        case mute = "Mute"
        case editAccess = "EditAccess"
        case duplicate = "Duplicate"
        case submitToFormGallery = "SubmitToFormGallery"
        case download = "Download"
        case convert = "Convert"
        case copySharedLink = "CopySharedLink"
        case readLinks = "ReadLinks"
        case reconnect = "Reconnect"
        case createRoomFrom = "CreateRoomFrom"
        case copyLink = "CopyLink"
        case embed = "Embed"
        case changeOwner = "ChangeOwner"
        case indexExport = "IndexExport"
        case startFilling = "StartFilling"
        case fillingStatus = "FillingStatus"
        case resetFilling = "ResetFilling"
        case stopFilling = "StopFilling"
        case openForm = "OpenForm"
        case editInternal = "EditInternal"
        case editExpiration = "EditExpiration"
        case vectorization = "Vectorization"
        case askAi = "AskAi"
        case useChat = "UseChat"
        case updateXlsx = "UpdateXlsx"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(read, forKey: .read)
        try container.encodeIfPresent(comment, forKey: .comment)
        try container.encodeIfPresent(fillForms, forKey: .fillForms)
        try container.encodeIfPresent(review, forKey: .review)
        try container.encodeIfPresent(create, forKey: .create)
        try container.encodeIfPresent(createFrom, forKey: .createFrom)
        try container.encodeIfPresent(edit, forKey: .edit)
        try container.encodeIfPresent(delete, forKey: .delete)
        try container.encodeIfPresent(customFilter, forKey: .customFilter)
        try container.encodeIfPresent(editRoom, forKey: .editRoom)
        try container.encodeIfPresent(rename, forKey: .rename)
        try container.encodeIfPresent(readHistory, forKey: .readHistory)
        try container.encodeIfPresent(lock, forKey: .lock)
        try container.encodeIfPresent(editHistory, forKey: .editHistory)
        try container.encodeIfPresent(copyTo, forKey: .copyTo)
        try container.encodeIfPresent(copy, forKey: .copy)
        try container.encodeIfPresent(moveTo, forKey: .moveTo)
        try container.encodeIfPresent(move, forKey: .move)
        try container.encodeIfPresent(pin, forKey: .pin)
        try container.encodeIfPresent(mute, forKey: .mute)
        try container.encodeIfPresent(editAccess, forKey: .editAccess)
        try container.encodeIfPresent(duplicate, forKey: .duplicate)
        try container.encodeIfPresent(submitToFormGallery, forKey: .submitToFormGallery)
        try container.encodeIfPresent(download, forKey: .download)
        try container.encodeIfPresent(convert, forKey: .convert)
        try container.encodeIfPresent(copySharedLink, forKey: .copySharedLink)
        try container.encodeIfPresent(readLinks, forKey: .readLinks)
        try container.encodeIfPresent(reconnect, forKey: .reconnect)
        try container.encodeIfPresent(createRoomFrom, forKey: .createRoomFrom)
        try container.encodeIfPresent(copyLink, forKey: .copyLink)
        try container.encodeIfPresent(embed, forKey: .embed)
        try container.encodeIfPresent(changeOwner, forKey: .changeOwner)
        try container.encodeIfPresent(indexExport, forKey: .indexExport)
        try container.encodeIfPresent(startFilling, forKey: .startFilling)
        try container.encodeIfPresent(fillingStatus, forKey: .fillingStatus)
        try container.encodeIfPresent(resetFilling, forKey: .resetFilling)
        try container.encodeIfPresent(stopFilling, forKey: .stopFilling)
        try container.encodeIfPresent(openForm, forKey: .openForm)
        try container.encodeIfPresent(editInternal, forKey: .editInternal)
        try container.encodeIfPresent(editExpiration, forKey: .editExpiration)
        try container.encodeIfPresent(vectorization, forKey: .vectorization)
        try container.encodeIfPresent(askAi, forKey: .askAi)
        try container.encodeIfPresent(useChat, forKey: .useChat)
        try container.encodeIfPresent(updateXlsx, forKey: .updateXlsx)
    }
}

