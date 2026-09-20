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

/** Everything a client needs to work with documents in this portal: the format tables, the address templates, the  upload limits, the portal-wide switches and the preferences of the calling account. */
public struct FilesSettingsDto: Sendable, Codable, Hashable {

    public enum DefaultSharingAccessRights: String, Sendable, Codable, CaseIterable {
        case None = 0
        case ReadWrite = 1
        case Read = 2
        case Restrict = 3
        case Varies = 4
        case Review = 5
        case Comment = 6
        case FillForms = 7
        case CustomFilter = 8
        case RoomManager = 9
        case Editing = 10
        case ContentCreator = 11
    }
    /** Images the portal can show in its own viewer. Anything outside the list has to be downloaded to be seen. */
    public var extsImagePreviewed: [String]?
    /** Audio and video the portal can play in its own player. */
    public var extsMediaPreviewed: [String]?
    /** Documents the editor can open read-only. A format that is here but not in the edited list can be viewed and  not changed. */
    public var extsWebPreviewed: [String]?
    /** Documents the editor can open for editing. Uploading a format outside this list and outside the convertible  list leaves a file that can only be downloaded. */
    public var extsWebEdited: [String]?
    /** Documents that can be edited inside a private room, where the content is encrypted on the client. */
    public var extsWebEncrypt: [String]?
    /** Documents that support the reviewing mode, so that granting review access to them is meaningful. */
    public var extsWebReviewed: [String]?
    /** Spreadsheets that support the custom filter mode, where a filter applied by one editor does not disturb the  others. */
    public var extsWebCustomFilterEditing: [String]?
    /** Documents that can only be filled in or commented on rather than edited freely, whatever access the caller  holds. */
    public var extsWebRestrictedEditing: [String]?
    /** Documents that support comments, so that granting comment access to them is meaningful. */
    public var extsWebCommented: [String]?
    /** Documents the portal treats as templates to create new files from. */
    public var extsWebTemplate: [String]?
    /** Formats that cannot be edited as they are and are converted on upload or on first opening. Which target each  one has is in the convertible table below. */
    public var extsMustConvert: [String]?
    /** The conversion map of the portal: for each source extension, the extensions it can be converted into. Use it  to fill the target format of a conversion request instead of guessing one. */
    public var extsConvertible: [String: [String]?]?
    /** Formats the portal offers to create and upload as documents. It is not an upload filter: files of other  formats are stored as they are. */
    public var extsUploadable: [String]?
    /** Formats recognised as archives, which is what decides the archive icon and the offer to unpack. */
    public var extsArchive: [String]?
    /** Formats classified as video. The classification lists drive icons and the media filters of the listing  operations, and are wider than what the built-in player can show. */
    public var extsVideo: [String]?
    /** Formats classified as audio. */
    public var extsAudio: [String]?
    /** Formats classified as images. */
    public var extsImage: [String]?
    /** Formats classified as spreadsheets. */
    public var extsSpreadsheet: [String]?
    /** Formats classified as presentations. */
    public var extsPresentation: [String]?
    /** Formats classified as text documents. */
    public var extsDocument: [String]?
    /** Formats classified as diagrams. */
    public var extsDiagram: [String]?
    public var internalFormats: FilesSettingsDtoInternalFormats?
    /** The extension of a fillable form template in this portal. It is configurable, so read it rather than assuming  the product default. */
    public var masterFormExtension: String?
    /** The name of the query parameter that pins a document address to one version. Append it to the addresses below  instead of composing a version address by hand. */
    public var paramVersion: String?
    /** The name of the query parameter that asks a download address for a converted copy in another format. */
    public var paramOutType: String?
    /** The template of the address a file is downloaded from: substitute the file identifier for the `{0}`  placeholder. Add the version and output-type parameters named above for a particular version or format. */
    public var fileDownloadUrlString: String?
    /** The template of the address that opens a file in the viewer inside the portal, with `{0}` for the file  identifier. It is a portal-relative address, meant to be opened in a browser rather than called as an API. */
    public var fileWebViewerUrlString: String?
    /** The same viewer address as an absolute one, for a message or a page outside the portal. */
    public var fileWebViewerExternalUrlString: String?
    /** The template of the address that opens a file for editing inside the portal, with `{0}` for the file  identifier. Whether the session really becomes editable still depends on the access the caller holds. */
    public var fileWebEditorUrlString: String?
    /** The same editing address as an absolute one, for use outside the portal. */
    public var fileWebEditorExternalUrlString: String?
    /** The template of the address that sends the browser on to whichever viewer or editor suits the file, with `{0}`  for the file identifier. Use it when the kind of the file is not known in advance. */
    public var fileRedirectPreviewUrlString: String?
    /** The template of the address a file thumbnail is fetched from, with `{0}` for the file identifier. A thumbnail  is built in the background, so the address can answer with nothing for a while after the file appears. */
    public var fileThumbnailUrlString: String?
    /** Whether the caller asked to be prompted before a deletion. Written by `PUT api/2.0/files/changedeleteconfrim`. */
    public var confirmDelete: Bool?
    /** Whether this portal allows third-party storages to be connected at all. It is set portal-wide by an  administrator, so a member sees it as read-only. */
    public var enableThirdParty: Bool?
    /** Whether links that open an entry without a portal account may be created in this portal. Set portal-wide by an  administrator. */
    public var externalShare: Bool?
    /** Whether the share-to-network buttons are offered next to an external link. It is reported as false whenever  external sharing itself is off. */
    public var externalShareSocialMedia: Bool?
    /** Whether the caller's uploads keep the original file when the portal converts them. With false the conversion  replaces the uploaded file with a new version of it. */
    public var storeOriginalFiles: Bool?
    /** Whether the caller asked for new documents to be created with the default name instead of being prompted for  one. */
    public var keepNewFileName: Bool?
    /** Whether the caller asked to see extensions in file titles. Stored titles always carry the extension whatever  this says. */
    public var displayFileExtension: Bool?
    /** Specifies whether to display the quick action buttons. */
    public var showQuickActions: Bool?
    /** Whether the caller is told about the result of a conversion. There is no operation in this document that  writes it. */
    public var convertNotify: Bool?
    /** Whether the prompt shown before a running operation is abandoned is hidden for the caller. */
    public var hideConfirmCancelOperation: Bool?
    /** Whether the prompt that offers to keep a copy in the original format on conversion is hidden for the caller.  Once true it cannot be turned back through the API. */
    public var hideConfirmConvertSave: Bool?
    /** Whether the prompt that offers to open the conversion result is hidden for the caller. Once true it cannot be  turned back through the API. */
    public var hideConfirmConvertOpen: Bool?
    /** Whether the warning shown before the lifetime settings of a room are changed is hidden for the caller. */
    public var hideConfirmRoomLifetime: Bool?
    /** The ordering the listing operations fall back to when a request names none. It follows the last order the  caller asked a listing for, so it changes on its own as the account is used. */
    public var defaultOrder: OrderBy?
    /** Whether the editor writes a document back to storage while the session is still open. It is on for every  portal and cannot be switched off. */
    public var forcesave: Bool?
    /** Whether those intermediate saves are kept as separate versions. They are not, in any portal: they update the  current version instead. */
    public var storeForcesave: Bool?
    /** Whether the Recent section is offered to the caller among the section roots. */
    public var recentSection: Bool?
    /** Whether the Favorites section is offered to the caller among the section roots. */
    public var favoritesSection: Bool?
    /** Whether the Templates section is offered to the caller among the section roots. */
    public var templatesSection: Bool?
    /** The archive format the caller's multi-item downloads are packed into: true for `.tar.gz`, false for `.zip`. */
    public var downloadTarGz: Bool?
    /** The trash auto-clearing setting of the caller, the same pair `GET api/2.0/files/settings/autocleanup` returns. */
    public var automaticallyCleanUp: AutoCleanUpData?
    /** Whether documents in this portal can be searched by what is inside them and not only by title. It depends on  the full-text search service being configured and having indexed the portal. */
    public var canSearchByContent: Bool?
    /** The access rights the sharing dialog offers the caller by default. The portal normalises the set it stores, so  this can be shorter than what was last sent. */
    public var defaultSharingAccessRights: [DefaultSharingAccessRights]?
    /** How many upload requests the portal accepts from one account at a time. Sending more than this in parallel  gets the extra ones refused rather than queued. */
    public var maxUploadThreadCount: Int?
    /** The size in bytes of one chunk of a chunked upload. Split a large file exactly along this size: a chunk that  does not match is refused by the upload session. */
    public var chunkUploadSize: Int64?
    /** Whether the caller asked for documents to open in the current browser tab. */
    public var openEditorInSameTab: Bool?
    /** Whether the caller asked to see rooms arranged by the groups they belong to. */
    public var organizeRoomsGrouping: Bool?
    /** The kind of external link this portal offers first: true for a link only its own accounts can open, false for  one anyone holding it can open. */
    public var defaultShareLinkInternal: Bool?
    /** Whether the external sharing restriction covers personal documents. It matters only while external sharing is  off. */
    public var externalShareApplyToDocuments: Bool?
    /** Whether the external sharing restriction covers rooms, including making a new one public. It matters only  while external sharing is off. */
    public var externalShareApplyToRooms: Bool?
    /** Whether links created before the restriction stop opening as well, rather than only new ones being refused. */
    public var blockExistingLinksOnRestrict: Bool?
    /** Formats whose content can be indexed for the AI features of the portal. A file outside the list is left out of  that index. */
    public var extsFilesVectorized: [String]?
    /** The largest file size in bytes that is indexed for the AI features. A larger file is skipped even when its  format is listed above. */
    public var maxVectorizationFileSize: Int64?

