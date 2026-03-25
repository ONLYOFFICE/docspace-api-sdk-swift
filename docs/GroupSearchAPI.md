# GroupSearchAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getGroupsWithFilesShared**](GroupSearchAPI.md#getgroupswithfilesshared) | **GET** /api/2.0/group/file/{id} | Get groups with file sharing settings
[**getGroupsWithFoldersShared**](GroupSearchAPI.md#getgroupswithfoldersshared) | **GET** /api/2.0/group/folder/{id} | Get groups with folder sharing settings
[**getGroupsWithRoomsShared**](GroupSearchAPI.md#getgroupswithroomsshared) | **GET** /api/2.0/group/room/{id} | Get groups with room sharing settings


# **getGroupsWithFilesShared**
```swift
    open class func getGroupsWithFilesShared(id: Int, excludeShared: Bool? = nil, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, completion: @escaping (_ data: GroupArrayWrapper?, _ error: Error?) -> Void)
```

Returns groups with their sharing settings for a file with the ID specified in request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-files-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The group ID. | 
 **excludeShared** | **Bool** | Specifies whether to exclude the group sharing settings from the response. | [optional] 
 **count** | **Int** | The number of groups to retrieve in the request. | [optional] 
 **startIndex** | **Int** | The starting index from which to begin retrieving groups with their sharing settings. | [optional] 
 **filterValue** | **String** | The text used as a filter for retrieving groups with their sharing settings. | [optional] 

### Return type

[**GroupArrayWrapper**](GroupArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The group ID.
let excludeShared = false // Bool | Specifies whether to exclude the group sharing settings from the response. (optional)
let count = 987 // Int | The number of groups to retrieve in the request. (optional)
let startIndex = 987 // Int | The starting index from which to begin retrieving groups with their sharing settings. (optional)
let filterValue = "filterValue_example" // String | The text used as a filter for retrieving groups with their sharing settings. (optional)

// Get groups with file sharing settings
GroupSearchAPIApi.getGroupsWithFilesShared(id: id, excludeShared: excludeShared, count: count, startIndex: startIndex, filterValue: filterValue) { (response, error) in
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

# **getGroupsWithFoldersShared**
```swift
    open class func getGroupsWithFoldersShared(id: Int, excludeShared: Bool? = nil, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, completion: @escaping (_ data: GroupArrayWrapper?, _ error: Error?) -> Void)
```

Returns groups with their sharing settings in a folder with the ID specified in request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-folders-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The group ID. | 
 **excludeShared** | **Bool** | Specifies whether to exclude the group sharing settings from the response. | [optional] 
 **count** | **Int** | The number of groups to retrieve in the request. | [optional] 
 **startIndex** | **Int** | The starting index from which to begin retrieving groups with their sharing settings. | [optional] 
 **filterValue** | **String** | The text used as a filter for retrieving groups with their sharing settings. | [optional] 

### Return type

[**GroupArrayWrapper**](GroupArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The group ID.
let excludeShared = false // Bool | Specifies whether to exclude the group sharing settings from the response. (optional)
let count = 987 // Int | The number of groups to retrieve in the request. (optional)
let startIndex = 987 // Int | The starting index from which to begin retrieving groups with their sharing settings. (optional)
let filterValue = "filterValue_example" // String | The text used as a filter for retrieving groups with their sharing settings. (optional)

// Get groups with folder sharing settings
GroupSearchAPIApi.getGroupsWithFoldersShared(id: id, excludeShared: excludeShared, count: count, startIndex: startIndex, filterValue: filterValue) { (response, error) in
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

# **getGroupsWithRoomsShared**
```swift
    open class func getGroupsWithRoomsShared(id: Int, excludeShared: Bool? = nil, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, completion: @escaping (_ data: GroupArrayWrapper?, _ error: Error?) -> Void)
```

Returns groups with their sharing settings in a room with the ID specified in request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-rooms-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The group ID. | 
 **excludeShared** | **Bool** | Specifies whether to exclude the group sharing settings from the response. | [optional] 
 **count** | **Int** | The number of groups to retrieve in the request. | [optional] 
 **startIndex** | **Int** | The starting index from which to begin retrieving groups with their sharing settings. | [optional] 
 **filterValue** | **String** | The text used as a filter for retrieving groups with their sharing settings. | [optional] 

### Return type

[**GroupArrayWrapper**](GroupArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The group ID.
let excludeShared = false // Bool | Specifies whether to exclude the group sharing settings from the response. (optional)
let count = 987 // Int | The number of groups to retrieve in the request. (optional)
let startIndex = 987 // Int | The starting index from which to begin retrieving groups with their sharing settings. (optional)
let filterValue = "filterValue_example" // String | The text used as a filter for retrieving groups with their sharing settings. (optional)

// Get groups with room sharing settings
GroupSearchAPIApi.getGroupsWithRoomsShared(id: id, excludeShared: excludeShared, count: count, startIndex: startIndex, filterValue: filterValue) { (response, error) in
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

