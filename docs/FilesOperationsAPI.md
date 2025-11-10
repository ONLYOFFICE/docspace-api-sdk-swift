# FilesOperationsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addFavorites**](FilesOperationsAPI.md#addfavorites) | **POST** /api/2.0/files/favorites | 
[**bulkDownload**](FilesOperationsAPI.md#bulkdownload) | **PUT** /api/2.0/files/fileops/bulkdownload | 
[**checkConversionStatus**](FilesOperationsAPI.md#checkconversionstatus) | **GET** /api/2.0/files/file/{fileId}/checkconversion | 
[**checkMoveOrCopyBatchItems**](FilesOperationsAPI.md#checkmoveorcopybatchitems) | **GET** /api/2.0/files/fileops/move | 
[**checkMoveOrCopyDestFolder**](FilesOperationsAPI.md#checkmoveorcopydestfolder) | **GET** /api/2.0/files/fileops/checkdestfolder | 
[**copyBatchItems**](FilesOperationsAPI.md#copybatchitems) | **PUT** /api/2.0/files/fileops/copy | 
[**createUploadSession**](FilesOperationsAPI.md#createuploadsession) | **POST** /api/2.0/files/{folderId}/upload/create_session | 
[**deleteBatchItems**](FilesOperationsAPI.md#deletebatchitems) | **PUT** /api/2.0/files/fileops/delete | 
[**deleteFavoritesFromBody**](FilesOperationsAPI.md#deletefavoritesfrombody) | **DELETE** /api/2.0/files/favorites | 
[**deleteFileVersions**](FilesOperationsAPI.md#deletefileversions) | **PUT** /api/2.0/files/fileops/deleteversion | 
[**duplicateBatchItems**](FilesOperationsAPI.md#duplicatebatchitems) | **PUT** /api/2.0/files/fileops/duplicate | 
[**emptyTrash**](FilesOperationsAPI.md#emptytrash) | **PUT** /api/2.0/files/fileops/emptytrash | 
[**getOperationStatuses**](FilesOperationsAPI.md#getoperationstatuses) | **GET** /api/2.0/files/fileops | 
[**getOperationStatusesByType**](FilesOperationsAPI.md#getoperationstatusesbytype) | **GET** /api/2.0/files/fileops/{operationType} | 
[**markAsRead**](FilesOperationsAPI.md#markasread) | **PUT** /api/2.0/files/fileops/markasread | 
[**moveBatchItems**](FilesOperationsAPI.md#movebatchitems) | **PUT** /api/2.0/files/fileops/move | 
[**startFileConversion**](FilesOperationsAPI.md#startfileconversion) | **PUT** /api/2.0/files/file/{fileId}/checkconversion | 
[**terminateTasks**](FilesOperationsAPI.md#terminatetasks) | **PUT** /api/2.0/files/fileops/terminate/{id} | 
[**updateFileComment**](FilesOperationsAPI.md#updatefilecomment) | **PUT** /api/2.0/files/file/{fileId}/comment | 


# **addFavorites**
```swift
    open class func addFavorites(baseBatchRequestDto: BaseBatchRequestDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-favorites/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **baseBatchRequestDto** | [**BaseBatchRequestDto**](BaseBatchRequestDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let baseBatchRequestDto = BaseBatchRequestDto(returnSingleOperation: true, folderIds: [BaseBatchRequestDto_allOf_folderIds()], fileIds: [BaseBatchRequestDto_allOf_fileIds()]) // BaseBatchRequestDto |  (optional)

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-conversion-status/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID to check conversion status. | 
 **start** | **Bool** | Specifies whether a conversion operation is started or not. | [optional] 

### Return type

[**ConversationResultArrayWrapper**](ConversationResultArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID to check conversion status.
let start = true // Bool | Specifies whether a conversion operation is started or not. (optional)

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-move-or-copy-batch-items/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inDto** | [**BatchRequestDto**](.md) | The request parameters for copying/moving files. | [optional] 

### Return type

[**FileEntryBaseArrayWrapper**](FileEntryBaseArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inDto = BatchRequestDto(returnSingleOperation: true, folderIds: [BatchRequestDto_allOf_folderIds()], fileIds: [BatchRequestDto_allOf_fileIds()], destFolderId: BatchRequestDto_allOf_destFolderId(), conflictResolveType: FileConflictResolveType(), deleteAfter: true, content: true, toFillOut: true) // BatchRequestDto | The request parameters for copying/moving files. (optional)

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-move-or-copy-dest-folder/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inDto** | [**BatchRequestDto**](.md) | The request parameters for copying/moving files. | [optional] 

### Return type

[**CheckDestFolderWrapper**](CheckDestFolderWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inDto = BatchRequestDto(returnSingleOperation: true, folderIds: [BatchRequestDto_allOf_folderIds()], fileIds: [BatchRequestDto_allOf_fileIds()], destFolderId: BatchRequestDto_allOf_destFolderId(), conflictResolveType: FileConflictResolveType(), deleteAfter: true, content: true, toFillOut: true) // BatchRequestDto | The request parameters for copying/moving files. (optional)

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/copy-batch-items/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batchRequestDto** | [**BatchRequestDto**](BatchRequestDto.md) |  | [optional] 

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let batchRequestDto = BatchRequestDto(returnSingleOperation: true, folderIds: [BatchRequestDto_allOf_folderIds()], fileIds: [BatchRequestDto_allOf_fileIds()], destFolderId: BatchRequestDto_allOf_destFolderId(), conflictResolveType: FileConflictResolveType(), deleteAfter: true, content: true, toFillOut: true) // BatchRequestDto |  (optional)

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** | The session folder ID. | 
 **sessionRequest** | [**SessionRequest**](SessionRequest.md) | The session parameters. | 

### Return type

[**ObjectWrapper**](ObjectWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | The session folder ID.
let sessionRequest = SessionRequest(fileName: "fileName_example", fileSize: 123, relativePath: "relativePath_example", createOn: ApiDateTime(utcTime: Date(), timeZoneOffset: "timeZoneOffset_example"), encrypted: true, createNewIfExist: true) // SessionRequest | The session parameters.

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-batch-items/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteBatchRequestDto** | [**DeleteBatchRequestDto**](DeleteBatchRequestDto.md) |  | [optional] 

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let deleteBatchRequestDto = DeleteBatchRequestDto(returnSingleOperation: true, folderIds: [DeleteBatchRequestDto_allOf_folderIds()], fileIds: [DeleteBatchRequestDto_allOf_fileIds()], deleteAfter: true, immediately: true) // DeleteBatchRequestDto |  (optional)

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-favorites-from-body/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **baseBatchRequestDto** | [**BaseBatchRequestDto**](BaseBatchRequestDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let baseBatchRequestDto = BaseBatchRequestDto(returnSingleOperation: true, folderIds: [BaseBatchRequestDto_allOf_folderIds()], fileIds: [BaseBatchRequestDto_allOf_fileIds()]) // BaseBatchRequestDto |  (optional)

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-file-versions/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteVersionBatchRequestDto** | [**DeleteVersionBatchRequestDto**](DeleteVersionBatchRequestDto.md) |  | [optional] 

### Return type

[**FileOperationWrapper**](FileOperationWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let deleteVersionBatchRequestDto = DeleteVersionBatchRequestDto(returnSingleOperation: true, deleteAfter: true, fileId: 123, versions: [123]) // DeleteVersionBatchRequestDto |  (optional)

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/duplicate-batch-items/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **duplicateRequestDto** | [**DuplicateRequestDto**](DuplicateRequestDto.md) |  | [optional] 

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let duplicateRequestDto = DuplicateRequestDto(returnSingleOperation: true, folderIds: [DuplicateRequestDto_allOf_folderIds()], fileIds: [DuplicateRequestDto_allOf_fileIds()]) // DuplicateRequestDto |  (optional)

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/empty-trash/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **single** | **Bool** | Specifies whether to return only the current operation | [optional] 

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let single = true // Bool | Specifies whether to return only the current operation (optional)

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/mark-as-read/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **baseBatchRequestDto** | [**BaseBatchRequestDto**](BaseBatchRequestDto.md) |  | [optional] 

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let baseBatchRequestDto = BaseBatchRequestDto(returnSingleOperation: true, folderIds: [BaseBatchRequestDto_allOf_folderIds()], fileIds: [BaseBatchRequestDto_allOf_fileIds()]) // BaseBatchRequestDto |  (optional)

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/move-batch-items/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batchRequestDto** | [**BatchRequestDto**](BatchRequestDto.md) |  | [optional] 

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let batchRequestDto = BatchRequestDto(returnSingleOperation: true, folderIds: [BatchRequestDto_allOf_folderIds()], fileIds: [BatchRequestDto_allOf_fileIds()], destFolderId: BatchRequestDto_allOf_destFolderId(), conflictResolveType: FileConflictResolveType(), deleteAfter: true, content: true, toFillOut: true) // BatchRequestDto |  (optional)

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-file-conversion/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID to start conversion proccess. | 
 **checkConversionRequestDtoInteger** | [**CheckConversionRequestDtoInteger**](CheckConversionRequestDtoInteger.md) | The parameters for checking file conversion. | [optional] 

### Return type

[**ConversationResultArrayWrapper**](ConversationResultArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID to start conversion proccess.
let checkConversionRequestDtoInteger = CheckConversionRequestDtoInteger(fileId: 123, sync: true, startConvert: true, version: 123, password: "password_example", outputType: "outputType_example", createNewIfExist: true) // CheckConversionRequestDtoInteger | The parameters for checking file conversion. (optional)

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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file-comment/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID where the comment is located. | 
 **updateComment** | [**UpdateComment**](UpdateComment.md) | The parameters for updating a comment. | 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID where the comment is located.
let updateComment = UpdateComment(version: 123, comment: "comment_example") // UpdateComment | The parameters for updating a comment.

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

