# FilesFoldersAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkUpload**](FilesFoldersAPI.md#checkupload) | **POST** /api/2.0/files/{folderId}/upload/check | 
[**createFolder**](FilesFoldersAPI.md#createfolder) | **POST** /api/2.0/files/folder/{folderId} | 
[**createFolderPrimaryExternalLink**](FilesFoldersAPI.md#createfolderprimaryexternallink) | **POST** /api/2.0/files/folder/{id}/link | 
[**createReportFolderHistory**](FilesFoldersAPI.md#createreportfolderhistory) | **POST** /api/2.0/files/folder/{folderId}/log/report | 
[**deleteFolder**](FilesFoldersAPI.md#deletefolder) | **DELETE** /api/2.0/files/folder/{folderId} | 
[**getFavoritesFolder**](FilesFoldersAPI.md#getfavoritesfolder) | **GET** /api/2.0/files/@favorites | 
[**getFilesUsedSpace**](FilesFoldersAPI.md#getfilesusedspace) | **GET** /api/2.0/files/filesusedspace | 
[**getFolder**](FilesFoldersAPI.md#getfolder) | **GET** /api/2.0/files/{folderId}/formfilter | 
[**getFolderByFolderId**](FilesFoldersAPI.md#getfolderbyfolderid) | **GET** /api/2.0/files/{folderId} | 
[**getFolderHistory**](FilesFoldersAPI.md#getfolderhistory) | **GET** /api/2.0/files/folder/{folderId}/log | 
[**getFolderInfo**](FilesFoldersAPI.md#getfolderinfo) | **GET** /api/2.0/files/folder/{folderId} | 
[**getFolderLinks**](FilesFoldersAPI.md#getfolderlinks) | **GET** /api/2.0/files/folder/{id}/links | 
[**getFolderPath**](FilesFoldersAPI.md#getfolderpath) | **GET** /api/2.0/files/folder/{folderId}/path | 
[**getFolderPrimaryExternalLink**](FilesFoldersAPI.md#getfolderprimaryexternallink) | **GET** /api/2.0/files/folder/{id}/link | 
[**getFolderRecent**](FilesFoldersAPI.md#getfolderrecent) | **GET** /api/2.0/files/recent | 
[**getFolders**](FilesFoldersAPI.md#getfolders) | **GET** /api/2.0/files/{folderId}/subfolders | 
[**getMyFolder**](FilesFoldersAPI.md#getmyfolder) | **GET** /api/2.0/files/@my | 
[**getNewFolderItems**](FilesFoldersAPI.md#getnewfolderitems) | **GET** /api/2.0/files/{folderId}/news | 
[**getPrivacyFolder**](FilesFoldersAPI.md#getprivacyfolder) | **GET** /api/2.0/files/@privacy | 
[**getRecentFolder**](FilesFoldersAPI.md#getrecentfolder) | **GET** /api/2.0/files/@recent | 
[**getRootFolders**](FilesFoldersAPI.md#getrootfolders) | **GET** /api/2.0/files/@root | 
[**getTrashFolder**](FilesFoldersAPI.md#gettrashfolder) | **GET** /api/2.0/files/@trash | 
[**insertFile**](FilesFoldersAPI.md#insertfile) | **POST** /api/2.0/files/{folderId}/insert | 
[**insertFileToMyFromBody**](FilesFoldersAPI.md#insertfiletomyfrombody) | **POST** /api/2.0/files/@my/insert | 
[**renameFolder**](FilesFoldersAPI.md#renamefolder) | **PUT** /api/2.0/files/folder/{folderId} | 
[**setFolderOrder**](FilesFoldersAPI.md#setfolderorder) | **PUT** /api/2.0/files/folder/{folderId}/order | 
[**setFolderPrimaryExternalLink**](FilesFoldersAPI.md#setfolderprimaryexternallink) | **PUT** /api/2.0/files/folder/{id}/links | 
[**uploadFile**](FilesFoldersAPI.md#uploadfile) | **POST** /api/2.0/files/{folderId}/upload | 
[**uploadFileToMy**](FilesFoldersAPI.md#uploadfiletomy) | **POST** /api/2.0/files/@my/upload | 


# **checkUpload**
```swift
    open class func checkUpload(folderId: Int, checkUploadRequest: CheckUploadRequest, completion: @escaping (_ data: STRINGArrayWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-upload/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** | The folder ID. | 
 **checkUploadRequest** | [**CheckUploadRequest**](CheckUploadRequest.md) | The request parameters for checking file uploads. | 

### Return type

[**STRINGArrayWrapper**](STRINGArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | The folder ID.
let checkUploadRequest = CheckUploadRequest(filesTitle: ["filesTitle_example"]) // CheckUploadRequest | The request parameters for checking file uploads.

FilesFoldersAPIApi.checkUpload(folderId: folderId, checkUploadRequest: checkUploadRequest) { (response, error) in
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

# **createFolder**
```swift
    open class func createFolder(folderId: Int, createFolder: CreateFolder, completion: @escaping (_ data: FolderIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-folder/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** | The folder ID for the folder creation. | 
 **createFolder** | [**CreateFolder**](CreateFolder.md) | The parameters for creating a folder. | 

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | The folder ID for the folder creation.
let createFolder = CreateFolder(title: "title_example") // CreateFolder | The parameters for creating a folder.

FilesFoldersAPIApi.createFolder(folderId: folderId, createFolder: createFolder) { (response, error) in
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

# **createFolderPrimaryExternalLink**
```swift
    open class func createFolderPrimaryExternalLink(id: Int, folderLinkRequest: FolderLinkRequest, completion: @escaping (_ data: FileShareWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-folder-primary-external-link/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The folder ID. | 
 **folderLinkRequest** | [**FolderLinkRequest**](FolderLinkRequest.md) | The folder link parameters. | 

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The folder ID.
let folderLinkRequest = FolderLinkRequest(linkId: 123, access: FileShare(), expirationDate: ApiDateTime(utcTime: Date(), timeZoneOffset: "timeZoneOffset_example"), title: "title_example", password: "password_example", denyDownload: true, _internal: true, primary: true) // FolderLinkRequest | The folder link parameters.

FilesFoldersAPIApi.createFolderPrimaryExternalLink(id: id, folderLinkRequest: folderLinkRequest) { (response, error) in
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

# **createReportFolderHistory**
```swift
    open class func createReportFolderHistory(folderId: Int, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-report-folder-history/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** |  | 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | 

FilesFoldersAPIApi.createReportFolderHistory(folderId: folderId) { (response, error) in
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

# **deleteFolder**
```swift
    open class func deleteFolder(folderId: Int, deleteFolder: DeleteFolder, completion: @escaping (_ data: FileOperationArrayWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-folder/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** | The folder ID to delete. | 
 **deleteFolder** | [**DeleteFolder**](DeleteFolder.md) | The parameters for deleting a folder. | 

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | The folder ID to delete.
let deleteFolder = DeleteFolder(deleteAfter: true, immediately: true) // DeleteFolder | The parameters for deleting a folder.

FilesFoldersAPIApi.deleteFolder(folderId: folderId, deleteFolder: deleteFolder) { (response, error) in
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

# **getFavoritesFolder**
```swift
    open class func getFavoritesFolder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, completion: @escaping (_ data: FolderContentIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-favorites-folder/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userIdOrGroupId** | **UUID** | The user or group ID. | [optional] 
 **filterType** | [**FilterType**](.md) | The filter type. | [optional] 
 **count** | **Int** | The maximum number of items to retrieve in the request. | [optional] 
 **startIndex** | **Int** | The zero-based index of the first item to retrieve in a paginated list. | [optional] 
 **sortBy** | **String** | Specifies the field by which the folder content should be sorted. | [optional] 
 **sortOrder** | [**SortOrder**](.md) | The order in which the results are sorted. | [optional] 
 **filterValue** | **String** | The text used as a filter or search criterion for folder content queries. | [optional] 

### Return type

[**FolderContentIntegerWrapper**](FolderContentIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userIdOrGroupId = 987 // UUID | The user or group ID. (optional)
let filterType = FilterType() // FilterType | The filter type. (optional)
let count = 987 // Int | The maximum number of items to retrieve in the request. (optional)
let startIndex = 987 // Int | The zero-based index of the first item to retrieve in a paginated list. (optional)
let sortBy = "sortBy_example" // String | Specifies the field by which the folder content should be sorted. (optional)
let sortOrder = SortOrder() // SortOrder | The order in which the results are sorted. (optional)
let filterValue = "filterValue_example" // String | The text used as a filter or search criterion for folder content queries. (optional)

FilesFoldersAPIApi.getFavoritesFolder(userIdOrGroupId: userIdOrGroupId, filterType: filterType, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue) { (response, error) in
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

# **getFilesUsedSpace**
```swift
    open class func getFilesUsedSpace(completion: @escaping (_ data: FilesStatisticsResultWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-files-used-space/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**FilesStatisticsResultWrapper**](FilesStatisticsResultWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


FilesFoldersAPIApi.getFilesUsedSpace() { (response, error) in
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

# **getFolder**
```swift
    open class func getFolder(folderId: Int, completion: @escaping (_ data: FormsItemArrayWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** | The folder unique identifier. | 

### Return type

[**FormsItemArrayWrapper**](FormsItemArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | The folder unique identifier.

FilesFoldersAPIApi.getFolder(folderId: folderId) { (response, error) in
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

# **getFolderByFolderId**
```swift
    open class func getFolderByFolderId(folderId: Int, userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, roomId: Int? = nil, excludeSubject: Bool? = nil, applyFilterOption: ApplyFilterOption? = nil, _extension: String? = nil, searchArea: SearchArea? = nil, formsItemKey: String? = nil, formsItemType: String? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, location: Location? = nil, completion: @escaping (_ data: FolderContentIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-by-folder-id/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** | The folder ID. | 
 **userIdOrGroupId** | **UUID** | The user or group ID. | [optional] 
 **filterType** | [**FilterType**](.md) | The filter type. | [optional] 
 **roomId** | **Int** | The room ID. | [optional] 
 **excludeSubject** | **Bool** | Specifies whether to exclude search by user or group ID. | [optional] 
 **applyFilterOption** | [**ApplyFilterOption**](.md) | Specifies whether to return only files, only folders, or all elements from the specified folder. | [optional] 
 **_extension** | **String** | Specifies whether to search for the specific file extension. | [optional] 
 **searchArea** | [**SearchArea**](.md) | The search area. | [optional] 
 **formsItemKey** | **String** | The forms item key. | [optional] 
 **formsItemType** | **String** | The forms item type. | [optional] 
 **count** | **Int** | The maximum number of items to retrieve in the request. | [optional] 
 **startIndex** | **Int** | The zero-based index of the first item to retrieve in a paginated request. | [optional] 
 **sortBy** | **String** | The property used for sorting the folder request results. | [optional] 
 **sortOrder** | [**SortOrder**](.md) | The order in which the results are sorted. | [optional] 
 **filterValue** | **String** | The text value used as a filter parameter for folder content queries. | [optional] 
 **location** | [**Location**](.md) | The location context of the request, specifying the area  where the operation is performed, such as a room, documents, or a link. | [optional] 

### Return type

[**FolderContentIntegerWrapper**](FolderContentIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | The folder ID.
let userIdOrGroupId = 987 // UUID | The user or group ID. (optional)
let filterType = FilterType() // FilterType | The filter type. (optional)
let roomId = 987 // Int | The room ID. (optional)
let excludeSubject = true // Bool | Specifies whether to exclude search by user or group ID. (optional)
let applyFilterOption = ApplyFilterOption() // ApplyFilterOption | Specifies whether to return only files, only folders, or all elements from the specified folder. (optional)
let _extension = "_extension_example" // String | Specifies whether to search for the specific file extension. (optional)
let searchArea = SearchArea() // SearchArea | The search area. (optional)
let formsItemKey = "formsItemKey_example" // String | The forms item key. (optional)
let formsItemType = "formsItemType_example" // String | The forms item type. (optional)
let count = 987 // Int | The maximum number of items to retrieve in the request. (optional)
let startIndex = 987 // Int | The zero-based index of the first item to retrieve in a paginated request. (optional)
let sortBy = "sortBy_example" // String | The property used for sorting the folder request results. (optional)
let sortOrder = SortOrder() // SortOrder | The order in which the results are sorted. (optional)
let filterValue = "filterValue_example" // String | The text value used as a filter parameter for folder content queries. (optional)
let location = Location() // Location | The location context of the request, specifying the area  where the operation is performed, such as a room, documents, or a link. (optional)

FilesFoldersAPIApi.getFolderByFolderId(folderId: folderId, userIdOrGroupId: userIdOrGroupId, filterType: filterType, roomId: roomId, excludeSubject: excludeSubject, applyFilterOption: applyFilterOption, _extension: _extension, searchArea: searchArea, formsItemKey: formsItemKey, formsItemType: formsItemType, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue, location: location) { (response, error) in
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

# **getFolderHistory**
```swift
    open class func getFolderHistory(folderId: Int, fromDate: ApiDateTime? = nil, toDate: ApiDateTime? = nil, count: Int? = nil, startIndex: Int? = nil, completion: @escaping (_ data: HistoryArrayWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-history/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** | The folder ID of the history request. | 
 **fromDate** | [**ApiDateTime**](.md) | The start date of the history request. | [optional] 
 **toDate** | [**ApiDateTime**](.md) | The end date of the history request. | [optional] 
 **count** | **Int** | The number of records to retrieve for the folder history. | [optional] 
 **startIndex** | **Int** | The starting index from which the history records are retrieved in the request. | [optional] 

### Return type

[**HistoryArrayWrapper**](HistoryArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | The folder ID of the history request.
let fromDate = ApiDateTime(utcTime: Date(), timeZoneOffset: "timeZoneOffset_example") // ApiDateTime | The start date of the history request. (optional)
let toDate = ApiDateTime(utcTime: Date(), timeZoneOffset: "timeZoneOffset_example") // ApiDateTime | The end date of the history request. (optional)
let count = 987 // Int | The number of records to retrieve for the folder history. (optional)
let startIndex = 987 // Int | The starting index from which the history records are retrieved in the request. (optional)

FilesFoldersAPIApi.getFolderHistory(folderId: folderId, fromDate: fromDate, toDate: toDate, count: count, startIndex: startIndex) { (response, error) in
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

# **getFolderInfo**
```swift
    open class func getFolderInfo(folderId: Int, completion: @escaping (_ data: FolderIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-info/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** | The folder unique identifier. | 

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | The folder unique identifier.

FilesFoldersAPIApi.getFolderInfo(folderId: folderId) { (response, error) in
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

# **getFolderLinks**
```swift
    open class func getFolderLinks(id: Int, completion: @escaping (_ data: FileShareArrayWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-links/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The folder ID. | 

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The folder ID.

FilesFoldersAPIApi.getFolderLinks(id: id) { (response, error) in
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

# **getFolderPath**
```swift
    open class func getFolderPath(folderId: Int, completion: @escaping (_ data: FileEntryBaseArrayWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-path/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** | The folder unique identifier. | 

### Return type

[**FileEntryBaseArrayWrapper**](FileEntryBaseArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | The folder unique identifier.

FilesFoldersAPIApi.getFolderPath(folderId: folderId) { (response, error) in
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

# **getFolderPrimaryExternalLink**
```swift
    open class func getFolderPrimaryExternalLink(id: Int, count: Int? = nil, startIndex: Int? = nil, completion: @escaping (_ data: FileShareWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-primary-external-link/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The folder unique identifier. | 
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

let id = 987 // Int | The folder unique identifier.
let count = 987 // Int | The number of items to retrieve in the request. (optional)
let startIndex = 987 // Int | The starting index for the query results. (optional)

FilesFoldersAPIApi.getFolderPrimaryExternalLink(id: id, count: count, startIndex: startIndex) { (response, error) in
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

# **getFolderRecent**
```swift
    open class func getFolderRecent(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, excludeSubject: Bool? = nil, applyFilterOption: ApplyFilterOption? = nil, searchArea: SearchArea? = nil, _extension: [String]? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, completion: @escaping (_ data: FolderContentIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-recent/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userIdOrGroupId** | **UUID** | The user or group ID. | [optional] 
 **filterType** | [**FilterType**](.md) | The filter type. | [optional] 
 **excludeSubject** | **Bool** | Specifies whether to exclude search by user or group ID. | [optional] 
 **applyFilterOption** | [**ApplyFilterOption**](.md) | Specifies whether to return only files, only folders or all elements. | [optional] 
 **searchArea** | [**SearchArea**](.md) | The search area. | [optional] 
 **_extension** | [**[String]**](String.md) | Specifies whether to search for a specific file extension in the Recent folder. | [optional] 
 **count** | **Int** | The maximum number of items to return. | [optional] 
 **startIndex** | **Int** | The starting position of the results to be returned in the query response. | [optional] 
 **sortBy** | **String** | Specifies the sorting criteria for the folder request. | [optional] 
 **sortOrder** | [**SortOrder**](.md) | The order in which the results are sorted. | [optional] 
 **filterValue** | **String** | The text used for filtering or searching folder contents. | [optional] 

### Return type

[**FolderContentIntegerWrapper**](FolderContentIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userIdOrGroupId = 987 // UUID | The user or group ID. (optional)
let filterType = FilterType() // FilterType | The filter type. (optional)
let excludeSubject = true // Bool | Specifies whether to exclude search by user or group ID. (optional)
let applyFilterOption = ApplyFilterOption() // ApplyFilterOption | Specifies whether to return only files, only folders or all elements. (optional)
let searchArea = SearchArea() // SearchArea | The search area. (optional)
let _extension = [["_extension_example"]] // [String] | Specifies whether to search for a specific file extension in the Recent folder. (optional)
let count = 987 // Int | The maximum number of items to return. (optional)
let startIndex = 987 // Int | The starting position of the results to be returned in the query response. (optional)
let sortBy = "sortBy_example" // String | Specifies the sorting criteria for the folder request. (optional)
let sortOrder = SortOrder() // SortOrder | The order in which the results are sorted. (optional)
let filterValue = "filterValue_example" // String | The text used for filtering or searching folder contents. (optional)

FilesFoldersAPIApi.getFolderRecent(userIdOrGroupId: userIdOrGroupId, filterType: filterType, excludeSubject: excludeSubject, applyFilterOption: applyFilterOption, searchArea: searchArea, _extension: _extension, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue) { (response, error) in
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

# **getFolders**
```swift
    open class func getFolders(folderId: Int, completion: @escaping (_ data: FileEntryBaseArrayWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folders/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** | The folder unique identifier. | 

### Return type

[**FileEntryBaseArrayWrapper**](FileEntryBaseArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | The folder unique identifier.

FilesFoldersAPIApi.getFolders(folderId: folderId) { (response, error) in
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

# **getMyFolder**
```swift
    open class func getMyFolder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, applyFilterOption: ApplyFilterOption? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, completion: @escaping (_ data: FolderContentIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-my-folder/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userIdOrGroupId** | **UUID** | The user or group ID. | [optional] 
 **filterType** | [**FilterType**](.md) | The filter type. | [optional] 
 **applyFilterOption** | [**ApplyFilterOption**](.md) | Specifies whether to return only files, only folders or all elements. | [optional] 
 **count** | **Int** | The maximum number of items to retrieve in the response. | [optional] 
 **startIndex** | **Int** | The starting position of the items to be retrieved. | [optional] 
 **sortBy** | **String** | The property used to specify the sorting criteria for folder contents. | [optional] 
 **sortOrder** | [**SortOrder**](.md) | The order in which the results are sorted. | [optional] 
 **filterValue** | **String** | The text used for filtering or searching folder contents. | [optional] 

### Return type

[**FolderContentIntegerWrapper**](FolderContentIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userIdOrGroupId = 987 // UUID | The user or group ID. (optional)
let filterType = FilterType() // FilterType | The filter type. (optional)
let applyFilterOption = ApplyFilterOption() // ApplyFilterOption | Specifies whether to return only files, only folders or all elements. (optional)
let count = 987 // Int | The maximum number of items to retrieve in the response. (optional)
let startIndex = 987 // Int | The starting position of the items to be retrieved. (optional)
let sortBy = "sortBy_example" // String | The property used to specify the sorting criteria for folder contents. (optional)
let sortOrder = SortOrder() // SortOrder | The order in which the results are sorted. (optional)
let filterValue = "filterValue_example" // String | The text used for filtering or searching folder contents. (optional)

FilesFoldersAPIApi.getMyFolder(userIdOrGroupId: userIdOrGroupId, filterType: filterType, applyFilterOption: applyFilterOption, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue) { (response, error) in
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

# **getNewFolderItems**
```swift
    open class func getNewFolderItems(folderId: Int, completion: @escaping (_ data: FileEntryBaseArrayWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-folder-items/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** | The folder unique identifier. | 

### Return type

[**FileEntryBaseArrayWrapper**](FileEntryBaseArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | The folder unique identifier.

FilesFoldersAPIApi.getNewFolderItems(folderId: folderId) { (response, error) in
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

# **getPrivacyFolder**
```swift
    open class func getPrivacyFolder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, completion: @escaping (_ data: FolderContentIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-privacy-folder/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userIdOrGroupId** | **UUID** | The user or group ID. | [optional] 
 **filterType** | [**FilterType**](.md) | The filter type. | [optional] 
 **count** | **Int** | The maximum number of items to retrieve in the request. | [optional] 
 **startIndex** | **Int** | The zero-based index of the first item to retrieve in a paginated list. | [optional] 
 **sortBy** | **String** | Specifies the field by which the folder content should be sorted. | [optional] 
 **sortOrder** | [**SortOrder**](.md) | The order in which the results are sorted. | [optional] 
 **filterValue** | **String** | The text used as a filter or search criterion for folder content queries. | [optional] 

### Return type

[**FolderContentIntegerWrapper**](FolderContentIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userIdOrGroupId = 987 // UUID | The user or group ID. (optional)
let filterType = FilterType() // FilterType | The filter type. (optional)
let count = 987 // Int | The maximum number of items to retrieve in the request. (optional)
let startIndex = 987 // Int | The zero-based index of the first item to retrieve in a paginated list. (optional)
let sortBy = "sortBy_example" // String | Specifies the field by which the folder content should be sorted. (optional)
let sortOrder = SortOrder() // SortOrder | The order in which the results are sorted. (optional)
let filterValue = "filterValue_example" // String | The text used as a filter or search criterion for folder content queries. (optional)

FilesFoldersAPIApi.getPrivacyFolder(userIdOrGroupId: userIdOrGroupId, filterType: filterType, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue) { (response, error) in
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

# **getRecentFolder**
```swift
    open class func getRecentFolder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, excludeSubject: Bool? = nil, applyFilterOption: ApplyFilterOption? = nil, searchArea: SearchArea? = nil, _extension: [String]? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, completion: @escaping (_ data: FolderContentIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-recent-folder/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userIdOrGroupId** | **UUID** | The user or group ID. | [optional] 
 **filterType** | [**FilterType**](.md) | The filter type. | [optional] 
 **excludeSubject** | **Bool** | Specifies whether to exclude search by user or group ID. | [optional] 
 **applyFilterOption** | [**ApplyFilterOption**](.md) | Specifies whether to return only files, only folders or all elements. | [optional] 
 **searchArea** | [**SearchArea**](.md) | The search area. | [optional] 
 **_extension** | [**[String]**](String.md) | Specifies whether to search for a specific file extension in the Recent folder. | [optional] 
 **count** | **Int** | The maximum number of items to return. | [optional] 
 **startIndex** | **Int** | The starting position of the results to be returned in the query response. | [optional] 
 **sortBy** | **String** | Specifies the sorting criteria for the folder request. | [optional] 
 **sortOrder** | [**SortOrder**](.md) | The order in which the results are sorted. | [optional] 
 **filterValue** | **String** | The text used for filtering or searching folder contents. | [optional] 

### Return type

[**FolderContentIntegerWrapper**](FolderContentIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userIdOrGroupId = 987 // UUID | The user or group ID. (optional)
let filterType = FilterType() // FilterType | The filter type. (optional)
let excludeSubject = true // Bool | Specifies whether to exclude search by user or group ID. (optional)
let applyFilterOption = ApplyFilterOption() // ApplyFilterOption | Specifies whether to return only files, only folders or all elements. (optional)
let searchArea = SearchArea() // SearchArea | The search area. (optional)
let _extension = [["_extension_example"]] // [String] | Specifies whether to search for a specific file extension in the Recent folder. (optional)
let count = 987 // Int | The maximum number of items to return. (optional)
let startIndex = 987 // Int | The starting position of the results to be returned in the query response. (optional)
let sortBy = "sortBy_example" // String | Specifies the sorting criteria for the folder request. (optional)
let sortOrder = SortOrder() // SortOrder | The order in which the results are sorted. (optional)
let filterValue = "filterValue_example" // String | The text used for filtering or searching folder contents. (optional)

FilesFoldersAPIApi.getRecentFolder(userIdOrGroupId: userIdOrGroupId, filterType: filterType, excludeSubject: excludeSubject, applyFilterOption: applyFilterOption, searchArea: searchArea, _extension: _extension, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue) { (response, error) in
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

# **getRootFolders**
```swift
    open class func getRootFolders(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, withoutTrash: Bool? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, completion: @escaping (_ data: FolderContentIntegerArrayWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-root-folders/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userIdOrGroupId** | **UUID** | The user or group ID. | [optional] 
 **filterType** | [**FilterType**](.md) | The filter type. | [optional] 
 **withoutTrash** | **Bool** | Specifies whether to return the Trash section or not. | [optional] 
 **count** | **Int** | The maximum number of items to retrieve in the response. | [optional] 
 **startIndex** | **Int** | The starting position of the items to be retrieved. | [optional] 
 **sortBy** | **String** | Specifies the field by which the folder content should be sorted. | [optional] 
 **sortOrder** | [**SortOrder**](.md) | The order in which the results are sorted. | [optional] 
 **filterValue** | **String** | The text used as a filter for searching or retrieving folder contents. | [optional] 

### Return type

[**FolderContentIntegerArrayWrapper**](FolderContentIntegerArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userIdOrGroupId = 987 // UUID | The user or group ID. (optional)
let filterType = FilterType() // FilterType | The filter type. (optional)
let withoutTrash = true // Bool | Specifies whether to return the Trash section or not. (optional)
let count = 987 // Int | The maximum number of items to retrieve in the response. (optional)
let startIndex = 987 // Int | The starting position of the items to be retrieved. (optional)
let sortBy = "sortBy_example" // String | Specifies the field by which the folder content should be sorted. (optional)
let sortOrder = SortOrder() // SortOrder | The order in which the results are sorted. (optional)
let filterValue = "filterValue_example" // String | The text used as a filter for searching or retrieving folder contents. (optional)

FilesFoldersAPIApi.getRootFolders(userIdOrGroupId: userIdOrGroupId, filterType: filterType, withoutTrash: withoutTrash, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue) { (response, error) in
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

# **getTrashFolder**
```swift
    open class func getTrashFolder(userIdOrGroupId: UUID? = nil, filterType: FilterType? = nil, applyFilterOption: ApplyFilterOption? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, completion: @escaping (_ data: FolderContentIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-trash-folder/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userIdOrGroupId** | **UUID** | The user or group ID. | [optional] 
 **filterType** | [**FilterType**](.md) | The filter type. | [optional] 
 **applyFilterOption** | [**ApplyFilterOption**](.md) | Specifies whether to return only files, only folders or all elements. | [optional] 
 **count** | **Int** | The maximum number of items to retrieve in the response. | [optional] 
 **startIndex** | **Int** | The starting position of the items to be retrieved. | [optional] 
 **sortBy** | **String** | The property used to specify the sorting criteria for folder contents. | [optional] 
 **sortOrder** | [**SortOrder**](.md) | The order in which the results are sorted. | [optional] 
 **filterValue** | **String** | The text used for filtering or searching folder contents. | [optional] 

### Return type

[**FolderContentIntegerWrapper**](FolderContentIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userIdOrGroupId = 987 // UUID | The user or group ID. (optional)
let filterType = FilterType() // FilterType | The filter type. (optional)
let applyFilterOption = ApplyFilterOption() // ApplyFilterOption | Specifies whether to return only files, only folders or all elements. (optional)
let count = 987 // Int | The maximum number of items to retrieve in the response. (optional)
let startIndex = 987 // Int | The starting position of the items to be retrieved. (optional)
let sortBy = "sortBy_example" // String | The property used to specify the sorting criteria for folder contents. (optional)
let sortOrder = SortOrder() // SortOrder | The order in which the results are sorted. (optional)
let filterValue = "filterValue_example" // String | The text used for filtering or searching folder contents. (optional)

FilesFoldersAPIApi.getTrashFolder(userIdOrGroupId: userIdOrGroupId, filterType: filterType, applyFilterOption: applyFilterOption, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue) { (response, error) in
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

# **insertFile**
```swift
    open class func insertFile(folderId: Int, insertFileFile: URL? = nil, insertFileTitle: String? = nil, insertFileCreateNewIfExist: Bool? = nil, insertFileKeepConvertStatus: Bool? = nil, insertFileStreamCanRead: Bool? = nil, insertFileStreamCanWrite: Bool? = nil, insertFileStreamCanSeek: Bool? = nil, insertFileStreamCanTimeout: Bool? = nil, insertFileStreamLength: Int64? = nil, insertFileStreamPosition: Int64? = nil, insertFileStreamReadTimeout: Int? = nil, insertFileStreamWriteTimeout: Int? = nil, completion: @escaping (_ data: FileIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/insert-file/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** | The folder ID for inserting a file. | 
 **insertFileFile** | **URL** | The file to be inserted. | [optional] 
 **insertFileTitle** | **String** | The file title to be inserted. | [optional] 
 **insertFileCreateNewIfExist** | **Bool** | Specifies whether to create a new file if it already exists or not. | [optional] 
 **insertFileKeepConvertStatus** | **Bool** | Specifies whether to keep the file converting status or not. | [optional] 
 **insertFileStreamCanRead** | **Bool** |  | [optional] 
 **insertFileStreamCanWrite** | **Bool** |  | [optional] 
 **insertFileStreamCanSeek** | **Bool** |  | [optional] 
 **insertFileStreamCanTimeout** | **Bool** |  | [optional] 
 **insertFileStreamLength** | **Int64** |  | [optional] 
 **insertFileStreamPosition** | **Int64** |  | [optional] 
 **insertFileStreamReadTimeout** | **Int** |  | [optional] 
 **insertFileStreamWriteTimeout** | **Int** |  | [optional] 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | The folder ID for inserting a file.
let insertFileFile = URL(string: "https://example.com")! // URL | The file to be inserted. (optional)
let insertFileTitle = "insertFileTitle_example" // String | The file title to be inserted. (optional)
let insertFileCreateNewIfExist = true // Bool | Specifies whether to create a new file if it already exists or not. (optional)
let insertFileKeepConvertStatus = true // Bool | Specifies whether to keep the file converting status or not. (optional)
let insertFileStreamCanRead = true // Bool |  (optional)
let insertFileStreamCanWrite = true // Bool |  (optional)
let insertFileStreamCanSeek = true // Bool |  (optional)
let insertFileStreamCanTimeout = true // Bool |  (optional)
let insertFileStreamLength = 987 // Int64 |  (optional)
let insertFileStreamPosition = 987 // Int64 |  (optional)
let insertFileStreamReadTimeout = 987 // Int |  (optional)
let insertFileStreamWriteTimeout = 987 // Int |  (optional)

FilesFoldersAPIApi.insertFile(folderId: folderId, insertFileFile: insertFileFile, insertFileTitle: insertFileTitle, insertFileCreateNewIfExist: insertFileCreateNewIfExist, insertFileKeepConvertStatus: insertFileKeepConvertStatus, insertFileStreamCanRead: insertFileStreamCanRead, insertFileStreamCanWrite: insertFileStreamCanWrite, insertFileStreamCanSeek: insertFileStreamCanSeek, insertFileStreamCanTimeout: insertFileStreamCanTimeout, insertFileStreamLength: insertFileStreamLength, insertFileStreamPosition: insertFileStreamPosition, insertFileStreamReadTimeout: insertFileStreamReadTimeout, insertFileStreamWriteTimeout: insertFileStreamWriteTimeout) { (response, error) in
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

# **insertFileToMyFromBody**
```swift
    open class func insertFileToMyFromBody(file: URL? = nil, title: String? = nil, createNewIfExist: Bool? = nil, keepConvertStatus: Bool? = nil, streamCanRead: Bool? = nil, streamCanWrite: Bool? = nil, streamCanSeek: Bool? = nil, streamCanTimeout: Bool? = nil, streamLength: Int64? = nil, streamPosition: Int64? = nil, streamReadTimeout: Int? = nil, streamWriteTimeout: Int? = nil, completion: @escaping (_ data: FileIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/insert-file-to-my-from-body/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **URL** | The file to be inserted. | [optional] 
 **title** | **String** | The file title to be inserted. | [optional] 
 **createNewIfExist** | **Bool** | Specifies whether to create a new file if it already exists or not. | [optional] 
 **keepConvertStatus** | **Bool** | Specifies whether to keep the file converting status or not. | [optional] 
 **streamCanRead** | **Bool** |  | [optional] 
 **streamCanWrite** | **Bool** |  | [optional] 
 **streamCanSeek** | **Bool** |  | [optional] 
 **streamCanTimeout** | **Bool** |  | [optional] 
 **streamLength** | **Int64** |  | [optional] 
 **streamPosition** | **Int64** |  | [optional] 
 **streamReadTimeout** | **Int** |  | [optional] 
 **streamWriteTimeout** | **Int** |  | [optional] 

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let file = URL(string: "https://example.com")! // URL | The file to be inserted. (optional)
let title = "title_example" // String | The file title to be inserted. (optional)
let createNewIfExist = true // Bool | Specifies whether to create a new file if it already exists or not. (optional)
let keepConvertStatus = true // Bool | Specifies whether to keep the file converting status or not. (optional)
let streamCanRead = true // Bool |  (optional)
let streamCanWrite = true // Bool |  (optional)
let streamCanSeek = true // Bool |  (optional)
let streamCanTimeout = true // Bool |  (optional)
let streamLength = 987 // Int64 |  (optional)
let streamPosition = 987 // Int64 |  (optional)
let streamReadTimeout = 987 // Int |  (optional)
let streamWriteTimeout = 987 // Int |  (optional)

FilesFoldersAPIApi.insertFileToMyFromBody(file: file, title: title, createNewIfExist: createNewIfExist, keepConvertStatus: keepConvertStatus, streamCanRead: streamCanRead, streamCanWrite: streamCanWrite, streamCanSeek: streamCanSeek, streamCanTimeout: streamCanTimeout, streamLength: streamLength, streamPosition: streamPosition, streamReadTimeout: streamReadTimeout, streamWriteTimeout: streamWriteTimeout) { (response, error) in
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

# **renameFolder**
```swift
    open class func renameFolder(folderId: Int, createFolder: CreateFolder, completion: @escaping (_ data: FolderIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/rename-folder/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** | The folder ID for the folder creation. | 
 **createFolder** | [**CreateFolder**](CreateFolder.md) | The parameters for creating a folder. | 

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | The folder ID for the folder creation.
let createFolder = CreateFolder(title: "title_example") // CreateFolder | The parameters for creating a folder.

FilesFoldersAPIApi.renameFolder(folderId: folderId, createFolder: createFolder) { (response, error) in
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

# **setFolderOrder**
```swift
    open class func setFolderOrder(folderId: Int, orderRequestDto: OrderRequestDto? = nil, completion: @escaping (_ data: FolderIntegerWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-order/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** | The folder unique identifier. | 
 **orderRequestDto** | [**OrderRequestDto**](OrderRequestDto.md) | The folder order information. | [optional] 

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | The folder unique identifier.
let orderRequestDto = OrderRequestDto(order: 123) // OrderRequestDto | The folder order information. (optional)

FilesFoldersAPIApi.setFolderOrder(folderId: folderId, orderRequestDto: orderRequestDto) { (response, error) in
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

# **setFolderPrimaryExternalLink**
```swift
    open class func setFolderPrimaryExternalLink(id: Int, folderLinkRequest: FolderLinkRequest, completion: @escaping (_ data: FileShareWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-primary-external-link/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The folder ID. | 
 **folderLinkRequest** | [**FolderLinkRequest**](FolderLinkRequest.md) | The folder link parameters. | 

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The folder ID.
let folderLinkRequest = FolderLinkRequest(linkId: 123, access: FileShare(), expirationDate: ApiDateTime(utcTime: Date(), timeZoneOffset: "timeZoneOffset_example"), title: "title_example", password: "password_example", denyDownload: true, _internal: true, primary: true) // FolderLinkRequest | The folder link parameters.

FilesFoldersAPIApi.setFolderPrimaryExternalLink(id: id, folderLinkRequest: folderLinkRequest) { (response, error) in
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

# **uploadFile**
```swift
    open class func uploadFile(folderId: Int, uploadRequestDto: UploadRequestDto? = nil, completion: @escaping (_ data: ObjectWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-file/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** | The folder ID to upload a file. | 
 **uploadRequestDto** | [**UploadRequestDto**](UploadRequestDto.md) | The request parameters for uploading a file. | [optional] 

### Return type

[**ObjectWrapper**](ObjectWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | The folder ID to upload a file.
let uploadRequestDto = UploadRequestDto(file: URL(string: "https://example.com")!, contentType: ContentType(boundary: "boundary_example", charSet: "charSet_example", mediaType: "mediaType_example", name: "name_example", parameters: [123]), contentDisposition: ContentDisposition(dispositionType: "dispositionType_example", parameters: [123], fileName: "fileName_example", creationDate: Date(), modificationDate: Date(), inline: true, readDate: Date(), size: 123), files: [URL(string: "https://example.com")!], createNewIfExist: true, storeOriginalFileFlag: true, keepConvertStatus: true, stream: URL(string: "https://example.com")!) // UploadRequestDto | The request parameters for uploading a file. (optional)

FilesFoldersAPIApi.uploadFile(folderId: folderId, uploadRequestDto: uploadRequestDto) { (response, error) in
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

# **uploadFileToMy**
```swift
    open class func uploadFileToMy(inDto: UploadRequestDto? = nil, completion: @escaping (_ data: ObjectWrapper?, _ error: Error?) -> Void)
```



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-file-to-my/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inDto** | [**UploadRequestDto**](.md) | The request parameters for uploading a file. | [optional] 

### Return type

[**ObjectWrapper**](ObjectWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inDto = UploadRequestDto(file: URL(string: "https://example.com")!, contentType: ContentType(boundary: "boundary_example", charSet: "charSet_example", mediaType: "mediaType_example", name: "name_example", parameters: [123]), contentDisposition: ContentDisposition(dispositionType: "dispositionType_example", parameters: [123], fileName: "fileName_example", creationDate: Date(), modificationDate: Date(), inline: true, readDate: Date(), size: 123), files: [URL(string: "https://example.com")!], createNewIfExist: true, storeOriginalFileFlag: true, keepConvertStatus: true, stream: URL(string: "https://example.com")!) // UploadRequestDto | The request parameters for uploading a file. (optional)

FilesFoldersAPIApi.uploadFileToMy(inDto: inDto) { (response, error) in
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

