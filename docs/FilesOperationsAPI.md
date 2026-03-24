# FilesOperationsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addFavorites**](FilesOperationsAPI.md#addfavorites) | **POST** /api/2.0/files/favorites | Add favorite files and folders
[**bulkDownload**](FilesOperationsAPI.md#bulkdownload) | **PUT** /api/2.0/files/fileops/bulkdownload | Bulk download
[**checkConversionStatus**](FilesOperationsAPI.md#checkconversionstatus) | **GET** /api/2.0/files/file/{fileId}/checkconversion | Get conversion status
[**checkMoveOrCopyBatchItems**](FilesOperationsAPI.md#checkmoveorcopybatchitems) | **GET** /api/2.0/files/fileops/move | Move or copy files to a folder
[**checkMoveOrCopyDestFolder**](FilesOperationsAPI.md#checkmoveorcopydestfolder) | **GET** /api/2.0/files/fileops/checkdestfolder | Check for moving or copying files to a folder
[**copyBatchItems**](FilesOperationsAPI.md#copybatchitems) | **PUT** /api/2.0/files/fileops/copy | Copy to the folder
[**createUploadSession**](FilesOperationsAPI.md#createuploadsession) | **POST** /api/2.0/files/{folderId}/upload/create_session | Chunked upload
[**deleteBatchItems**](FilesOperationsAPI.md#deletebatchitems) | **PUT** /api/2.0/files/fileops/delete | Delete files and folders
[**deleteFavoritesFromBody**](FilesOperationsAPI.md#deletefavoritesfrombody) | **DELETE** /api/2.0/files/favorites | Delete favorite files and folders (using body parameters)
[**deleteFileVersions**](FilesOperationsAPI.md#deletefileversions) | **PUT** /api/2.0/files/fileops/deleteversion | Delete file versions
[**duplicateBatchItems**](FilesOperationsAPI.md#duplicatebatchitems) | **PUT** /api/2.0/files/fileops/duplicate | Duplicate files and folders
[**emptyTrash**](FilesOperationsAPI.md#emptytrash) | **PUT** /api/2.0/files/fileops/emptytrash | Empty the Trash folder
[**getOperationStatuses**](FilesOperationsAPI.md#getoperationstatuses) | **GET** /api/2.0/files/fileops | Get active file operations
[**getOperationStatusesByType**](FilesOperationsAPI.md#getoperationstatusesbytype) | **GET** /api/2.0/files/fileops/{operationType} | Get file operation statuses
[**markAsRead**](FilesOperationsAPI.md#markasread) | **PUT** /api/2.0/files/fileops/markasread | Mark as read
[**moveBatchItems**](FilesOperationsAPI.md#movebatchitems) | **PUT** /api/2.0/files/fileops/move | Move or copy to a folder
[**startFileConversion**](FilesOperationsAPI.md#startfileconversion) | **PUT** /api/2.0/files/file/{fileId}/checkconversion | Start file conversion
[**terminateTasks**](FilesOperationsAPI.md#terminatetasks) | **PUT** /api/2.0/files/fileops/terminate/{id} | Finish active operations
[**updateFileComment**](FilesOperationsAPI.md#updatefilecomment) | **PUT** /api/2.0/files/file/{fileId}/comment | Update a comment


# **addFavorites**
```swift
    open class func addFavorites(baseBatchRequestDto: BaseBatchRequestDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Adds files and folders with the IDs specified in the request to the favorite list.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-favorites/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **baseBatchRequestDto** | [**BaseBatchRequestDto**](BaseBatchRequestDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let baseBatchRequestDto = BaseBatchRequestDto(returnSingleOperation: true, folderIds: [BaseBatchRequestDto_allOf_folderIds()], fileIds: [BaseBatchRequestDto_allOf_fileIds()]) // BaseBatchRequestDto |  (optional)

// Add favorite files and folders
FilesOperationsAPIApi.addFavorites(baseBatchRequestDto: baseBatchRequestDto) { (response, error) in
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

# **bulkDownload**
```swift
    open class func bulkDownload(downloadRequestDto: DownloadRequestDto? = nil, completion: @escaping (_ data: FileOperationArrayWrapper?, _ error: Error?) -> Void)
```

Starts the download process of files and folders with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/bulk-download/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **downloadRequestDto** | [**DownloadRequestDto**](DownloadRequestDto.md) |  | [optional] 

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let downloadRequestDto = DownloadRequestDto(returnSingleOperation: true, folderIds: [DownloadRequestDto_allOf_folderIds()], fileIds: [DownloadRequestDto_allOf_fileIds()], fileConvertIds: [DownloadRequestItemDto(key: DownloadRequestItemDto_key(), value: "value_example", password: "password_example")]) // DownloadRequestDto |  (optional)

// Bulk download
FilesOperationsAPIApi.bulkDownload(downloadRequestDto: downloadRequestDto) { (response, error) in
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

# **checkConversionStatus**
```swift
    open class func checkConversionStatus(fileId: Int, start: Bool? = nil, completion: @escaping (_ data: ConversationResultArrayWrapper?, _ error: Error?) -> Void)
```

Checks the conversion status of a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-conversion-status/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID to check conversion status. | 
 **start** | **Bool** | Specifies whether a conversion operation is started or not. | [optional] 

### Return type

[**ConversationResultArrayWrapper**](ConversationResultArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID to check conversion status.
let start = true // Bool | Specifies whether a conversion operation is started or not. (optional)

// Get conversion status
FilesOperationsAPIApi.checkConversionStatus(fileId: fileId, start: start) { (response, error) in
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

# **checkMoveOrCopyBatchItems**
```swift
    open class func checkMoveOrCopyBatchItems(inDto: BatchRequestDto? = nil, completion: @escaping (_ data: FileEntryBaseArrayWrapper?, _ error: Error?) -> Void)
```

Checks if files or folders can be moved or copied to the specified folder, moves or copies them, and returns their information.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-move-or-copy-batch-items/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inDto** | [**BatchRequestDto**](.md) | The request parameters for copying/moving files. | [optional] 

### Return type

[**FileEntryBaseArrayWrapper**](FileEntryBaseArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inDto = BatchRequestDto(returnSingleOperation: true, folderIds: [BatchRequestDto_allOf_folderIds()], fileIds: [BatchRequestDto_allOf_fileIds()], destFolderId: BatchRequestDto_allOf_destFolderId(), conflictResolveType: FileConflictResolveType(), deleteAfter: true, content: true, toFillOut: true) // BatchRequestDto | The request parameters for copying/moving files. (optional)

// Move or copy files to a folder
FilesOperationsAPIApi.checkMoveOrCopyBatchItems(inDto: inDto) { (response, error) in
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

# **checkMoveOrCopyDestFolder**
```swift
    open class func checkMoveOrCopyDestFolder(inDto: BatchRequestDto? = nil, completion: @escaping (_ data: CheckDestFolderWrapper?, _ error: Error?) -> Void)
```

Checks if files can be moved or copied to the specified folder.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-move-or-copy-dest-folder/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inDto** | [**BatchRequestDto**](.md) | The request parameters for copying/moving files. | [optional] 

### Return type

[**CheckDestFolderWrapper**](CheckDestFolderWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inDto = BatchRequestDto(returnSingleOperation: true, folderIds: [BatchRequestDto_allOf_folderIds()], fileIds: [BatchRequestDto_allOf_fileIds()], destFolderId: BatchRequestDto_allOf_destFolderId(), conflictResolveType: FileConflictResolveType(), deleteAfter: true, content: true, toFillOut: true) // BatchRequestDto | The request parameters for copying/moving files. (optional)

// Check for moving or copying files to a folder
FilesOperationsAPIApi.checkMoveOrCopyDestFolder(inDto: inDto) { (response, error) in
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

# **copyBatchItems**
```swift
    open class func copyBatchItems(batchRequestDto: BatchRequestDto? = nil, completion: @escaping (_ data: FileOperationArrayWrapper?, _ error: Error?) -> Void)
```

Copies all the selected files and folders to the folder with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/copy-batch-items/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batchRequestDto** | [**BatchRequestDto**](BatchRequestDto.md) |  | [optional] 

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let batchRequestDto = BatchRequestDto(returnSingleOperation: true, folderIds: [BatchRequestDto_allOf_folderIds()], fileIds: [BatchRequestDto_allOf_fileIds()], destFolderId: BatchRequestDto_allOf_destFolderId(), conflictResolveType: FileConflictResolveType(), deleteAfter: true, content: true, toFillOut: true) // BatchRequestDto |  (optional)

// Copy to the folder
FilesOperationsAPIApi.copyBatchItems(batchRequestDto: batchRequestDto) { (response, error) in
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

# **createUploadSession**
```swift
    open class func createUploadSession(folderId: Int, sessionRequest: SessionRequest, completion: @escaping (_ data: ObjectWrapper?, _ error: Error?) -> Void)
```

Creates the session to upload large files in multiple chunks to the folder with the ID specified in the request.   **Note**: Each chunk can have different length but the length should be multiple of <b>512</b> and greater or equal to <b>10 mb</b>. Last chunk can have any size.  After the initial response to the request with the <b>200 OK</b> status, you must get the <em>location</em> field value from the response. Send all your chunks to this location.  Each chunk must be sent in the exact order the chunks appear in the file.  After receiving each chunk, the server will respond with the current information about the upload session if no errors occurred.  When the number of bytes uploaded is equal to the number of bytes you sent in the initial request, the server responds with the <b>201 Created</b> status and sends you information about the uploaded file.  Information about created session which includes:  <ul>  <li><b>id:</b> unique ID of this upload session,</li>  <li><b>created:</b> UTC time when the session was created,</li>  <li><b>expired:</b> UTC time when the session will expire if no chunks are sent before that time,</li>  <li><b>location:</b> URL where you should send your next chunk,</li>  <li><b>bytes_uploaded:</b> number of bytes uploaded for the specific upload ID,</li>  <li><b>bytes_total:</b> total number of bytes which will be uploaded.</li>  </ul>

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** | The session folder ID. | 
 **sessionRequest** | [**SessionRequest**](SessionRequest.md) | The session parameters. | 

### Return type

[**ObjectWrapper**](ObjectWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | The session folder ID.
let sessionRequest = SessionRequest(fileName: "fileName_example", fileSize: 123, relativePath: "relativePath_example", createOn: ApiDateTime(utcTime: Date(), timeZoneOffset: "timeZoneOffset_example"), encrypted: true, createNewIfExist: true) // SessionRequest | The session parameters.

// Chunked upload
FilesOperationsAPIApi.createUploadSession(folderId: folderId, sessionRequest: sessionRequest) { (response, error) in
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

# **deleteBatchItems**
```swift
    open class func deleteBatchItems(deleteBatchRequestDto: DeleteBatchRequestDto? = nil, completion: @escaping (_ data: FileOperationArrayWrapper?, _ error: Error?) -> Void)
```

Deletes the files and folders with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-batch-items/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteBatchRequestDto** | [**DeleteBatchRequestDto**](DeleteBatchRequestDto.md) |  | [optional] 

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let deleteBatchRequestDto = DeleteBatchRequestDto(returnSingleOperation: true, folderIds: [DeleteBatchRequestDto_allOf_folderIds()], fileIds: [DeleteBatchRequestDto_allOf_fileIds()], deleteAfter: true, immediately: true) // DeleteBatchRequestDto |  (optional)

// Delete files and folders
FilesOperationsAPIApi.deleteBatchItems(deleteBatchRequestDto: deleteBatchRequestDto) { (response, error) in
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

# **deleteFavoritesFromBody**
```swift
    open class func deleteFavoritesFromBody(baseBatchRequestDto: BaseBatchRequestDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Removes files and folders with the IDs specified in the request from the favorite list. This method uses the body parameters.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-favorites-from-body/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **baseBatchRequestDto** | [**BaseBatchRequestDto**](BaseBatchRequestDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let baseBatchRequestDto = BaseBatchRequestDto(returnSingleOperation: true, folderIds: [BaseBatchRequestDto_allOf_folderIds()], fileIds: [BaseBatchRequestDto_allOf_fileIds()]) // BaseBatchRequestDto |  (optional)

// Delete favorite files and folders (using body parameters)
FilesOperationsAPIApi.deleteFavoritesFromBody(baseBatchRequestDto: baseBatchRequestDto) { (response, error) in
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

# **deleteFileVersions**
```swift
    open class func deleteFileVersions(deleteVersionBatchRequestDto: DeleteVersionBatchRequestDto? = nil, completion: @escaping (_ data: FileOperationWrapper?, _ error: Error?) -> Void)
```

Deletes the file versions with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-file-versions/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteVersionBatchRequestDto** | [**DeleteVersionBatchRequestDto**](DeleteVersionBatchRequestDto.md) |  | [optional] 

### Return type

[**FileOperationWrapper**](FileOperationWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let deleteVersionBatchRequestDto = DeleteVersionBatchRequestDto(returnSingleOperation: true, deleteAfter: true, fileId: 123, versions: [123]) // DeleteVersionBatchRequestDto |  (optional)

// Delete file versions
FilesOperationsAPIApi.deleteFileVersions(deleteVersionBatchRequestDto: deleteVersionBatchRequestDto) { (response, error) in
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

# **duplicateBatchItems**
```swift
    open class func duplicateBatchItems(duplicateRequestDto: DuplicateRequestDto? = nil, completion: @escaping (_ data: FileOperationArrayWrapper?, _ error: Error?) -> Void)
```

Duplicates all the selected files and folders.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/duplicate-batch-items/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **duplicateRequestDto** | [**DuplicateRequestDto**](DuplicateRequestDto.md) |  | [optional] 

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let duplicateRequestDto = DuplicateRequestDto(returnSingleOperation: true, folderIds: [DuplicateRequestDto_allOf_folderIds()], fileIds: [DuplicateRequestDto_allOf_fileIds()]) // DuplicateRequestDto |  (optional)

// Duplicate files and folders
FilesOperationsAPIApi.duplicateBatchItems(duplicateRequestDto: duplicateRequestDto) { (response, error) in
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

# **emptyTrash**
```swift
    open class func emptyTrash(single: Bool? = nil, completion: @escaping (_ data: FileOperationArrayWrapper?, _ error: Error?) -> Void)
```

Deletes all the files and folders from the Trash folder.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/empty-trash/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **single** | **Bool** | Specifies whether to return only the current operation | [optional] 

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let single = true // Bool | Specifies whether to return only the current operation (optional)

// Empty the Trash folder
FilesOperationsAPIApi.emptyTrash(single: single) { (response, error) in
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

# **getOperationStatuses**
```swift
    open class func getOperationStatuses(id: String? = nil, completion: @escaping (_ data: FileOperationArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of all the active file operations.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-operation-statuses/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The ID of the file operation. | [optional] 

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the file operation. (optional)

// Get active file operations
FilesOperationsAPIApi.getOperationStatuses(id: id) { (response, error) in
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

# **getOperationStatusesByType**
```swift
    open class func getOperationStatusesByType(operationType: FileOperationType, id: String? = nil, completion: @escaping (_ data: FileOperationArrayWrapper?, _ error: Error?) -> Void)
```

Retrieves the statuses of operations filtered by the specified operation type.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-operation-statuses-by-type/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operationType** | [**FileOperationType**](.md) | Specifies the type of file operation to be retrieved. | 
 **id** | **String** | The ID of the file operation. | [optional] 

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let operationType = FileOperationType() // FileOperationType | Specifies the type of file operation to be retrieved.
let id = "id_example" // String | The ID of the file operation. (optional)

// Get file operation statuses
FilesOperationsAPIApi.getOperationStatusesByType(operationType: operationType, id: id) { (response, error) in
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

# **markAsRead**
```swift
    open class func markAsRead(baseBatchRequestDto: BaseBatchRequestDto? = nil, completion: @escaping (_ data: FileOperationArrayWrapper?, _ error: Error?) -> Void)
```

Marks the files and folders with the IDs specified in the request as read.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/mark-as-read/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **baseBatchRequestDto** | [**BaseBatchRequestDto**](BaseBatchRequestDto.md) |  | [optional] 

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let baseBatchRequestDto = BaseBatchRequestDto(returnSingleOperation: true, folderIds: [BaseBatchRequestDto_allOf_folderIds()], fileIds: [BaseBatchRequestDto_allOf_fileIds()]) // BaseBatchRequestDto |  (optional)

// Mark as read
FilesOperationsAPIApi.markAsRead(baseBatchRequestDto: baseBatchRequestDto) { (response, error) in
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

# **moveBatchItems**
```swift
    open class func moveBatchItems(batchRequestDto: BatchRequestDto? = nil, completion: @escaping (_ data: FileOperationArrayWrapper?, _ error: Error?) -> Void)
```

Moves or copies all the selected files and folders to the folder with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/move-batch-items/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batchRequestDto** | [**BatchRequestDto**](BatchRequestDto.md) |  | [optional] 

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let batchRequestDto = BatchRequestDto(returnSingleOperation: true, folderIds: [BatchRequestDto_allOf_folderIds()], fileIds: [BatchRequestDto_allOf_fileIds()], destFolderId: BatchRequestDto_allOf_destFolderId(), conflictResolveType: FileConflictResolveType(), deleteAfter: true, content: true, toFillOut: true) // BatchRequestDto |  (optional)

// Move or copy to a folder
FilesOperationsAPIApi.moveBatchItems(batchRequestDto: batchRequestDto) { (response, error) in
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

# **startFileConversion**
```swift
    open class func startFileConversion(fileId: Int, checkConversionRequestDtoInteger: CheckConversionRequestDtoInteger? = nil, completion: @escaping (_ data: ConversationResultArrayWrapper?, _ error: Error?) -> Void)
```

Starts a conversion operation of a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-file-conversion/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID to start conversion proccess. | 
 **checkConversionRequestDtoInteger** | [**CheckConversionRequestDtoInteger**](CheckConversionRequestDtoInteger.md) | The parameters for checking file conversion. | [optional] 

### Return type

[**ConversationResultArrayWrapper**](ConversationResultArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID to start conversion proccess.
let checkConversionRequestDtoInteger = CheckConversionRequestDtoInteger(fileId: 123, sync: true, startConvert: true, version: 123, password: "password_example", outputType: "outputType_example", createNewIfExist: true) // CheckConversionRequestDtoInteger | The parameters for checking file conversion. (optional)

// Start file conversion
FilesOperationsAPIApi.startFileConversion(fileId: fileId, checkConversionRequestDtoInteger: checkConversionRequestDtoInteger) { (response, error) in
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

# **terminateTasks**
```swift
    open class func terminateTasks(id: String, completion: @escaping (_ data: FileOperationArrayWrapper?, _ error: Error?) -> Void)
```

Finishes an operation with the ID specified in the request or all the active operations.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-tasks/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The operation unique identifier. | 

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The operation unique identifier.

// Finish active operations
FilesOperationsAPIApi.terminateTasks(id: id) { (response, error) in
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

# **updateFileComment**
```swift
    open class func updateFileComment(fileId: Int, updateComment: UpdateComment, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Updates a comment in a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file-comment/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID where the comment is located. | 
 **updateComment** | [**UpdateComment**](UpdateComment.md) | The parameters for updating a comment. | 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID where the comment is located.
let updateComment = UpdateComment(version: 123, comment: "comment_example") // UpdateComment | The parameters for updating a comment.

// Update a comment
FilesOperationsAPIApi.updateFileComment(fileId: fileId, updateComment: updateComment) { (response, error) in
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

