# FilesFilesAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addFileToRecent**](FilesFilesAPI.md#addfiletorecent) | **POST** /api/2.0/files/file/{fileId}/recent | 
[**addTemplates**](FilesFilesAPI.md#addtemplates) | **POST** /api/2.0/files/templates | 
[**changeVersionHistory**](FilesFilesAPI.md#changeversionhistory) | **PUT** /api/2.0/files/file/{fileId}/history | 
[**checkFillFormDraft**](FilesFilesAPI.md#checkfillformdraft) | **POST** /api/2.0/files/masterform/{fileId}/checkfillformdraft | 
[**copyFileAs**](FilesFilesAPI.md#copyfileas) | **POST** /api/2.0/files/file/{fileId}/copyas | 
[**createEditSession**](FilesFilesAPI.md#createeditsession) | **POST** /api/2.0/files/file/{fileId}/edit_session | 
[**createFile**](FilesFilesAPI.md#createfile) | **POST** /api/2.0/files/{folderId}/file | 
[**createFileInMyDocuments**](FilesFilesAPI.md#createfileinmydocuments) | **POST** /api/2.0/files/@my/file | 
[**createFilePrimaryExternalLink**](FilesFilesAPI.md#createfileprimaryexternallink) | **POST** /api/2.0/files/file/{id}/link | 
[**createHtmlFile**](FilesFilesAPI.md#createhtmlfile) | **POST** /api/2.0/files/{folderId}/html | 
[**createHtmlFileInMyDocuments**](FilesFilesAPI.md#createhtmlfileinmydocuments) | **POST** /api/2.0/files/@my/html | 
[**createTextFile**](FilesFilesAPI.md#createtextfile) | **POST** /api/2.0/files/{folderId}/text | 
[**createTextFileInMyDocuments**](FilesFilesAPI.md#createtextfileinmydocuments) | **POST** /api/2.0/files/@my/text | 
[**createThumbnails**](FilesFilesAPI.md#createthumbnails) | **POST** /api/2.0/files/thumbnails | 
[**deleteFile**](FilesFilesAPI.md#deletefile) | **DELETE** /api/2.0/files/file/{fileId} | 
[**deleteRecent**](FilesFilesAPI.md#deleterecent) | **DELETE** /api/2.0/files/recent | 
[**deleteTemplates**](FilesFilesAPI.md#deletetemplates) | **DELETE** /api/2.0/files/templates | 
[**getAllFormRoles**](FilesFilesAPI.md#getallformroles) | **GET** /api/2.0/files/file/{fileId}/formroles | 
[**getEditDiffUrl**](FilesFilesAPI.md#geteditdiffurl) | **GET** /api/2.0/files/file/{fileId}/edit/diff | 
[**getEditHistory**](FilesFilesAPI.md#getedithistory) | **GET** /api/2.0/files/file/{fileId}/edit/history | 
[**getFileHistory**](FilesFilesAPI.md#getfilehistory) | **GET** /api/2.0/files/file/{fileId}/log | 
[**getFileInfo**](FilesFilesAPI.md#getfileinfo) | **GET** /api/2.0/files/file/{fileId} | 
[**getFileLinks**](FilesFilesAPI.md#getfilelinks) | **GET** /api/2.0/files/file/{id}/links | 
[**getFilePrimaryExternalLink**](FilesFilesAPI.md#getfileprimaryexternallink) | **GET** /api/2.0/files/file/{id}/link | 
[**getFileVersionInfo**](FilesFilesAPI.md#getfileversioninfo) | **GET** /api/2.0/files/file/{fileId}/history | 
[**getFillResult**](FilesFilesAPI.md#getfillresult) | **GET** /api/2.0/files/file/fillresult | 
[**getPresignedFileUri**](FilesFilesAPI.md#getpresignedfileuri) | **GET** /api/2.0/files/file/{fileId}/presigned | 
[**getPresignedUri**](FilesFilesAPI.md#getpresigneduri) | **GET** /api/2.0/files/file/{fileId}/presigneduri | 
[**getProtectedFileUsers**](FilesFilesAPI.md#getprotectedfileusers) | **GET** /api/2.0/files/file/{fileId}/protectusers | 
[**getReferenceData**](FilesFilesAPI.md#getreferencedata) | **POST** /api/2.0/files/file/referencedata | 
[**isFormPDF**](FilesFilesAPI.md#isformpdf) | **GET** /api/2.0/files/file/{fileId}/isformpdf | 
[**lockFile**](FilesFilesAPI.md#lockfile) | **PUT** /api/2.0/files/file/{fileId}/lock | 
[**manageFormFilling**](FilesFilesAPI.md#manageformfilling) | **PUT** /api/2.0/files/file/{fileId}/manageformfilling | 
[**openEditFile**](FilesFilesAPI.md#openeditfile) | **GET** /api/2.0/files/file/{fileId}/openedit | 
[**restoreFileVersion**](FilesFilesAPI.md#restorefileversion) | **GET** /api/2.0/files/file/{fileId}/restoreversion | 
[**saveEditingFileFromForm**](FilesFilesAPI.md#saveeditingfilefromform) | **PUT** /api/2.0/files/file/{fileId}/saveediting | 
[**saveFileAsPdf**](FilesFilesAPI.md#savefileaspdf) | **POST** /api/2.0/files/file/{id}/saveaspdf | 
[**saveFormRoleMapping**](FilesFilesAPI.md#saveformrolemapping) | **POST** /api/2.0/files/file/{fileId}/formrolemapping | 
[**setCustomFilterTag**](FilesFilesAPI.md#setcustomfiltertag) | **PUT** /api/2.0/files/file/{fileId}/customfilter | 
[**setFileExternalLink**](FilesFilesAPI.md#setfileexternallink) | **PUT** /api/2.0/files/file/{id}/links | 
[**setFileOrder**](FilesFilesAPI.md#setfileorder) | **PUT** /api/2.0/files/{fileId}/order | 
[**setFilesOrder**](FilesFilesAPI.md#setfilesorder) | **PUT** /api/2.0/files/order | 
[**startEditFile**](FilesFilesAPI.md#starteditfile) | **POST** /api/2.0/files/file/{fileId}/startedit | 
[**startFillingFile**](FilesFilesAPI.md#startfillingfile) | **PUT** /api/2.0/files/file/{fileId}/startfilling | 
[**toggleFileFavorite**](FilesFilesAPI.md#togglefilefavorite) | **GET** /api/2.0/files/favorites/{fileId} | 
[**trackEditFile**](FilesFilesAPI.md#trackeditfile) | **GET** /api/2.0/files/file/{fileId}/trackeditfile | 
[**updateFile**](FilesFilesAPI.md#updatefile) | **PUT** /api/2.0/files/file/{fileId} | 


# **addFileToRecent**
```swift
    open class func addFileToRecent(fileId: Int, completion: @escaping (_ data: FileIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-file-to-recent/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file unique identifier. | 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file unique identifier.

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-templates/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templatesRequestDto** | [**TemplatesRequestDto**](TemplatesRequestDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let templatesRequestDto = TemplatesRequestDto(fileIds: [123]) // TemplatesRequestDto |  (optional)

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-version-history/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file Id to change its version history. | 
 **changeHistory** | [**ChangeHistory**](ChangeHistory.md) | The parameters for changing version history. | 

### Return type

[**FileIntegerArrayWrapper**](FileIntegerArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file Id to change its version history.
let changeHistory = ChangeHistory(version: 123, continueVersion: true) // ChangeHistory | The parameters for changing version history.

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
let checkFillFormDraft = CheckFillFormDraft(version: 123, action: "action_example", requestView: true, requestEmbedded: true) // CheckFillFormDraft | The parameters for checking the form draft filling.

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/copy-file-as/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID to copy. | 
 **copyAsJsonElement** | [**CopyAsJsonElement**](CopyAsJsonElement.md) | The parameters for copying a file. | 

### Return type

[**FileEntryBaseWrapper**](FileEntryBaseWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID to copy.
let copyAsJsonElement = CopyAsJsonElement(destTitle: "destTitle_example", destFolderId: CopyAsJsonElement_destFolderId(), enableExternalExt: true, password: "password_example", toForm: true) // CopyAsJsonElement | The parameters for copying a file.

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
    open class func createEditSession(fileId: Int, fileSize: Int64? = nil, completion: @escaping (_ data: ObjectWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-edit-session/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID. | 
 **fileSize** | **Int64** | The file size in bytes. | [optional] 

### Return type

[**ObjectWrapper**](ObjectWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID.
let fileSize = 987 // Int64 | The file size in bytes. (optional)

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** | The folder ID for the file creation. | 
 **createFileJsonElement** | [**CreateFileJsonElement**](CreateFileJsonElement.md) | The parameters for creating a file. | 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | The folder ID for the file creation.
let createFileJsonElement = CreateFileJsonElement(title: "title_example", templateId: CreateFileJsonElement_templateId(), enableExternalExt: true, formId: 123) // CreateFileJsonElement | The parameters for creating a file.

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file-in-my-documents/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createFileJsonElement** | [**CreateFileJsonElement**](CreateFileJsonElement.md) |  | [optional] 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createFileJsonElement = CreateFileJsonElement(title: "title_example", templateId: CreateFileJsonElement_templateId(), enableExternalExt: true, formId: 123) // CreateFileJsonElement |  (optional)

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file-primary-external-link/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The file ID. | 
 **fileLinkRequest** | [**FileLinkRequest**](FileLinkRequest.md) | The file external link parameters. | 

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The file ID.
let fileLinkRequest = FileLinkRequest(linkId: 123, access: FileShare(), expirationDate: ApiDateTime(utcTime: Date(), timeZoneOffset: "timeZoneOffset_example"), title: "title_example", _internal: true, primary: true, denyDownload: true, password: "password_example") // FileLinkRequest | The file external link parameters.

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-html-file/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** | The folder ID to create the text or HTML file. | 
 **createTextOrHtmlFile** | [**CreateTextOrHtmlFile**](CreateTextOrHtmlFile.md) | The parameters for creating an HTML or text file. | 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | The folder ID to create the text or HTML file.
let createTextOrHtmlFile = CreateTextOrHtmlFile(title: "title_example", content: "content_example", createNewIfExist: true) // CreateTextOrHtmlFile | The parameters for creating an HTML or text file.

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-html-file-in-my-documents/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTextOrHtmlFile** | [**CreateTextOrHtmlFile**](CreateTextOrHtmlFile.md) |  | [optional] 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createTextOrHtmlFile = CreateTextOrHtmlFile(title: "title_example", content: "content_example", createNewIfExist: true) // CreateTextOrHtmlFile |  (optional)

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-text-file/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** | The folder ID to create the text or HTML file. | 
 **createTextOrHtmlFile** | [**CreateTextOrHtmlFile**](CreateTextOrHtmlFile.md) | The parameters for creating an HTML or text file. | 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | The folder ID to create the text or HTML file.
let createTextOrHtmlFile = CreateTextOrHtmlFile(title: "title_example", content: "content_example", createNewIfExist: true) // CreateTextOrHtmlFile | The parameters for creating an HTML or text file.

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-text-file-in-my-documents/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTextOrHtmlFile** | [**CreateTextOrHtmlFile**](CreateTextOrHtmlFile.md) |  | [optional] 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createTextOrHtmlFile = CreateTextOrHtmlFile(title: "title_example", content: "content_example", createNewIfExist: true) // CreateTextOrHtmlFile |  (optional)

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

let baseBatchRequestDto = BaseBatchRequestDto(returnSingleOperation: true, folderIds: [BaseBatchRequestDto_allOf_folderIds()], fileIds: [BaseBatchRequestDto_allOf_fileIds()]) // BaseBatchRequestDto |  (optional)

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
    open class func deleteFile(fileId: Int, delete: Delete, completion: @escaping (_ data: FileOperationArrayWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-file/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID to delete. | 
 **delete** | [**Delete**](Delete.md) | The parameters for deleting a file. | 

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID to delete.
let delete = Delete(deleteAfter: true, immediately: true) // Delete | The parameters for deleting a file.

FilesFilesAPIApi.deleteFile(fileId: fileId, delete: delete) { (response, error) in
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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-recent/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **baseBatchRequestDto** | [**BaseBatchRequestDto**](BaseBatchRequestDto.md) |  | [optional] 

### Return type

[**NoContentResultWrapper**](NoContentResultWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let baseBatchRequestDto = BaseBatchRequestDto(returnSingleOperation: true, folderIds: [BaseBatchRequestDto_allOf_folderIds()], fileIds: [BaseBatchRequestDto_allOf_fileIds()]) // BaseBatchRequestDto |  (optional)

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-templates/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**[Int]**](Int.md) | The file IDs. | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let requestBody = [123] // [Int] | The file IDs. (optional)

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

# **getAllFormRoles**
```swift
    open class func getAllFormRoles(fileId: Int, completion: @escaping (_ data: FormRoleArrayWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-form-roles/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file unique identifier. | 

### Return type

[**FormRoleArrayWrapper**](FormRoleArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file unique identifier.

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

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID of the history request.
let fromDate = ApiDateTime(utcTime: Date(), timeZoneOffset: "timeZoneOffset_example") // ApiDateTime | The start date of the history. (optional)
let toDate = ApiDateTime(utcTime: Date(), timeZoneOffset: "timeZoneOffset_example") // ApiDateTime | The end date of the history. (optional)
let count = 987 // Int | The number of history entries to retrieve for the file log. (optional)
let startIndex = 987 // Int | The starting index for retrieving a subset of file history entries. (optional)

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

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The file unique identifier.
let count = 987 // Int | The number of items to retrieve in the request. (optional)
let startIndex = 987 // Int | The starting index for the query results. (optional)

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

# **getPresignedFileUri**
```swift
    open class func getPresignedFileUri(fileId: Int, completion: @escaping (_ data: FileLinkWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-presigned-file-uri/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file unique identifier. | 

### Return type

[**FileLinkWrapper**](FileLinkWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file unique identifier.

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-presigned-uri/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file unique identifier. | 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file unique identifier.

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-protected-file-users/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file unique identifier. | 

### Return type

[**MentionWrapperArrayWrapper**](MentionWrapperArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file unique identifier.

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-reference-data/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getReferenceDataDtoInteger** | [**GetReferenceDataDtoInteger**](GetReferenceDataDtoInteger.md) |  | [optional] 

### Return type

[**FileReferenceWrapper**](FileReferenceWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let getReferenceDataDtoInteger = GetReferenceDataDtoInteger(fileKey: "fileKey_example", instanceId: "instanceId_example", sourceFileId: 123, path: "path_example", link: "link_example") // GetReferenceDataDtoInteger |  (optional)

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/is-form-pdf/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file unique identifier. | 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file unique identifier.

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/lock-file/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID for locking. | 
 **lockFileParameters** | [**LockFileParameters**](LockFileParameters.md) | The parameters for locking a file. | 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID for locking.
let lockFileParameters = LockFileParameters(lockFile: true) // LockFileParameters | The parameters for locking a file.

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/manage-form-filling/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **String** |  | 
 **manageFormFillingDtoInteger** | [**ManageFormFillingDtoInteger**](ManageFormFillingDtoInteger.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = "fileId_example" // String | 
let manageFormFillingDtoInteger = ManageFormFillingDtoInteger(formId: 123, action: FormFillingManageAction()) // ManageFormFillingDtoInteger |  (optional)

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
let view = true // Bool | Specifies if the document will be opened for viewing only or not. (optional)
let editorType = EditorType() // EditorType | The editor type to open the file. (optional)
let edit = true // Bool | Specifies if the document is opened in the editing mode or not. (optional)
let fill = true // Bool | Specifies if the document is opened in the form-filling mode or not. (optional)

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
    open class func saveEditingFileFromForm(fileId: Int, fileExtension: String? = nil, downloadUri: String? = nil, file: URL? = nil, forcesave: Bool? = nil, completion: @escaping (_ data: FileIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-editing-file-from-form/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The editing file ID from the request. | 
 **fileExtension** | **String** | The editing file extension from the request. | [optional] 
 **downloadUri** | **String** | The URI to download the editing file. | [optional] 
 **file** | **URL** | The request file stream. | [optional] 
 **forcesave** | **Bool** | Specifies whether to force save the file or not. | [optional] 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The editing file ID from the request.
let fileExtension = "fileExtension_example" // String | The editing file extension from the request. (optional)
let downloadUri = "downloadUri_example" // String | The URI to download the editing file. (optional)
let file = URL(string: "https://example.com")! // URL | The request file stream. (optional)
let forcesave = true // Bool | Specifies whether to force save the file or not. (optional)

FilesFilesAPIApi.saveEditingFileFromForm(fileId: fileId, fileExtension: fileExtension, downloadUri: downloadUri, file: file, forcesave: forcesave) { (response, error) in
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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-file-as-pdf/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The file ID to save as PDF. | 
 **saveAsPdfInteger** | [**SaveAsPdfInteger**](SaveAsPdfInteger.md) | The parameters for saving the file as PDF. | 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The file ID to save as PDF.
let saveAsPdfInteger = SaveAsPdfInteger(folderId: 123, title: "title_example") // SaveAsPdfInteger | The parameters for saving the file as PDF.

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-form-role-mapping/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **String** |  | 
 **saveFormRoleMappingDtoInteger** | [**SaveFormRoleMappingDtoInteger**](SaveFormRoleMappingDtoInteger.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = "fileId_example" // String | 
let saveFormRoleMappingDtoInteger = SaveFormRoleMappingDtoInteger(formId: 123, roles: [FormRole(roomId: 123, roleName: "roleName_example", roleColor: "roleColor_example", userId: 123, sequence: 123, submitted: true, openedAt: Date(), submissionDate: Date())]) // SaveFormRoleMappingDtoInteger |  (optional)

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-custom-filter-tag/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID. | 
 **customFilterParameters** | [**CustomFilterParameters**](CustomFilterParameters.md) | The parameters for setting the Custom Filter editing mode. | 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID.
let customFilterParameters = CustomFilterParameters(enabled: true) // CustomFilterParameters | The parameters for setting the Custom Filter editing mode.

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-external-link/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The file ID. | 
 **fileLinkRequest** | [**FileLinkRequest**](FileLinkRequest.md) | The file external link parameters. | 

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The file ID.
let fileLinkRequest = FileLinkRequest(linkId: 123, access: FileShare(), expirationDate: ApiDateTime(utcTime: Date(), timeZoneOffset: "timeZoneOffset_example"), title: "title_example", _internal: true, primary: true, denyDownload: true, password: "password_example") // FileLinkRequest | The file external link parameters.

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-order/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file unique identifier. | 
 **orderRequestDto** | [**OrderRequestDto**](OrderRequestDto.md) | The file order information. | [optional] 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file unique identifier.
let orderRequestDto = OrderRequestDto(order: 123) // OrderRequestDto | The file order information. (optional)

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-files-order/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordersRequestDtoInteger** | [**OrdersRequestDtoInteger**](OrdersRequestDtoInteger.md) |  | [optional] 

### Return type

[**FileEntryIntegerArrayWrapper**](FileEntryIntegerArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ordersRequestDtoInteger = OrdersRequestDtoInteger(items: [OrdersItemRequestDtoInteger(entryId: 123, entryType: FileEntryType(), order: 123)]) // OrdersRequestDtoInteger |  (optional)

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
let startEdit = StartEdit(editingAlone: true) // StartEdit | The file parameters to start editing.

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-filling-file/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID to start filling. | 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID to start filling.

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/toggle-file-favorite/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID. | 
 **favorite** | **Bool** | Specifies if the file is marked as favorite or not. | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID.
let favorite = true // Bool | Specifies if the file is marked as favorite or not. (optional)

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

