# FilesFilesAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addFileToRecent**](FilesFilesAPI.md#addfiletorecent) | **POST** /api/2.0/files/file/{fileId}/recent | Add a file to the Recent section
[**addTemplates**](FilesFilesAPI.md#addtemplates) | **POST** /api/2.0/files/templates | Add template files
[**changeVersionHistory**](FilesFilesAPI.md#changeversionhistory) | **PUT** /api/2.0/files/file/{fileId}/history | Change version history
[**checkFillFormDraft**](FilesFilesAPI.md#checkfillformdraft) | **POST** /api/2.0/files/masterform/{fileId}/checkfillformdraft | Check the form draft filling
[**copyFileAs**](FilesFilesAPI.md#copyfileas) | **POST** /api/2.0/files/file/{fileId}/copyas | Copy a file
[**createEditSession**](FilesFilesAPI.md#createeditsession) | **POST** /api/2.0/files/file/{fileId}/edit_session | Create the editing session
[**createFile**](FilesFilesAPI.md#createfile) | **POST** /api/2.0/files/{folderId}/file | Create a file
[**createFileInMyDocuments**](FilesFilesAPI.md#createfileinmydocuments) | **POST** /api/2.0/files/@my/file | Create a file in the My documents section
[**createFilePrimaryExternalLink**](FilesFilesAPI.md#createfileprimaryexternallink) | **POST** /api/2.0/files/file/{id}/link | Create primary external link
[**createHtmlFile**](FilesFilesAPI.md#createhtmlfile) | **POST** /api/2.0/files/{folderId}/html | Create an HTML file
[**createHtmlFileInMyDocuments**](FilesFilesAPI.md#createhtmlfileinmydocuments) | **POST** /api/2.0/files/@my/html | Create an HTML file in the My documents section
[**createTextFile**](FilesFilesAPI.md#createtextfile) | **POST** /api/2.0/files/{folderId}/text | Create a text file
[**createTextFileInMyDocuments**](FilesFilesAPI.md#createtextfileinmydocuments) | **POST** /api/2.0/files/@my/text | Create a text file in the My documents section
[**createThumbnails**](FilesFilesAPI.md#createthumbnails) | **POST** /api/2.0/files/thumbnails | Create file thumbnails
[**deleteFile**](FilesFilesAPI.md#deletefile) | **DELETE** /api/2.0/files/file/{fileId} | Delete a file
[**deleteRecent**](FilesFilesAPI.md#deleterecent) | **DELETE** /api/2.0/files/recent | Delete recent files
[**deleteTemplates**](FilesFilesAPI.md#deletetemplates) | **DELETE** /api/2.0/files/templates | Delete template files
[**generateXlsx**](FilesFilesAPI.md#generatexlsx) | **POST** /api/2.0/files/file/{fileId}/xlsx | Generate XLSX report
[**getAllFormRoles**](FilesFilesAPI.md#getallformroles) | **GET** /api/2.0/files/file/{fileId}/formroles | Get form roles
[**getEditDiffUrl**](FilesFilesAPI.md#geteditdiffurl) | **GET** /api/2.0/files/file/{fileId}/edit/diff | Get changes URL
[**getEditHistory**](FilesFilesAPI.md#getedithistory) | **GET** /api/2.0/files/file/{fileId}/edit/history | Get version history
[**getFileHistory**](FilesFilesAPI.md#getfilehistory) | **GET** /api/2.0/files/file/{fileId}/log | Get file history
[**getFileInfo**](FilesFilesAPI.md#getfileinfo) | **GET** /api/2.0/files/file/{fileId} | Get file information
[**getFileLinks**](FilesFilesAPI.md#getfilelinks) | **GET** /api/2.0/files/file/{id}/links | Get file external links
[**getFilePrimaryExternalLink**](FilesFilesAPI.md#getfileprimaryexternallink) | **GET** /api/2.0/files/file/{id}/link | Get primary external link
[**getFileVersionInfo**](FilesFilesAPI.md#getfileversioninfo) | **GET** /api/2.0/files/file/{fileId}/history | Get file versions
[**getFillResult**](FilesFilesAPI.md#getfillresult) | **GET** /api/2.0/files/file/fillresult | Get form-filling result
[**getFormSubmissions**](FilesFilesAPI.md#getformsubmissions) | **GET** /api/2.0/files/file/{fileId}/submissions | Get form submission results
[**getPresignedFileUri**](FilesFilesAPI.md#getpresignedfileuri) | **GET** /api/2.0/files/file/{fileId}/presigned | Get file download link asynchronously
[**getPresignedUri**](FilesFilesAPI.md#getpresigneduri) | **GET** /api/2.0/files/file/{fileId}/presigneduri | Get file download link
[**getProtectedFileUsers**](FilesFilesAPI.md#getprotectedfileusers) | **GET** /api/2.0/files/file/{fileId}/protectusers | Get users access rights to the protected file
[**getReferenceData**](FilesFilesAPI.md#getreferencedata) | **POST** /api/2.0/files/file/referencedata | Get reference data
[**isFormPDF**](FilesFilesAPI.md#isformpdf) | **GET** /api/2.0/files/file/{fileId}/isformpdf | Check the PDF file
[**lockFile**](FilesFilesAPI.md#lockfile) | **PUT** /api/2.0/files/file/{fileId}/lock | Lock a file
[**manageFormFilling**](FilesFilesAPI.md#manageformfilling) | **PUT** /api/2.0/files/file/{fileId}/manageformfilling | Perform form filling action
[**openEditFile**](FilesFilesAPI.md#openeditfile) | **GET** /api/2.0/files/file/{fileId}/openedit | Open a file configuration
[**restoreFileVersion**](FilesFilesAPI.md#restorefileversion) | **POST** /api/2.0/files/file/{fileId}/restoreversion | Restore a file version
[**saveEditingFileFromForm**](FilesFilesAPI.md#saveeditingfilefromform) | **PUT** /api/2.0/files/file/{fileId}/saveediting | Save file edits
[**saveFileAsPdf**](FilesFilesAPI.md#savefileaspdf) | **POST** /api/2.0/files/file/{id}/saveaspdf | Save a file as PDF
[**saveFormRoleMapping**](FilesFilesAPI.md#saveformrolemapping) | **POST** /api/2.0/files/file/{fileId}/formrolemapping | Save form role mapping
[**setCustomFilterTag**](FilesFilesAPI.md#setcustomfiltertag) | **PUT** /api/2.0/files/file/{fileId}/customfilter | Set the Custom Filter editing mode
[**setFileExternalLink**](FilesFilesAPI.md#setfileexternallink) | **PUT** /api/2.0/files/file/{id}/links | Set an external link
[**setFileOrder**](FilesFilesAPI.md#setfileorder) | **PUT** /api/2.0/files/{fileId}/order | Set file order
[**setFilesOrder**](FilesFilesAPI.md#setfilesorder) | **PUT** /api/2.0/files/order | Set order of files
[**startEditFile**](FilesFilesAPI.md#starteditfile) | **POST** /api/2.0/files/file/{fileId}/startedit | Start file editing
[**startFillingFile**](FilesFilesAPI.md#startfillingfile) | **PUT** /api/2.0/files/file/{fileId}/startfilling | Start file filling
[**toggleFileFavorite**](FilesFilesAPI.md#togglefilefavorite) | **GET** /api/2.0/files/favorites/{fileId} | Change the file favorite status
[**trackEditFile**](FilesFilesAPI.md#trackeditfile) | **GET** /api/2.0/files/file/{fileId}/trackeditfile | Track file editing
[**updateFile**](FilesFilesAPI.md#updatefile) | **PUT** /api/2.0/files/file/{fileId} | Update a file


# **addFileToRecent**
```swift
    open class func addFileToRecent(fileId: Int, completion: @escaping (_ data: FileIntegerWrapper?, _ error: Error?) -> Void)
```

Adds a file with the ID specified in the request to the Recent section.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-file-to-recent/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file unique identifier. | 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file unique identifier.

// Add a file to the Recent section
FilesFilesAPIApi.addFileToRecent(fileId: fileId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addTemplates**
```swift
    open class func addTemplates(templatesRequestDto: TemplatesRequestDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Adds files with the IDs specified in the request to the template list.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-templates/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templatesRequestDto** | [**TemplatesRequestDto**](TemplatesRequestDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let templatesRequestDto = TemplatesRequestDto(fileIds: [123]) // TemplatesRequestDto |  (optional)

// Add template files
FilesFilesAPIApi.addTemplates(templatesRequestDto: templatesRequestDto) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **changeVersionHistory**
```swift
    open class func changeVersionHistory(fileId: Int, changeHistory: ChangeHistory, completion: @escaping (_ data: FileIntegerArrayWrapper?, _ error: Error?) -> Void)
```

Changes the version history of a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-version-history/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file Id to change its version history. | 
 **changeHistory** | [**ChangeHistory**](ChangeHistory.md) | The parameters for changing version history. | 

### Return type

[**FileIntegerArrayWrapper**](FileIntegerArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file Id to change its version history.
let changeHistory = ChangeHistory(version: 123, continueVersion: false) // ChangeHistory | The parameters for changing version history.

// Change version history
FilesFilesAPIApi.changeVersionHistory(fileId: fileId, changeHistory: changeHistory) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkFillFormDraft**
```swift
    open class func checkFillFormDraft(fileId: Int, checkFillFormDraft: CheckFillFormDraft, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Checks if the current file is a form draft which can be filled out.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-fill-form-draft/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID of the form draft. | 
 **checkFillFormDraft** | [**CheckFillFormDraft**](CheckFillFormDraft.md) | The parameters for checking the form draft filling. | 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID of the form draft.
let checkFillFormDraft = CheckFillFormDraft(version: 123, action: "action_example", requestView: false, requestEmbedded: false) // CheckFillFormDraft | The parameters for checking the form draft filling.

// Check the form draft filling
FilesFilesAPIApi.checkFillFormDraft(fileId: fileId, checkFillFormDraft: checkFillFormDraft) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **copyFileAs**
```swift
    open class func copyFileAs(fileId: Int, copyAsJsonElement: CopyAsJsonElement, completion: @escaping (_ data: FileEntryBaseWrapper?, _ error: Error?) -> Void)
```

Copies (and converts if possible) an existing file to the specified folder.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/copy-file-as/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID to copy. | 
 **copyAsJsonElement** | [**CopyAsJsonElement**](CopyAsJsonElement.md) | The parameters for copying a file. | 

### Return type

[**FileEntryBaseWrapper**](FileEntryBaseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID to copy.
let copyAsJsonElement = CopyAsJsonElement(destTitle: "destTitle_example", destFolderId: CopyAsJsonElement_destFolderId(), enableExternalExt: false, password: "password_example", toForm: false) // CopyAsJsonElement | The parameters for copying a file.

// Copy a file
FilesFilesAPIApi.copyFileAs(fileId: fileId, copyAsJsonElement: copyAsJsonElement) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEditSession**
```swift
    open class func createEditSession(fileId: Int, fileSize: Int64? = nil, completion: @escaping (_ data: ChunkedUploadSessionResponseWrapperIntegerWrapper?, _ error: Error?) -> Void)
```

Creates a session to edit the existing file with multiple chunks (needed for WebDAV).

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-edit-session/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID. | 
 **fileSize** | **Int64** | The file size in bytes. | [optional] 

### Return type

[**ChunkedUploadSessionResponseWrapperIntegerWrapper**](ChunkedUploadSessionResponseWrapperIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID.
let fileSize = 987 // Int64 | The file size in bytes. (optional)

// Create the editing session
FilesFilesAPIApi.createEditSession(fileId: fileId, fileSize: fileSize) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createFile**
```swift
    open class func createFile(folderId: Int, createFileJsonElement: CreateFileJsonElement, completion: @escaping (_ data: FileIntegerWrapper?, _ error: Error?) -> Void)
```

Creates a new file in the specified folder with the title specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** | The folder ID for the file creation. | 
 **createFileJsonElement** | [**CreateFileJsonElement**](CreateFileJsonElement.md) | The parameters for creating a file. | 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | The folder ID for the file creation.
let createFileJsonElement = CreateFileJsonElement(title: "title_example", templateId: CreateFileJsonElement_templateId(), enableExternalExt: false, formId: 123) // CreateFileJsonElement | The parameters for creating a file.

// Create a file
FilesFilesAPIApi.createFile(folderId: folderId, createFileJsonElement: createFileJsonElement) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createFileInMyDocuments**
```swift
    open class func createFileInMyDocuments(createFileJsonElement: CreateFileJsonElement? = nil, completion: @escaping (_ data: FileIntegerWrapper?, _ error: Error?) -> Void)
```

Creates a new file in the My documents section with the title specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file-in-my-documents/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createFileJsonElement** | [**CreateFileJsonElement**](CreateFileJsonElement.md) |  | [optional] 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createFileJsonElement = CreateFileJsonElement(title: "title_example", templateId: CreateFileJsonElement_templateId(), enableExternalExt: false, formId: 123) // CreateFileJsonElement |  (optional)

// Create a file in the My documents section
FilesFilesAPIApi.createFileInMyDocuments(createFileJsonElement: createFileJsonElement) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createFilePrimaryExternalLink**
```swift
    open class func createFilePrimaryExternalLink(id: Int, fileLinkRequest: FileLinkRequest, completion: @escaping (_ data: FileShareWrapper?, _ error: Error?) -> Void)
```

Creates a primary external link by the identifier specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file-primary-external-link/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The file ID. | 
 **fileLinkRequest** | [**FileLinkRequest**](FileLinkRequest.md) | The file external link parameters. | 

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The file ID.
let fileLinkRequest = FileLinkRequest(linkId: 123, access: FileShare(), expirationDate: ApiDateTime(utcTime: Date(), timeZoneOffset: "timeZoneOffset_example"), title: "title_example", _internal: false, primary: true, denyDownload: false, password: "password_example") // FileLinkRequest | The file external link parameters.

// Create primary external link
FilesFilesAPIApi.createFilePrimaryExternalLink(id: id, fileLinkRequest: fileLinkRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createHtmlFile**
```swift
    open class func createHtmlFile(folderId: Int, createTextOrHtmlFile: CreateTextOrHtmlFile, completion: @escaping (_ data: FileIntegerWrapper?, _ error: Error?) -> Void)
```

Creates an HTML (.html) file in the selected folder with the title and contents specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-html-file/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** | The folder ID to create the text or HTML file. | 
 **createTextOrHtmlFile** | [**CreateTextOrHtmlFile**](CreateTextOrHtmlFile.md) | The parameters for creating an HTML or text file. | 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | The folder ID to create the text or HTML file.
let createTextOrHtmlFile = CreateTextOrHtmlFile(title: "title_example", content: "content_example", createNewIfExist: false) // CreateTextOrHtmlFile | The parameters for creating an HTML or text file.

// Create an HTML file
FilesFilesAPIApi.createHtmlFile(folderId: folderId, createTextOrHtmlFile: createTextOrHtmlFile) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createHtmlFileInMyDocuments**
```swift
    open class func createHtmlFileInMyDocuments(createTextOrHtmlFile: CreateTextOrHtmlFile? = nil, completion: @escaping (_ data: FileIntegerWrapper?, _ error: Error?) -> Void)
```

Creates an HTML (.html) file in the My documents section with the title and contents specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-html-file-in-my-documents/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTextOrHtmlFile** | [**CreateTextOrHtmlFile**](CreateTextOrHtmlFile.md) |  | [optional] 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createTextOrHtmlFile = CreateTextOrHtmlFile(title: "title_example", content: "content_example", createNewIfExist: false) // CreateTextOrHtmlFile |  (optional)

// Create an HTML file in the My documents section
FilesFilesAPIApi.createHtmlFileInMyDocuments(createTextOrHtmlFile: createTextOrHtmlFile) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTextFile**
```swift
    open class func createTextFile(folderId: Int, createTextOrHtmlFile: CreateTextOrHtmlFile, completion: @escaping (_ data: FileIntegerWrapper?, _ error: Error?) -> Void)
```

Creates a text (.txt) file in the selected folder with the title and contents specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-text-file/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** | The folder ID to create the text or HTML file. | 
 **createTextOrHtmlFile** | [**CreateTextOrHtmlFile**](CreateTextOrHtmlFile.md) | The parameters for creating an HTML or text file. | 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | The folder ID to create the text or HTML file.
let createTextOrHtmlFile = CreateTextOrHtmlFile(title: "title_example", content: "content_example", createNewIfExist: false) // CreateTextOrHtmlFile | The parameters for creating an HTML or text file.

// Create a text file
FilesFilesAPIApi.createTextFile(folderId: folderId, createTextOrHtmlFile: createTextOrHtmlFile) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTextFileInMyDocuments**
```swift
    open class func createTextFileInMyDocuments(createTextOrHtmlFile: CreateTextOrHtmlFile? = nil, completion: @escaping (_ data: FileIntegerWrapper?, _ error: Error?) -> Void)
```

Creates a text (.txt) file in the My documents section with the title and contents specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-text-file-in-my-documents/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTextOrHtmlFile** | [**CreateTextOrHtmlFile**](CreateTextOrHtmlFile.md) |  | [optional] 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createTextOrHtmlFile = CreateTextOrHtmlFile(title: "title_example", content: "content_example", createNewIfExist: false) // CreateTextOrHtmlFile |  (optional)

// Create a text file in the My documents section
FilesFilesAPIApi.createTextFileInMyDocuments(createTextOrHtmlFile: createTextOrHtmlFile) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createThumbnails**
```swift
    open class func createThumbnails(baseBatchRequestDto: BaseBatchRequestDto? = nil, completion: @escaping (_ data: ObjectArrayWrapper?, _ error: Error?) -> Void)
```

Creates thumbnails for the files with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-thumbnails/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **baseBatchRequestDto** | [**BaseBatchRequestDto**](BaseBatchRequestDto.md) |  | [optional] 

### Return type

[**ObjectArrayWrapper**](ObjectArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let baseBatchRequestDto = BaseBatchRequestDto(returnSingleOperation: false, folderIds: [BaseBatchRequestDto_allOf_folderIds()], fileIds: [BaseBatchRequestDto_allOf_fileIds()]) // BaseBatchRequestDto |  (optional)

// Create file thumbnails
FilesFilesAPIApi.createThumbnails(baseBatchRequestDto: baseBatchRequestDto) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFile**
```swift
    open class func deleteFile(fileId: Int, delete: Delete, returnSingleOperation: Bool? = nil, completion: @escaping (_ data: FileOperationArrayWrapper?, _ error: Error?) -> Void)
```

Deletes a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-file/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID to delete. | 
 **delete** | [**Delete**](Delete.md) | The parameters for deleting a file. | 
 **returnSingleOperation** | **Bool** | Specifies whether to return only the current operation | [optional] 

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID to delete.
let delete = Delete(deleteAfter: false, immediately: false) // Delete | The parameters for deleting a file.
let returnSingleOperation = false // Bool | Specifies whether to return only the current operation (optional)

// Delete a file
FilesFilesAPIApi.deleteFile(fileId: fileId, delete: delete, returnSingleOperation: returnSingleOperation) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRecent**
```swift
    open class func deleteRecent(baseBatchRequestDto: BaseBatchRequestDto? = nil, completion: @escaping (_ data: NoContentResultWrapper?, _ error: Error?) -> Void)
```

Removes files with the IDs specified in the request from the Recent section.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-recent/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **baseBatchRequestDto** | [**BaseBatchRequestDto**](BaseBatchRequestDto.md) |  | [optional] 

### Return type

[**NoContentResultWrapper**](NoContentResultWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let baseBatchRequestDto = BaseBatchRequestDto(returnSingleOperation: false, folderIds: [BaseBatchRequestDto_allOf_folderIds()], fileIds: [BaseBatchRequestDto_allOf_fileIds()]) // BaseBatchRequestDto |  (optional)

// Delete recent files
FilesFilesAPIApi.deleteRecent(baseBatchRequestDto: baseBatchRequestDto) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTemplates**
```swift
    open class func deleteTemplates(requestBody: [Int]? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Removes files with the IDs specified in the request from the template list.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-templates/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**[Int]**](Int.md) | The file IDs. | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let requestBody = [123] // [Int] | The file IDs. (optional)

// Delete template files
FilesFilesAPIApi.deleteTemplates(requestBody: requestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateXlsx**
```swift
    open class func generateXlsx(fileId: Int, completion: @escaping (_ data: FileIntegerWrapper?, _ error: Error?) -> Void)
```

Triggers asynchronous XLSX report generation for the specified form file.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/generate-xlsx/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file unique identifier. | 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file unique identifier.

// Generate XLSX report
FilesFilesAPIApi.generateXlsx(fileId: fileId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllFormRoles**
```swift
    open class func getAllFormRoles(fileId: Int, completion: @escaping (_ data: FormRoleArrayWrapper?, _ error: Error?) -> Void)
```

Returns all roles for the specified form.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-form-roles/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file unique identifier. | 

### Return type

[**FormRoleArrayWrapper**](FormRoleArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file unique identifier.

// Get form roles
FilesFilesAPIApi.getAllFormRoles(fileId: fileId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEditDiffUrl**
```swift
    open class func getEditDiffUrl(fileId: Int, version: Int? = nil, completion: @escaping (_ data: EditHistoryDataWrapper?, _ error: Error?) -> Void)
```

Returns a URL to the changes of a file version specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-edit-diff-url/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID. | 
 **version** | **Int** | The file version. | [optional] 

### Return type

[**EditHistoryDataWrapper**](EditHistoryDataWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID.
let version = 987 // Int | The file version. (optional)

// Get changes URL
FilesFilesAPIApi.getEditDiffUrl(fileId: fileId, version: version) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEditHistory**
```swift
    open class func getEditHistory(fileId: Int, completion: @escaping (_ data: EditHistoryArrayWrapper?, _ error: Error?) -> Void)
```

Returns the version history of a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-edit-history/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file unique identifier. | 

### Return type

[**EditHistoryArrayWrapper**](EditHistoryArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file unique identifier.

// Get version history
FilesFilesAPIApi.getEditHistory(fileId: fileId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFileHistory**
```swift
    open class func getFileHistory(fileId: Int, fromDate: ApiDateTime? = nil, toDate: ApiDateTime? = nil, count: Int? = nil, startIndex: Int? = nil, completion: @escaping (_ data: HistoryArrayWrapper?, _ error: Error?) -> Void)
```

Returns the list of actions performed on the file with the specified identifier.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-history/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID of the history request. | 
 **fromDate** | [**ApiDateTime**](.md) | The start date of the history. | [optional] 
 **toDate** | [**ApiDateTime**](.md) | The end date of the history. | [optional] 
 **count** | **Int** | The number of history entries to retrieve for the file log. | [optional] 
 **startIndex** | **Int** | The starting index for retrieving a subset of file history entries. | [optional] 

### Return type

[**HistoryArrayWrapper**](HistoryArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID of the history request.
let fromDate = ApiDateTime(utcTime: Date(), timeZoneOffset: "timeZoneOffset_example") // ApiDateTime | The start date of the history. (optional)
let toDate = ApiDateTime(utcTime: Date(), timeZoneOffset: "timeZoneOffset_example") // ApiDateTime | The end date of the history. (optional)
let count = 987 // Int | The number of history entries to retrieve for the file log. (optional)
let startIndex = 987 // Int | The starting index for retrieving a subset of file history entries. (optional)

// Get file history
FilesFilesAPIApi.getFileHistory(fileId: fileId, fromDate: fromDate, toDate: toDate, count: count, startIndex: startIndex) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFileInfo**
```swift
    open class func getFileInfo(fileId: Int, version: Int? = nil, completion: @escaping (_ data: FileIntegerWrapper?, _ error: Error?) -> Void)
```

Returns the detailed information about a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-info/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID. | 
 **version** | **Int** | The file version. | [optional] 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID.
let version = 987 // Int | The file version. (optional)

// Get file information
FilesFilesAPIApi.getFileInfo(fileId: fileId, version: version) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFileLinks**
```swift
    open class func getFileLinks(id: Int, count: Int? = nil, startIndex: Int? = nil, completion: @escaping (_ data: FileShareArrayWrapper?, _ error: Error?) -> Void)
```

Returns the external links of a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-links/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The file unique identifier. | 
 **count** | **Int** | The number of items to retrieve in the request. | [optional] 
 **startIndex** | **Int** | The starting index for the query results. | [optional] 

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The file unique identifier.
let count = 987 // Int | The number of items to retrieve in the request. (optional)
let startIndex = 987 // Int | The starting index for the query results. (optional)

// Get file external links
FilesFilesAPIApi.getFileLinks(id: id, count: count, startIndex: startIndex) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFilePrimaryExternalLink**
```swift
    open class func getFilePrimaryExternalLink(id: Int, count: Int? = nil, startIndex: Int? = nil, completion: @escaping (_ data: FileShareWrapper?, _ error: Error?) -> Void)
```

Returns the primary external link by the identifier specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-primary-external-link/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The file unique identifier. | 
 **count** | **Int** | The number of items to retrieve in the request. | [optional] 
 **startIndex** | **Int** | The starting index for the query results. | [optional] 

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The file unique identifier.
let count = 987 // Int | The number of items to retrieve in the request. (optional)
let startIndex = 987 // Int | The starting index for the query results. (optional)

// Get primary external link
FilesFilesAPIApi.getFilePrimaryExternalLink(id: id, count: count, startIndex: startIndex) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFileVersionInfo**
```swift
    open class func getFileVersionInfo(fileId: Int, completion: @escaping (_ data: FileIntegerArrayWrapper?, _ error: Error?) -> Void)
```

Returns the detailed information about all the available file versions with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-version-info/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file unique identifier. | 

### Return type

[**FileIntegerArrayWrapper**](FileIntegerArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file unique identifier.

// Get file versions
FilesFilesAPIApi.getFileVersionInfo(fileId: fileId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFillResult**
```swift
    open class func getFillResult(fillingSessionId: String? = nil, completion: @escaping (_ data: FillingFormResultIntegerWrapper?, _ error: Error?) -> Void)
```

Retrieves the result of a form-filling session.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-fill-result/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fillingSessionId** | **String** | The form-filling session ID. | [optional] 

### Return type

[**FillingFormResultIntegerWrapper**](FillingFormResultIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fillingSessionId = "fillingSessionId_example" // String | The form-filling session ID. (optional)

// Get form-filling result
FilesFilesAPIApi.getFillResult(fillingSessionId: fillingSessionId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFormSubmissions**
```swift
    open class func getFormSubmissions(fileId: Int, completion: @escaping (_ data: FormSubmissionsWrapper?, _ error: Error?) -> Void)
```

Returns the results of form submissions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-form-submissions/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file unique identifier. | 

### Return type

[**FormSubmissionsWrapper**](FormSubmissionsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file unique identifier.

// Get form submission results
FilesFilesAPIApi.getFormSubmissions(fileId: fileId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPresignedFileUri**
```swift
    open class func getPresignedFileUri(fileId: Int, completion: @escaping (_ data: FileLinkWrapper?, _ error: Error?) -> Void)
```

Returns a link to download a file with the ID specified in the request asynchronously.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-presigned-file-uri/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file unique identifier. | 

### Return type

[**FileLinkWrapper**](FileLinkWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file unique identifier.

// Get file download link asynchronously
FilesFilesAPIApi.getPresignedFileUri(fileId: fileId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPresignedUri**
```swift
    open class func getPresignedUri(fileId: Int, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Returns a pre-signed URL to download a file with the specified ID.  This temporary link provides secure access to the file.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-presigned-uri/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file unique identifier. | 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file unique identifier.

// Get file download link
FilesFilesAPIApi.getPresignedUri(fileId: fileId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProtectedFileUsers**
```swift
    open class func getProtectedFileUsers(fileId: Int, completion: @escaping (_ data: MentionWrapperArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of users with their access rights to the protected file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-protected-file-users/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file unique identifier. | 

### Return type

[**MentionWrapperArrayWrapper**](MentionWrapperArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file unique identifier.

// Get users access rights to the protected file
FilesFilesAPIApi.getProtectedFileUsers(fileId: fileId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReferenceData**
```swift
    open class func getReferenceData(getReferenceDataDtoInteger: GetReferenceDataDtoInteger? = nil, completion: @escaping (_ data: FileReferenceWrapper?, _ error: Error?) -> Void)
```

Returns the reference data to uniquely identify a file in its system and check the availability of insering data into the destination spreadsheet by the external link.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-reference-data/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getReferenceDataDtoInteger** | [**GetReferenceDataDtoInteger**](GetReferenceDataDtoInteger.md) |  | [optional] 

### Return type

[**FileReferenceWrapper**](FileReferenceWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let getReferenceDataDtoInteger = GetReferenceDataDtoInteger(fileKey: "fileKey_example", instanceId: "instanceId_example", sourceFileId: 123, path: "path_example", link: "link_example") // GetReferenceDataDtoInteger |  (optional)

// Get reference data
FilesFilesAPIApi.getReferenceData(getReferenceDataDtoInteger: getReferenceDataDtoInteger) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **isFormPDF**
```swift
    open class func isFormPDF(fileId: Int, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Checks if the PDF file is a form or not.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/is-form-pdf/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file unique identifier. | 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file unique identifier.

// Check the PDF file
FilesFilesAPIApi.isFormPDF(fileId: fileId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lockFile**
```swift
    open class func lockFile(fileId: Int, lockFileParameters: LockFileParameters, completion: @escaping (_ data: FileIntegerWrapper?, _ error: Error?) -> Void)
```

Locks a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/lock-file/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID for locking. | 
 **lockFileParameters** | [**LockFileParameters**](LockFileParameters.md) | The parameters for locking a file. | 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID for locking.
let lockFileParameters = LockFileParameters(lockFile: true) // LockFileParameters | The parameters for locking a file.

// Lock a file
FilesFilesAPIApi.lockFile(fileId: fileId, lockFileParameters: lockFileParameters) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **manageFormFilling**
```swift
    open class func manageFormFilling(fileId: String, manageFormFillingDtoInteger: ManageFormFillingDtoInteger? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Performs the specified form filling action.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/manage-form-filling/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **String** |  | 
 **manageFormFillingDtoInteger** | [**ManageFormFillingDtoInteger**](ManageFormFillingDtoInteger.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = "fileId_example" // String | 
let manageFormFillingDtoInteger = ManageFormFillingDtoInteger(formId: 123, action: FormFillingManageAction()) // ManageFormFillingDtoInteger |  (optional)

// Perform form filling action
FilesFilesAPIApi.manageFormFilling(fileId: fileId, manageFormFillingDtoInteger: manageFormFillingDtoInteger) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **openEditFile**
```swift
    open class func openEditFile(fileId: Int, version: Int? = nil, view: Bool? = nil, editorType: EditorType? = nil, edit: Bool? = nil, fill: Bool? = nil, completion: @escaping (_ data: ConfigurationIntegerWrapper?, _ error: Error?) -> Void)
```

Returns the initialization configuration of a file to open it in the editor.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/open-edit-file/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID to open. | 
 **version** | **Int** | The file version to open. | [optional] 
 **view** | **Bool** | Specifies if the document will be opened for viewing only or not. | [optional] 
 **editorType** | [**EditorType**](.md) | The editor type to open the file. | [optional] 
 **edit** | **Bool** | Specifies if the document is opened in the editing mode or not. | [optional] 
 **fill** | **Bool** | Specifies if the document is opened in the form-filling mode or not. | [optional] 

### Return type

[**ConfigurationIntegerWrapper**](ConfigurationIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID to open.
let version = 987 // Int | The file version to open. (optional)
let view = false // Bool | Specifies if the document will be opened for viewing only or not. (optional)
let editorType = EditorType() // EditorType | The editor type to open the file. (optional)
let edit = false // Bool | Specifies if the document is opened in the editing mode or not. (optional)
let fill = false // Bool | Specifies if the document is opened in the form-filling mode or not. (optional)

// Open a file configuration
FilesFilesAPIApi.openEditFile(fileId: fileId, version: version, view: view, editorType: editorType, edit: edit, fill: fill) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restoreFileVersion**
```swift
    open class func restoreFileVersion(fileId: Int, version: Int? = nil, url: String? = nil, completion: @escaping (_ data: EditHistoryArrayWrapper?, _ error: Error?) -> Void)
```

Restores a file version specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-file-version/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID of the restore version. | 
 **version** | **Int** | The file version of the restore. | [optional] 
 **url** | **String** | The file version URL of the restore. | [optional] 

### Return type

[**EditHistoryArrayWrapper**](EditHistoryArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID of the restore version.
let version = 987 // Int | The file version of the restore. (optional)
let url = "url_example" // String | The file version URL of the restore. (optional)

// Restore a file version
FilesFilesAPIApi.restoreFileVersion(fileId: fileId, version: version, url: url) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveEditingFileFromForm**
```swift
    open class func saveEditingFileFromForm(fileId: Int, downloadUri: String? = nil, fileExtension: String? = nil, file: URL? = nil, forcesave: Bool? = nil, completion: @escaping (_ data: FileIntegerWrapper?, _ error: Error?) -> Void)
```

Saves edits to a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-editing-file-from-form/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The editing file ID from the request. | 
 **downloadUri** | **String** | The URI to download the editing file. | [optional] 
 **fileExtension** | **String** | The editing file extension from the request. | [optional] 
 **file** | **URL** | The edited file to be saved, uploaded as part of the multipart/form-data request.  This property represents the modified file content from the HTTP request form after editing operations.  The file is accessed via the IFormFile interface which provides access to the file name, content type, length, and stream. | [optional] 
 **forcesave** | **Bool** | Specifies whether to force save the file or not. | [optional] 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The editing file ID from the request.
let downloadUri = "downloadUri_example" // String | The URI to download the editing file. (optional)
let fileExtension = "fileExtension_example" // String | The editing file extension from the request. (optional)
let file = URL(string: "https://example.com")! // URL | The edited file to be saved, uploaded as part of the multipart/form-data request.  This property represents the modified file content from the HTTP request form after editing operations.  The file is accessed via the IFormFile interface which provides access to the file name, content type, length, and stream. (optional)
let forcesave = true // Bool | Specifies whether to force save the file or not. (optional)

// Save file edits
FilesFilesAPIApi.saveEditingFileFromForm(fileId: fileId, downloadUri: downloadUri, fileExtension: fileExtension, file: file, forcesave: forcesave) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveFileAsPdf**
```swift
    open class func saveFileAsPdf(id: Int, saveAsPdfInteger: SaveAsPdfInteger, completion: @escaping (_ data: FileIntegerWrapper?, _ error: Error?) -> Void)
```

Saves a file with the identifier specified in the request as a PDF document.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-file-as-pdf/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The file ID to save as PDF. | 
 **saveAsPdfInteger** | [**SaveAsPdfInteger**](SaveAsPdfInteger.md) | The parameters for saving the file as PDF. | 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The file ID to save as PDF.
let saveAsPdfInteger = SaveAsPdfInteger(folderId: 123, title: "title_example") // SaveAsPdfInteger | The parameters for saving the file as PDF.

// Save a file as PDF
FilesFilesAPIApi.saveFileAsPdf(id: id, saveAsPdfInteger: saveAsPdfInteger) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveFormRoleMapping**
```swift
    open class func saveFormRoleMapping(fileId: String, saveFormRoleMappingDtoInteger: SaveFormRoleMappingDtoInteger? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Saves the form role mapping.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-form-role-mapping/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **String** |  | 
 **saveFormRoleMappingDtoInteger** | [**SaveFormRoleMappingDtoInteger**](SaveFormRoleMappingDtoInteger.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = "fileId_example" // String | 
let saveFormRoleMappingDtoInteger = SaveFormRoleMappingDtoInteger(formId: 123, roles: [FormRole(roomId: 123, roleName: "roleName_example", roleColor: "roleColor_example", userId: 123, sequence: 123, submitted: false, openedAt: Date(), submissionDate: Date())]) // SaveFormRoleMappingDtoInteger |  (optional)

// Save form role mapping
FilesFilesAPIApi.saveFormRoleMapping(fileId: fileId, saveFormRoleMappingDtoInteger: saveFormRoleMappingDtoInteger) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setCustomFilterTag**
```swift
    open class func setCustomFilterTag(fileId: Int, customFilterParameters: CustomFilterParameters, completion: @escaping (_ data: FileIntegerWrapper?, _ error: Error?) -> Void)
```

Sets the Custom Filter editing mode to a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-custom-filter-tag/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID. | 
 **customFilterParameters** | [**CustomFilterParameters**](CustomFilterParameters.md) | The parameters for setting the Custom Filter editing mode. | 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID.
let customFilterParameters = CustomFilterParameters(enabled: true) // CustomFilterParameters | The parameters for setting the Custom Filter editing mode.

// Set the Custom Filter editing mode
FilesFilesAPIApi.setCustomFilterTag(fileId: fileId, customFilterParameters: customFilterParameters) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setFileExternalLink**
```swift
    open class func setFileExternalLink(id: Int, fileLinkRequest: FileLinkRequest, completion: @escaping (_ data: FileShareWrapper?, _ error: Error?) -> Void)
```

Sets an external link to a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-external-link/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The file ID. | 
 **fileLinkRequest** | [**FileLinkRequest**](FileLinkRequest.md) | The file external link parameters. | 

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The file ID.
let fileLinkRequest = FileLinkRequest(linkId: 123, access: FileShare(), expirationDate: ApiDateTime(utcTime: Date(), timeZoneOffset: "timeZoneOffset_example"), title: "title_example", _internal: false, primary: true, denyDownload: false, password: "password_example") // FileLinkRequest | The file external link parameters.

// Set an external link
FilesFilesAPIApi.setFileExternalLink(id: id, fileLinkRequest: fileLinkRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setFileOrder**
```swift
    open class func setFileOrder(fileId: Int, orderRequestDto: OrderRequestDto? = nil, completion: @escaping (_ data: FileIntegerWrapper?, _ error: Error?) -> Void)
```

Sets the order of the file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-order/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file unique identifier. | 
 **orderRequestDto** | [**OrderRequestDto**](OrderRequestDto.md) | The file order information. | [optional] 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file unique identifier.
let orderRequestDto = OrderRequestDto(order: 123) // OrderRequestDto | The file order information. (optional)

// Set file order
FilesFilesAPIApi.setFileOrder(fileId: fileId, orderRequestDto: orderRequestDto) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setFilesOrder**
```swift
    open class func setFilesOrder(ordersRequestDtoInteger: OrdersRequestDtoInteger? = nil, completion: @escaping (_ data: FileEntryIntegerArrayWrapper?, _ error: Error?) -> Void)
```

Sets the order of the files specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-files-order/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordersRequestDtoInteger** | [**OrdersRequestDtoInteger**](OrdersRequestDtoInteger.md) |  | [optional] 

### Return type

[**FileEntryIntegerArrayWrapper**](FileEntryIntegerArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ordersRequestDtoInteger = OrdersRequestDtoInteger(items: [OrdersItemRequestDtoInteger(entryId: 123, entryType: FileEntryType(), order: 123)]) // OrdersRequestDtoInteger |  (optional)

// Set order of files
FilesFilesAPIApi.setFilesOrder(ordersRequestDtoInteger: ordersRequestDtoInteger) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startEditFile**
```swift
    open class func startEditFile(fileId: Int, startEdit: StartEdit, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Informs about opening a file with the ID specified in the request for editing, locking it from being deleted or moved (this method is called by the mobile editors).

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-edit-file/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID to start editing. | 
 **startEdit** | [**StartEdit**](StartEdit.md) | The file parameters to start editing. | 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID to start editing.
let startEdit = StartEdit(editingAlone: false) // StartEdit | The file parameters to start editing.

// Start file editing
FilesFilesAPIApi.startEditFile(fileId: fileId, startEdit: startEdit) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startFillingFile**
```swift
    open class func startFillingFile(fileId: Int, completion: @escaping (_ data: FileIntegerWrapper?, _ error: Error?) -> Void)
```

Starts filling a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-filling-file/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID to start filling. | 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID to start filling.

// Start file filling
FilesFilesAPIApi.startFillingFile(fileId: fileId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **toggleFileFavorite**
```swift
    open class func toggleFileFavorite(fileId: Int, favorite: Bool? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Changes the favorite status of the file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/toggle-file-favorite/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID. | 
 **favorite** | **Bool** | Specifies if the file is marked as favorite or not. | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID.
let favorite = true // Bool | Specifies if the file is marked as favorite or not. (optional)

// Change the file favorite status
FilesFilesAPIApi.toggleFileFavorite(fileId: fileId, favorite: favorite) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trackEditFile**
```swift
    open class func trackEditFile(fileId: Int, tabId: UUID? = nil, docKeyForTrack: String? = nil, isFinish: Bool? = nil, completion: @escaping (_ data: KeyValuePairBooleanStringWrapper?, _ error: Error?) -> Void)
```

Tracks file changes when editing.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/track-edit-file/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID to track editing changes. | 
 **tabId** | **UUID** | The tab ID to track editing changes. | [optional] 
 **docKeyForTrack** | **String** | The document key for tracking changes. | [optional] 
 **isFinish** | **Bool** | Specifies whether to finish file tracking or not. | [optional] 

### Return type

[**KeyValuePairBooleanStringWrapper**](KeyValuePairBooleanStringWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID to track editing changes.
let tabId = 987 // UUID | The tab ID to track editing changes. (optional)
let docKeyForTrack = "docKeyForTrack_example" // String | The document key for tracking changes. (optional)
let isFinish = true // Bool | Specifies whether to finish file tracking or not. (optional)

// Track file editing
FilesFilesAPIApi.trackEditFile(fileId: fileId, tabId: tabId, docKeyForTrack: docKeyForTrack, isFinish: isFinish) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFile**
```swift
    open class func updateFile(fileId: Int, updateFile: UpdateFile, completion: @escaping (_ data: FileIntegerWrapper?, _ error: Error?) -> Void)
```

Updates the information of the selected file with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID to update. | 
 **updateFile** | [**UpdateFile**](UpdateFile.md) | The parameters for updating a file. | 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID to update.
let updateFile = UpdateFile(title: "title_example", lastVersion: 123) // UpdateFile | The parameters for updating a file.

// Update a file
FilesFilesAPIApi.updateFile(fileId: fileId, updateFile: updateFile) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

