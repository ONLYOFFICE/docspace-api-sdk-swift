# GroupSearchAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getGroupsWithFilesShared**](GroupSearchAPI.md#getgroupswithfilesshared) | **GET** /api/2.0/group/file/{id} | Search groups for a file
[**getGroupsWithFilesShared**](GroupSearchAPI.md#getgroupswithfilesshared-third-party-storage) | **GET** /api/2.0/group/file/{id} | Search groups for a file (third-party storage)
[**getGroupsWithFoldersShared**](GroupSearchAPI.md#getgroupswithfoldersshared) | **GET** /api/2.0/group/folder/{id} | Search groups for a folder
[**getGroupsWithFoldersShared**](GroupSearchAPI.md#getgroupswithfoldersshared-third-party-storage) | **GET** /api/2.0/group/folder/{id} | Search groups for a folder (third-party storage)
[**getGroupsWithRoomsShared**](GroupSearchAPI.md#getgroupswithroomsshared) | **GET** /api/2.0/group/room/{id} | Search groups for a room
[**getGroupsWithRoomsShared**](GroupSearchAPI.md#getgroupswithroomsshared-third-party-storage) | **GET** /api/2.0/group/room/{id} | Search groups for a room (third-party storage)


# **getGroupsWithFilesShared**
```swift
    open class func getGroupsWithFilesShared(id: Int, excludeShared: Bool? = nil, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, completion: @escaping (_ data: GroupArrayWrapper?, _ error: Error?) -> Void)
```

Returns the groups that can be given access to the file with the ID given in the route, and reports for each  of them whether it already has access to that file.  The caller has to be allowed to manage the access of that file, and the ID has to belong to an existing file,  so the operation answers 403 for a file the caller cannot share and 404 for an ID that matches nothing.  The call is read-only and, unlike the account search, works without a filter: leaving `filterValue` empty  returns every group instead of nothing, and a value narrows the result by group name.  The result is paged by `count` and `startIndex`, with the number of matching groups in the total count of the  response.  Pass `excludeShared` to keep only the groups that have no access to the file yet, which is the set to offer  when adding new ones; without it every matching group comes back and `shared` tells them apart.  To search users and groups together, use `GET api/2.0/accounts/file/{id}/search`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-files-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage. | 
 **excludeShared** | **Bool** | Keeps only the groups that do not have access to the entry yet, which is the set to offer when granting  access. Every returned entry then has `shared` set to false; without the flag every matching group comes back  and `shared` tells them apart. | [optional] 
 **count** | **Int** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] 
 **startIndex** | **Int** | The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response. | [optional] 
 **filterValue** | **String** | The text to match against the group name. Omit it to get every group the caller may grant access to. | [optional] 

### Return type

[**GroupArrayWrapper**](GroupArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
let excludeShared = false // Bool | Keeps only the groups that do not have access to the entry yet, which is the set to offer when granting  access. Every returned entry then has `shared` set to false; without the flag every matching group comes back  and `shared` tells them apart. (optional)
let count = 987 // Int | The size of the page. It defaults to 100, which is also the largest value the operation accepts. (optional)
let startIndex = 987 // Int | The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response. (optional)
let filterValue = "filterValue_example" // String | The text to match against the group name. Omit it to get every group the caller may grant access to. (optional)

// Search groups for a file
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

# **getGroupsWithFilesShared** (third-party storage)
```swift
    open class func getGroupsWithFilesShared(id: String, excludeShared: Bool? = nil, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, completion: @escaping (_ data: GroupArrayWrapper?, _ error: Error?) -> Void)
```

Returns the groups that can be given access to the file with the ID given in the route, and reports for each  of them whether it already has access to that file.  The caller has to be allowed to manage the access of that file, and the ID has to belong to an existing file,  so the operation answers 403 for a file the caller cannot share and 404 for an ID that matches nothing.  The call is read-only and, unlike the account search, works without a filter: leaving `filterValue` empty  returns every group instead of nothing, and a value narrows the result by group name.  The result is paged by `count` and `startIndex`, with the number of matching groups in the total count of the  response.  Pass `excludeShared` to keep only the groups that have no access to the file yet, which is the set to offer  when adding new ones; without it every matching group comes back and `shared` tells them apart.  To search users and groups together, use `GET api/2.0/accounts/file/{id}/search`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-files-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage. | 
 **excludeShared** | **Bool** | Keeps only the groups that do not have access to the entry yet, which is the set to offer when granting  access. Every returned entry then has `shared` set to false; without the flag every matching group comes back  and `shared` tells them apart. | [optional] 
 **count** | **Int** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] 
 **startIndex** | **Int** | The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response. | [optional] 
 **filterValue** | **String** | The text to match against the group name. Omit it to get every group the caller may grant access to. | [optional] 

### Return type

[**GroupArrayWrapper**](GroupArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
let excludeShared = false // Bool | Keeps only the groups that do not have access to the entry yet, which is the set to offer when granting  access. Every returned entry then has `shared` set to false; without the flag every matching group comes back  and `shared` tells them apart. (optional)
let count = 987 // Int | The size of the page. It defaults to 100, which is also the largest value the operation accepts. (optional)
let startIndex = 987 // Int | The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response. (optional)
let filterValue = "filterValue_example" // String | The text to match against the group name. Omit it to get every group the caller may grant access to. (optional)

// Search groups for a file (third-party storage)
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

Returns the groups that can be given access to the folder with the ID given in the route, and reports for  each of them whether it already has access to that folder.  The caller has to be allowed to manage the access of that folder, and the ID has to belong to an existing  folder, so the operation answers 403 for a folder the caller cannot share and 404 for an ID that matches  nothing.  The call is read-only and, unlike the account search, works without a filter: leaving `filterValue` empty  returns every group instead of nothing, and a value narrows the result by group name.  The result is paged by `count` and `startIndex`, with the number of matching groups in the total count of the  response.  Pass `excludeShared` to keep only the groups that have no access to the folder yet, which is the set to offer  when adding new ones; without it every matching group comes back and `shared` tells them apart.  To search users and groups together, use `GET api/2.0/accounts/folder/{id}/search`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-folders-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage. | 
 **excludeShared** | **Bool** | Keeps only the groups that do not have access to the entry yet, which is the set to offer when granting  access. Every returned entry then has `shared` set to false; without the flag every matching group comes back  and `shared` tells them apart. | [optional] 
 **count** | **Int** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] 
 **startIndex** | **Int** | The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response. | [optional] 
 **filterValue** | **String** | The text to match against the group name. Omit it to get every group the caller may grant access to. | [optional] 

### Return type

[**GroupArrayWrapper**](GroupArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
let excludeShared = false // Bool | Keeps only the groups that do not have access to the entry yet, which is the set to offer when granting  access. Every returned entry then has `shared` set to false; without the flag every matching group comes back  and `shared` tells them apart. (optional)
let count = 987 // Int | The size of the page. It defaults to 100, which is also the largest value the operation accepts. (optional)
let startIndex = 987 // Int | The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response. (optional)
let filterValue = "filterValue_example" // String | The text to match against the group name. Omit it to get every group the caller may grant access to. (optional)

// Search groups for a folder
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

# **getGroupsWithFoldersShared** (third-party storage)
```swift
    open class func getGroupsWithFoldersShared(id: String, excludeShared: Bool? = nil, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, completion: @escaping (_ data: GroupArrayWrapper?, _ error: Error?) -> Void)
```

Returns the groups that can be given access to the folder with the ID given in the route, and reports for  each of them whether it already has access to that folder.  The caller has to be allowed to manage the access of that folder, and the ID has to belong to an existing  folder, so the operation answers 403 for a folder the caller cannot share and 404 for an ID that matches  nothing.  The call is read-only and, unlike the account search, works without a filter: leaving `filterValue` empty  returns every group instead of nothing, and a value narrows the result by group name.  The result is paged by `count` and `startIndex`, with the number of matching groups in the total count of the  response.  Pass `excludeShared` to keep only the groups that have no access to the folder yet, which is the set to offer  when adding new ones; without it every matching group comes back and `shared` tells them apart.  To search users and groups together, use `GET api/2.0/accounts/folder/{id}/search`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-folders-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage. | 
 **excludeShared** | **Bool** | Keeps only the groups that do not have access to the entry yet, which is the set to offer when granting  access. Every returned entry then has `shared` set to false; without the flag every matching group comes back  and `shared` tells them apart. | [optional] 
 **count** | **Int** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] 
 **startIndex** | **Int** | The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response. | [optional] 
 **filterValue** | **String** | The text to match against the group name. Omit it to get every group the caller may grant access to. | [optional] 

### Return type

[**GroupArrayWrapper**](GroupArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
let excludeShared = false // Bool | Keeps only the groups that do not have access to the entry yet, which is the set to offer when granting  access. Every returned entry then has `shared` set to false; without the flag every matching group comes back  and `shared` tells them apart. (optional)
let count = 987 // Int | The size of the page. It defaults to 100, which is also the largest value the operation accepts. (optional)
let startIndex = 987 // Int | The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response. (optional)
let filterValue = "filterValue_example" // String | The text to match against the group name. Omit it to get every group the caller may grant access to. (optional)

// Search groups for a folder (third-party storage)
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

Returns the groups that can be given access to the room with the ID given in the route, and reports for each  of them whether it already has access to that room.  The caller has to be allowed to manage the access of that room, and the ID has to belong to an existing room,  so the operation answers 403 for a room the caller cannot share and 404 for an ID that matches nothing.  The call is read-only and, unlike the account search, works without a filter: leaving `filterValue` empty  returns every group instead of nothing, and a value narrows the result by group name.  The result is paged by `count` and `startIndex`, with the number of matching groups in the total count of the  response.  Pass `excludeShared` to keep only the groups that have no access to the room yet, which is the set to offer  when adding new ones; without it every matching group comes back and `shared` tells them apart.  To search users and groups together, use `GET api/2.0/accounts/room/{id}/search`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-rooms-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage. | 
 **excludeShared** | **Bool** | Keeps only the groups that do not have access to the entry yet, which is the set to offer when granting  access. Every returned entry then has `shared` set to false; without the flag every matching group comes back  and `shared` tells them apart. | [optional] 
 **count** | **Int** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] 
 **startIndex** | **Int** | The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response. | [optional] 
 **filterValue** | **String** | The text to match against the group name. Omit it to get every group the caller may grant access to. | [optional] 

### Return type

[**GroupArrayWrapper**](GroupArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
let excludeShared = false // Bool | Keeps only the groups that do not have access to the entry yet, which is the set to offer when granting  access. Every returned entry then has `shared` set to false; without the flag every matching group comes back  and `shared` tells them apart. (optional)
let count = 987 // Int | The size of the page. It defaults to 100, which is also the largest value the operation accepts. (optional)
let startIndex = 987 // Int | The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response. (optional)
let filterValue = "filterValue_example" // String | The text to match against the group name. Omit it to get every group the caller may grant access to. (optional)

// Search groups for a room
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

# **getGroupsWithRoomsShared** (third-party storage)
```swift
    open class func getGroupsWithRoomsShared(id: String, excludeShared: Bool? = nil, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, completion: @escaping (_ data: GroupArrayWrapper?, _ error: Error?) -> Void)
```

Returns the groups that can be given access to the room with the ID given in the route, and reports for each  of them whether it already has access to that room.  The caller has to be allowed to manage the access of that room, and the ID has to belong to an existing room,  so the operation answers 403 for a room the caller cannot share and 404 for an ID that matches nothing.  The call is read-only and, unlike the account search, works without a filter: leaving `filterValue` empty  returns every group instead of nothing, and a value narrows the result by group name.  The result is paged by `count` and `startIndex`, with the number of matching groups in the total count of the  response.  Pass `excludeShared` to keep only the groups that have no access to the room yet, which is the set to offer  when adding new ones; without it every matching group comes back and `shared` tells them apart.  To search users and groups together, use `GET api/2.0/accounts/room/{id}/search`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-rooms-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage. | 
 **excludeShared** | **Bool** | Keeps only the groups that do not have access to the entry yet, which is the set to offer when granting  access. Every returned entry then has `shared` set to false; without the flag every matching group comes back  and `shared` tells them apart. | [optional] 
 **count** | **Int** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] 
 **startIndex** | **Int** | The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response. | [optional] 
 **filterValue** | **String** | The text to match against the group name. Omit it to get every group the caller may grant access to. | [optional] 

### Return type

[**GroupArrayWrapper**](GroupArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
let excludeShared = false // Bool | Keeps only the groups that do not have access to the entry yet, which is the set to offer when granting  access. Every returned entry then has `shared` set to false; without the flag every matching group comes back  and `shared` tells them apart. (optional)
let count = 987 // Int | The size of the page. It defaults to 100, which is also the largest value the operation accepts. (optional)
let startIndex = 987 // Int | The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response. (optional)
let filterValue = "filterValue_example" // String | The text to match against the group name. Omit it to get every group the caller may grant access to. (optional)

// Search groups for a room (third-party storage)
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

