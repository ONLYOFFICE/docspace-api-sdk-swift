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

/** The file settings parameters. */
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
    /** The list of extensions of the viewed images. */
    public var extsImagePreviewed: [String]?
    /** The list of extensions of the viewed media files. */
    public var extsMediaPreviewed: [String]?
    /** The list of extensions of the viewed files. */
    public var extsWebPreviewed: [String]?
    /** The list of extensions of the edited files. */
    public var extsWebEdited: [String]?
    /** The list of extensions of the encrypted files. */
    public var extsWebEncrypt: [String]?
    /** The list of extensions of the reviewed files. */
    public var extsWebReviewed: [String]?
    /** The list of extensions of the custom filter files. */
    public var extsWebCustomFilterEditing: [String]?
    /** The list of extensions of the files that are restricted for editing. */
    public var extsWebRestrictedEditing: [String]?
    /** The list of extensions of the commented files. */
    public var extsWebCommented: [String]?
    /** The list of extensions of the template files. */
    public var extsWebTemplate: [String]?
    /** The list of extensions of the files that must be converted. */
    public var extsMustConvert: [String]?
    /** The list of the convertible extensions. */
    public var extsConvertible: [String: [String]]?
    /** The list of the uploadable extensions. */
    public var extsUploadable: [String]?
    /** The list of extensions of the archive files. */
    public var extsArchive: [String]?
    /** The list of the video extensions. */
    public var extsVideo: [String]?
    /** The list of the audio extensions. */
    public var extsAudio: [String]?
    /** The list of the image extensions. */
    public var extsImage: [String]?
    /** The list of the spreadsheet extensions. */
    public var extsSpreadsheet: [String]?
    /** The list of the presentation extensions. */
    public var extsPresentation: [String]?
    /** The list of the text document extensions. */
    public var extsDocument: [String]?
    /** The list of the diagram extensions. */
    public var extsDiagram: [String]?
    public var internalFormats: FilesSettingsDtoInternalFormats?
    /** The master form extension. */
    public var masterFormExtension: String?
    /** The URL parameter which specifies the file version. */
    public var paramVersion: String?
    /** The URL parameter which specifies the output type of the converted file. */
    public var paramOutType: String?
    /** The URL to download a file. */
    public var fileDownloadUrlString: String?
    /** The URL to the file web viewer. */
    public var fileWebViewerUrlString: String?
    /** The external URL to the file web viewer. */
    public var fileWebViewerExternalUrlString: String?
    /** The URL to the file web editor. */
    public var fileWebEditorUrlString: String?
    /** The external URL to the file web editor. */
    public var fileWebEditorExternalUrlString: String?
    /** The redirect URL to the file viewer. */
    public var fileRedirectPreviewUrlString: String?
    /** The URL to the file thumbnail. */
    public var fileThumbnailUrlString: String?
    /** Specifies whether to confirm the file deletion or not. */
    public var confirmDelete: Bool?
    /** Specifies whether to allow users to connect the third-party storages. */
    public var enableThirdParty: Bool?
    /** Specifies whether to enable sharing external links to the files. */
    public var externalShare: Bool?
    /** Specifies whether to enable sharing files on social media. */
    public var externalShareSocialMedia: Bool?
    /** Specifies whether to enable storing original files. */
    public var storeOriginalFiles: Bool?
    /** Specifies whether to keep the new file name. */
    public var keepNewFileName: Bool?
    /** Specifies whether to display the file extension. */
    public var displayFileExtension: Bool?
    /** Specifies whether to display the conversion notification. */
    public var convertNotify: Bool?
    /** Specifies whether to hide the confirmation dialog for the cancel operation. */
    public var hideConfirmCancelOperation: Bool?
    /** Specifies whether to hide the confirmation dialog  for saving the file copy in the original format when converting a file. */
    public var hideConfirmConvertSave: Bool?
    /** Specifies whether to hide the confirmation dialog  for opening the conversion result. */
    public var hideConfirmConvertOpen: Bool?
    /** Specifies whether to hide the confirmation dialog about the file lifetime in the room. */
    public var hideConfirmRoomLifetime: Bool?
    public var defaultOrder: OrderBy?
    /** Specifies whether to forcesave the files or not. */
    public var forcesave: Bool?
    /** Specifies whether to store the forcesaved file versions or not. */
    public var storeForcesave: Bool?
    /** Specifies if the Recent section is displayed or not. */
    public var recentSection: Bool?
    /** Specifies if the Favorites section is displayed or not. */
    public var favoritesSection: Bool?
    /** Specifies if the Templates section is displayed or not. */
    public var templatesSection: Bool?
    /** Specifies whether to download the .tar.gz files or not. */
    public var downloadTarGz: Bool?
    public var automaticallyCleanUp: AutoCleanUpData?
    /** Specifies whether the file can be searched by its content or not. */
    public var canSearchByContent: Bool?
    /** The default access rights in sharing settings. */
    public var defaultSharingAccessRights: [DefaultSharingAccessRights]?
    /** The maximum number of upload threads. */
    public var maxUploadThreadCount: Int?
    /** The size of a large file that is uploaded in chunks. */
    public var chunkUploadSize: Int64?
    /** Specifies whether to open the editor in the same tab or not. */
    public var openEditorInSameTab: Bool?
    /** Specifies whether the grouping of rooms is enabled or not. */
    public var organizeRoomsGrouping: Bool?
    /** List of extensions available for vectorization */
    public var extsFilesVectorized: [String]?
    /** The maximum file size for vectorization */
    public var maxVectorizationFileSize: Int64?

    public init(extsImagePreviewed: [String]? = nil, extsMediaPreviewed: [String]? = nil, extsWebPreviewed: [String]? = nil, extsWebEdited: [String]? = nil, extsWebEncrypt: [String]? = nil, extsWebReviewed: [String]? = nil, extsWebCustomFilterEditing: [String]? = nil, extsWebRestrictedEditing: [String]? = nil, extsWebCommented: [String]? = nil, extsWebTemplate: [String]? = nil, extsMustConvert: [String]? = nil, extsConvertible: [String: [String]]? = nil, extsUploadable: [String]? = nil, extsArchive: [String]? = nil, extsVideo: [String]? = nil, extsAudio: [String]? = nil, extsImage: [String]? = nil, extsSpreadsheet: [String]? = nil, extsPresentation: [String]? = nil, extsDocument: [String]? = nil, extsDiagram: [String]? = nil, internalFormats: FilesSettingsDtoInternalFormats? = nil, masterFormExtension: String? = nil, paramVersion: String? = nil, paramOutType: String? = nil, fileDownloadUrlString: String? = nil, fileWebViewerUrlString: String? = nil, fileWebViewerExternalUrlString: String? = nil, fileWebEditorUrlString: String? = nil, fileWebEditorExternalUrlString: String? = nil, fileRedirectPreviewUrlString: String? = nil, fileThumbnailUrlString: String? = nil, confirmDelete: Bool? = nil, enableThirdParty: Bool? = nil, externalShare: Bool? = nil, externalShareSocialMedia: Bool? = nil, storeOriginalFiles: Bool? = nil, keepNewFileName: Bool? = nil, displayFileExtension: Bool? = nil, convertNotify: Bool? = nil, hideConfirmCancelOperation: Bool? = nil, hideConfirmConvertSave: Bool? = nil, hideConfirmConvertOpen: Bool? = nil, hideConfirmRoomLifetime: Bool? = nil, defaultOrder: OrderBy? = nil, forcesave: Bool? = nil, storeForcesave: Bool? = nil, recentSection: Bool? = nil, favoritesSection: Bool? = nil, templatesSection: Bool? = nil, downloadTarGz: Bool? = nil, automaticallyCleanUp: AutoCleanUpData? = nil, canSearchByContent: Bool? = nil, defaultSharingAccessRights: [DefaultSharingAccessRights]? = nil, maxUploadThreadCount: Int? = nil, chunkUploadSize: Int64? = nil, openEditorInSameTab: Bool? = nil, organizeRoomsGrouping: Bool? = nil, extsFilesVectorized: [String]? = nil, maxVectorizationFileSize: Int64? = nil) {
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
        try container.encodeIfPresent(extsFilesVectorized, forKey: .extsFilesVectorized)
        try container.encodeIfPresent(maxVectorizationFileSize, forKey: .maxVectorizationFileSize)
    }
}