    public init(extsImagePreviewed: [String]? = nil, extsMediaPreviewed: [String]? = nil, extsWebPreviewed: [String]? = nil, extsWebEdited: [String]? = nil, extsWebEncrypt: [String]? = nil, extsWebReviewed: [String]? = nil, extsWebCustomFilterEditing: [String]? = nil, extsWebRestrictedEditing: [String]? = nil, extsWebCommented: [String]? = nil, extsWebTemplate: [String]? = nil, extsMustConvert: [String]? = nil, extsConvertible: [String: [String]?]? = nil, extsUploadable: [String]? = nil, extsArchive: [String]? = nil, extsVideo: [String]? = nil, extsAudio: [String]? = nil, extsImage: [String]? = nil, extsSpreadsheet: [String]? = nil, extsPresentation: [String]? = nil, extsDocument: [String]? = nil, extsDiagram: [String]? = nil, internalFormats: FilesSettingsDtoInternalFormats? = nil, masterFormExtension: String? = nil, paramVersion: String? = nil, paramOutType: String? = nil, fileDownloadUrlString: String? = nil, fileWebViewerUrlString: String? = nil, fileWebViewerExternalUrlString: String? = nil, fileWebEditorUrlString: String? = nil, fileWebEditorExternalUrlString: String? = nil, fileRedirectPreviewUrlString: String? = nil, fileThumbnailUrlString: String? = nil, confirmDelete: Bool? = nil, enableThirdParty: Bool? = nil, externalShare: Bool? = nil, externalShareSocialMedia: Bool? = nil, storeOriginalFiles: Bool? = nil, keepNewFileName: Bool? = nil, displayFileExtension: Bool? = nil, showQuickActions: Bool? = nil, convertNotify: Bool? = nil, hideConfirmCancelOperation: Bool? = nil, hideConfirmConvertSave: Bool? = nil, hideConfirmConvertOpen: Bool? = nil, hideConfirmRoomLifetime: Bool? = nil, defaultOrder: OrderBy? = nil, forcesave: Bool? = nil, storeForcesave: Bool? = nil, recentSection: Bool? = nil, favoritesSection: Bool? = nil, templatesSection: Bool? = nil, downloadTarGz: Bool? = nil, automaticallyCleanUp: AutoCleanUpData? = nil, canSearchByContent: Bool? = nil, defaultSharingAccessRights: [DefaultSharingAccessRights]? = nil, maxUploadThreadCount: Int? = nil, chunkUploadSize: Int64? = nil, openEditorInSameTab: Bool? = nil, organizeRoomsGrouping: Bool? = nil, defaultShareLinkInternal: Bool? = nil, externalShareApplyToDocuments: Bool? = nil, externalShareApplyToRooms: Bool? = nil, blockExistingLinksOnRestrict: Bool? = nil, extsFilesVectorized: [String]? = nil, maxVectorizationFileSize: Int64? = nil) {
        self.extsImagePreviewed = extsImagePreviewed
        self.extsMediaPreviewed = extsMediaPreviewed
        self.extsWebPreviewed = extsWebPreviewed
        self.extsWebEdited = extsWebEdited
        self.extsWebEncrypt = extsWebEncrypt
        self.extsWebReviewed = extsWebReviewed
        self.extsWebCustomFilterEditing = extsWebCustomFilterEditing
        self.extsWebRestrictedEditing = extsWebRestrictedEditing
        self.extsWebCommented = extsWebCommented
        self.extsWebTemplate = extsWebTemplate
        self.extsMustConvert = extsMustConvert
        self.extsConvertible = extsConvertible
        self.extsUploadable = extsUploadable
        self.extsArchive = extsArchive
        self.extsVideo = extsVideo
        self.extsAudio = extsAudio
        self.extsImage = extsImage
        self.extsSpreadsheet = extsSpreadsheet
        self.extsPresentation = extsPresentation
        self.extsDocument = extsDocument
        self.extsDiagram = extsDiagram
        self.internalFormats = internalFormats
        self.masterFormExtension = masterFormExtension
        self.paramVersion = paramVersion
        self.paramOutType = paramOutType
        self.fileDownloadUrlString = fileDownloadUrlString
        self.fileWebViewerUrlString = fileWebViewerUrlString
        self.fileWebViewerExternalUrlString = fileWebViewerExternalUrlString
        self.fileWebEditorUrlString = fileWebEditorUrlString
        self.fileWebEditorExternalUrlString = fileWebEditorExternalUrlString
        self.fileRedirectPreviewUrlString = fileRedirectPreviewUrlString
        self.fileThumbnailUrlString = fileThumbnailUrlString
        self.confirmDelete = confirmDelete
        self.enableThirdParty = enableThirdParty
        self.externalShare = externalShare
        self.externalShareSocialMedia = externalShareSocialMedia
        self.storeOriginalFiles = storeOriginalFiles
        self.keepNewFileName = keepNewFileName
        self.displayFileExtension = displayFileExtension
        self.showQuickActions = showQuickActions
        self.convertNotify = convertNotify
        self.hideConfirmCancelOperation = hideConfirmCancelOperation
        self.hideConfirmConvertSave = hideConfirmConvertSave
        self.hideConfirmConvertOpen = hideConfirmConvertOpen
        self.hideConfirmRoomLifetime = hideConfirmRoomLifetime
        self.defaultOrder = defaultOrder
        self.forcesave = forcesave
        self.storeForcesave = storeForcesave
        self.recentSection = recentSection
        self.favoritesSection = favoritesSection
        self.templatesSection = templatesSection
        self.downloadTarGz = downloadTarGz
        self.automaticallyCleanUp = automaticallyCleanUp
        self.canSearchByContent = canSearchByContent
        self.defaultSharingAccessRights = defaultSharingAccessRights
        self.maxUploadThreadCount = maxUploadThreadCount
        self.chunkUploadSize = chunkUploadSize
        self.openEditorInSameTab = openEditorInSameTab
        self.organizeRoomsGrouping = organizeRoomsGrouping
        self.defaultShareLinkInternal = defaultShareLinkInternal
        self.externalShareApplyToDocuments = externalShareApplyToDocuments
        self.externalShareApplyToRooms = externalShareApplyToRooms
        self.blockExistingLinksOnRestrict = blockExistingLinksOnRestrict
        self.extsFilesVectorized = extsFilesVectorized
        self.maxVectorizationFileSize = maxVectorizationFileSize
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case extsImagePreviewed
        case extsMediaPreviewed
        case extsWebPreviewed
        case extsWebEdited
        case extsWebEncrypt
        case extsWebReviewed
        case extsWebCustomFilterEditing
        case extsWebRestrictedEditing
        case extsWebCommented
        case extsWebTemplate
        case extsMustConvert
        case extsConvertible
        case extsUploadable
        case extsArchive
        case extsVideo
        case extsAudio
        case extsImage
        case extsSpreadsheet
        case extsPresentation
        case extsDocument
        case extsDiagram
        case internalFormats
        case masterFormExtension
        case paramVersion
        case paramOutType
        case fileDownloadUrlString
        case fileWebViewerUrlString
        case fileWebViewerExternalUrlString
        case fileWebEditorUrlString
        case fileWebEditorExternalUrlString
        case fileRedirectPreviewUrlString
        case fileThumbnailUrlString
        case confirmDelete
        case enableThirdParty
        case externalShare
        case externalShareSocialMedia
        case storeOriginalFiles
        case keepNewFileName
        case displayFileExtension
        case showQuickActions
        case convertNotify
        case hideConfirmCancelOperation
        case hideConfirmConvertSave
        case hideConfirmConvertOpen
        case hideConfirmRoomLifetime
        case defaultOrder
        case forcesave
        case storeForcesave
        case recentSection
        case favoritesSection
        case templatesSection
        case downloadTarGz
        case automaticallyCleanUp
        case canSearchByContent
        case defaultSharingAccessRights
        case maxUploadThreadCount
        case chunkUploadSize
        case openEditorInSameTab
        case organizeRoomsGrouping
        case defaultShareLinkInternal
        case externalShareApplyToDocuments
        case externalShareApplyToRooms
        case blockExistingLinksOnRestrict
        case extsFilesVectorized
        case maxVectorizationFileSize
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(extsImagePreviewed, forKey: .extsImagePreviewed)
        try container.encodeIfPresent(extsMediaPreviewed, forKey: .extsMediaPreviewed)
        try container.encodeIfPresent(extsWebPreviewed, forKey: .extsWebPreviewed)
        try container.encodeIfPresent(extsWebEdited, forKey: .extsWebEdited)
        try container.encodeIfPresent(extsWebEncrypt, forKey: .extsWebEncrypt)
        try container.encodeIfPresent(extsWebReviewed, forKey: .extsWebReviewed)
        try container.encodeIfPresent(extsWebCustomFilterEditing, forKey: .extsWebCustomFilterEditing)
        try container.encodeIfPresent(extsWebRestrictedEditing, forKey: .extsWebRestrictedEditing)
        try container.encodeIfPresent(extsWebCommented, forKey: .extsWebCommented)
        try container.encodeIfPresent(extsWebTemplate, forKey: .extsWebTemplate)
        try container.encodeIfPresent(extsMustConvert, forKey: .extsMustConvert)
        try container.encodeIfPresent(extsConvertible, forKey: .extsConvertible)
        try container.encodeIfPresent(extsUploadable, forKey: .extsUploadable)
        try container.encodeIfPresent(extsArchive, forKey: .extsArchive)
        try container.encodeIfPresent(extsVideo, forKey: .extsVideo)
        try container.encodeIfPresent(extsAudio, forKey: .extsAudio)
        try container.encodeIfPresent(extsImage, forKey: .extsImage)
        try container.encodeIfPresent(extsSpreadsheet, forKey: .extsSpreadsheet)
        try container.encodeIfPresent(extsPresentation, forKey: .extsPresentation)
        try container.encodeIfPresent(extsDocument, forKey: .extsDocument)
        try container.encodeIfPresent(extsDiagram, forKey: .extsDiagram)
        try container.encodeIfPresent(internalFormats, forKey: .internalFormats)
        try container.encodeIfPresent(masterFormExtension, forKey: .masterFormExtension)
        try container.encodeIfPresent(paramVersion, forKey: .paramVersion)
        try container.encodeIfPresent(paramOutType, forKey: .paramOutType)
        try container.encodeIfPresent(fileDownloadUrlString, forKey: .fileDownloadUrlString)
        try container.encodeIfPresent(fileWebViewerUrlString, forKey: .fileWebViewerUrlString)
        try container.encodeIfPresent(fileWebViewerExternalUrlString, forKey: .fileWebViewerExternalUrlString)
        try container.encodeIfPresent(fileWebEditorUrlString, forKey: .fileWebEditorUrlString)
        try container.encodeIfPresent(fileWebEditorExternalUrlString, forKey: .fileWebEditorExternalUrlString)
        try container.encodeIfPresent(fileRedirectPreviewUrlString, forKey: .fileRedirectPreviewUrlString)
        try container.encodeIfPresent(fileThumbnailUrlString, forKey: .fileThumbnailUrlString)
        try container.encodeIfPresent(confirmDelete, forKey: .confirmDelete)
        try container.encodeIfPresent(enableThirdParty, forKey: .enableThirdParty)
        try container.encodeIfPresent(externalShare, forKey: .externalShare)
        try container.encodeIfPresent(externalShareSocialMedia, forKey: .externalShareSocialMedia)
        try container.encodeIfPresent(storeOriginalFiles, forKey: .storeOriginalFiles)
        try container.encodeIfPresent(keepNewFileName, forKey: .keepNewFileName)
        try container.encodeIfPresent(displayFileExtension, forKey: .displayFileExtension)
        try container.encodeIfPresent(showQuickActions, forKey: .showQuickActions)
        try container.encodeIfPresent(convertNotify, forKey: .convertNotify)
        try container.encodeIfPresent(hideConfirmCancelOperation, forKey: .hideConfirmCancelOperation)
        try container.encodeIfPresent(hideConfirmConvertSave, forKey: .hideConfirmConvertSave)
        try container.encodeIfPresent(hideConfirmConvertOpen, forKey: .hideConfirmConvertOpen)
        try container.encodeIfPresent(hideConfirmRoomLifetime, forKey: .hideConfirmRoomLifetime)
        try container.encodeIfPresent(defaultOrder, forKey: .defaultOrder)
        try container.encodeIfPresent(forcesave, forKey: .forcesave)
        try container.encodeIfPresent(storeForcesave, forKey: .storeForcesave)
        try container.encodeIfPresent(recentSection, forKey: .recentSection)
        try container.encodeIfPresent(favoritesSection, forKey: .favoritesSection)
        try container.encodeIfPresent(templatesSection, forKey: .templatesSection)
        try container.encodeIfPresent(downloadTarGz, forKey: .downloadTarGz)
        try container.encodeIfPresent(automaticallyCleanUp, forKey: .automaticallyCleanUp)
        try container.encodeIfPresent(canSearchByContent, forKey: .canSearchByContent)
        try container.encodeIfPresent(defaultSharingAccessRights, forKey: .defaultSharingAccessRights)
        try container.encodeIfPresent(maxUploadThreadCount, forKey: .maxUploadThreadCount)
        try container.encodeIfPresent(chunkUploadSize, forKey: .chunkUploadSize)
        try container.encodeIfPresent(openEditorInSameTab, forKey: .openEditorInSameTab)
        try container.encodeIfPresent(organizeRoomsGrouping, forKey: .organizeRoomsGrouping)
        try container.encodeIfPresent(defaultShareLinkInternal, forKey: .defaultShareLinkInternal)
        try container.encodeIfPresent(externalShareApplyToDocuments, forKey: .externalShareApplyToDocuments)
        try container.encodeIfPresent(externalShareApplyToRooms, forKey: .externalShareApplyToRooms)
        try container.encodeIfPresent(blockExistingLinksOnRestrict, forKey: .blockExistingLinksOnRestrict)
        try container.encodeIfPresent(extsFilesVectorized, forKey: .extsFilesVectorized)
        try container.encodeIfPresent(maxVectorizationFileSize, forKey: .maxVectorizationFileSize)
    }
}

