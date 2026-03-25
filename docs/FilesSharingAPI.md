# FilesSharingAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**applyExternalSharePassword**](FilesSharingAPI.md#applyexternalsharepassword) | **POST** /api/2.0/files/share/{key}/password | Apply external data password
[**changeFileOwner**](FilesSharingAPI.md#changefileowner) | **POST** /api/2.0/files/owner | Change the file owner
[**getExternalShareData**](FilesSharingAPI.md#getexternalsharedata) | **GET** /api/2.0/files/share/{key} | Get the external data
[**getFileSecurityInfo**](FilesSharingAPI.md#getfilesecurityinfo) | **GET** /api/2.0/files/file/{id}/share | Get the shared file information
[**getFolderSecurityInfo**](FilesSharingAPI.md#getfoldersecurityinfo) | **GET** /api/2.0/files/folder/{id}/share | Get the shared folder information
[**getGroupsMembersWithFileSecurity**](FilesSharingAPI.md#getgroupsmemberswithfilesecurity) | **GET** /api/2.0/files/file/{fileId}/group/{groupId}/share | Get file group members with security information
[**getGroupsMembersWithFolderSecurity**](FilesSharingAPI.md#getgroupsmemberswithfoldersecurity) | **GET** /api/2.0/files/folder/{folderId}/group/{groupId}/share | Get folder group members with security information
[**getSecurityInfo**](FilesSharingAPI.md#getsecurityinfo) | **POST** /api/2.0/files/share | Get the sharing rights
[**getSharedUsers**](FilesSharingAPI.md#getsharedusers) | **GET** /api/2.0/files/file/{fileId}/sharedusers | Get user access rights by file ID
[**removeSecurityInfo**](FilesSharingAPI.md#removesecurityinfo) | **DELETE** /api/2.0/files/share | Remove the sharing rights
[**sendEditorNotify**](FilesSharingAPI.md#sendeditornotify) | **POST** /api/2.0/files/file/{fileId}/sendeditornotify | Send the mention message
[**setFileSecurityInfo**](FilesSharingAPI.md#setfilesecurityinfo) | **PUT** /api/2.0/files/file/{fileId}/share | Share a file
[**setFolderSecurityInfo**](FilesSharingAPI.md#setfoldersecurityinfo) | **PUT** /api/2.0/files/folder/{folderId}/share | Share a folder
[**setSecurityInfo**](FilesSharingAPI.md#setsecurityinfo) | **PUT** /api/2.0/files/share | Set the sharing rights


# **applyExternalSharePassword**
```swift
    open class func applyExternalSharePassword(key: String, externalShareRequestParam: ExternalShareRequestParam, completion: @escaping (_ data: ExternalShareWrapper?, _ error: Error?) -> Void)
```

Applies a password specified in the request to get the external data.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/apply-external-share-password/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String** | The unique document identifier. | 
 **externalShareRequestParam** | [**ExternalShareRequestParam**](ExternalShareRequestParam.md) | The external data share request parameters. | 

### Return type

[**ExternalShareWrapper**](ExternalShareWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let key = "key_example" // String | The unique document identifier.
let externalShareRequestParam = ExternalShareRequestParam(password: "password_example") // ExternalShareRequestParam | The external data share request parameters.

// Apply external data password
FilesSharingAPIApi.applyExternalSharePassword(key: key, externalShareRequestParam: externalShareRequestParam) { (response, error) in
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

# **changeFileOwner**
```swift
    open class func changeFileOwner(changeOwnerRequestDto: ChangeOwnerRequestDto? = nil, completion: @escaping (_ data: FileEntryBaseArrayWrapper?, _ error: Error?) -> Void)
```

Changes the owner of the file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-file-owner/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **changeOwnerRequestDto** | [**ChangeOwnerRequestDto**](ChangeOwnerRequestDto.md) |  | [optional] 

### Return type

[**FileEntryBaseArrayWrapper**](FileEntryBaseArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let changeOwnerRequestDto = ChangeOwnerRequestDto(folderIds: [BatchRequestDto_allOf_fileIds()], fileIds: [nil], userId: 123) // ChangeOwnerRequestDto |  (optional)

// Change the file owner
FilesSharingAPIApi.changeFileOwner(changeOwnerRequestDto: changeOwnerRequestDto) { (response, error) in
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

# **getExternalShareData**
```swift
    open class func getExternalShareData(key: String, fileId: String? = nil, folderId: String? = nil, completion: @escaping (_ data: ExternalShareWrapper?, _ error: Error?) -> Void)
```

Returns the external data by the key specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-external-share-data/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String** | The unique key of the external shared data. | 
 **fileId** | **String** | The unique document identifier. | [optional] 
 **folderId** | **String** | The unique folder identifier. | [optional] 

### Return type

[**ExternalShareWrapper**](ExternalShareWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let key = "key_example" // String | The unique key of the external shared data.
let fileId = "fileId_example" // String | The unique document identifier. (optional)
let folderId = "folderId_example" // String | The unique folder identifier. (optional)

// Get the external data
FilesSharingAPIApi.getExternalShareData(key: key, fileId: fileId, folderId: folderId) { (response, error) in
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

# **getFileSecurityInfo**
```swift
    open class func getFileSecurityInfo(id: Int, count: Int? = nil, startIndex: Int? = nil, completion: @escaping (_ data: FileShareArrayWrapper?, _ error: Error?) -> Void)
```

Returns the detailed information about the shared file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-security-info/).

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

// Get the shared file information
FilesSharingAPIApi.getFileSecurityInfo(id: id, count: count, startIndex: startIndex) { (response, error) in
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

# **getFolderSecurityInfo**
```swift
    open class func getFolderSecurityInfo(id: Int, count: Int? = nil, startIndex: Int? = nil, completion: @escaping (_ data: FileShareArrayWrapper?, _ error: Error?) -> Void)
```

Returns the detailed information about the shared folder with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-security-info/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The folder unique identifier. | 
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

let id = 987 // Int | The folder unique identifier.
let count = 987 // Int | The number of items to retrieve in the request. (optional)
let startIndex = 987 // Int | The starting index for the query results. (optional)

// Get the shared folder information
FilesSharingAPIApi.getFolderSecurityInfo(id: id, count: count, startIndex: startIndex) { (response, error) in
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

# **getGroupsMembersWithFileSecurity**
```swift
    open class func getGroupsMembersWithFileSecurity(fileId: Int, groupId: UUID, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, completion: @escaping (_ data: GroupMemberSecurityRequestArrayWrapper?, _ error: Error?) -> Void)
```

Returns the group members with their file security information.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-file-security/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID. | 
 **groupId** | **UUID** | The group ID. | 
 **count** | **Int** | The number of items to be retrieved in the current query. | [optional] 
 **startIndex** | **Int** | The starting index for the query result set. | [optional] 
 **filterValue** | **String** | The filter value used for searching or querying group members based on text input. | [optional] 

### Return type

[**GroupMemberSecurityRequestArrayWrapper**](GroupMemberSecurityRequestArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID.
let groupId = 987 // UUID | The group ID.
let count = 987 // Int | The number of items to be retrieved in the current query. (optional)
let startIndex = 987 // Int | The starting index for the query result set. (optional)
let filterValue = "filterValue_example" // String | The filter value used for searching or querying group members based on text input. (optional)

// Get file group members with security information
FilesSharingAPIApi.getGroupsMembersWithFileSecurity(fileId: fileId, groupId: groupId, count: count, startIndex: startIndex, filterValue: filterValue) { (response, error) in
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

# **getGroupsMembersWithFolderSecurity**
```swift
    open class func getGroupsMembersWithFolderSecurity(folderId: Int, groupId: UUID, count: Int? = nil, startIndex: Int? = nil, filterValue: String? = nil, completion: @escaping (_ data: GroupMemberSecurityRequestArrayWrapper?, _ error: Error?) -> Void)
```

Returns the group members with their folder security information.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-folder-security/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** | The folder ID. | 
 **groupId** | **UUID** | The group ID. | 
 **count** | **Int** | The number of items to be retrieved in the current query. | [optional] 
 **startIndex** | **Int** | The starting index for the query result set. | [optional] 
 **filterValue** | **String** | The filter value used for searching or querying group members based on text input. | [optional] 

### Return type

[**GroupMemberSecurityRequestArrayWrapper**](GroupMemberSecurityRequestArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | The folder ID.
let groupId = 987 // UUID | The group ID.
let count = 987 // Int | The number of items to be retrieved in the current query. (optional)
let startIndex = 987 // Int | The starting index for the query result set. (optional)
let filterValue = "filterValue_example" // String | The filter value used for searching or querying group members based on text input. (optional)

// Get folder group members with security information
FilesSharingAPIApi.getGroupsMembersWithFolderSecurity(folderId: folderId, groupId: groupId, count: count, startIndex: startIndex, filterValue: filterValue) { (response, error) in
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

# **getSecurityInfo**
```swift
    open class func getSecurityInfo(baseBatchRequestDto: BaseBatchRequestDto? = nil, completion: @escaping (_ data: FileShareArrayWrapper?, _ error: Error?) -> Void)
```

Returns the sharing rights for all the files and folders specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-security-info/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **baseBatchRequestDto** | [**BaseBatchRequestDto**](BaseBatchRequestDto.md) |  | [optional] 

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let baseBatchRequestDto = BaseBatchRequestDto(returnSingleOperation: false, folderIds: [BaseBatchRequestDto_allOf_folderIds()], fileIds: [BaseBatchRequestDto_allOf_fileIds()]) // BaseBatchRequestDto |  (optional)

// Get the sharing rights
FilesSharingAPIApi.getSecurityInfo(baseBatchRequestDto: baseBatchRequestDto) { (response, error) in
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

# **getSharedUsers**
```swift
    open class func getSharedUsers(fileId: Int, completion: @escaping (_ data: MentionWrapperArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of users with their access rights to the file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-shared-users/).

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

// Get user access rights by file ID
FilesSharingAPIApi.getSharedUsers(fileId: fileId) { (response, error) in
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

# **removeSecurityInfo**
```swift
    open class func removeSecurityInfo(baseBatchRequestDto: BaseBatchRequestDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Removes the sharing rights from all the files and folders specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-security-info/).

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

let baseBatchRequestDto = BaseBatchRequestDto(returnSingleOperation: false, folderIds: [BaseBatchRequestDto_allOf_folderIds()], fileIds: [BaseBatchRequestDto_allOf_fileIds()]) // BaseBatchRequestDto |  (optional)

// Remove the sharing rights
FilesSharingAPIApi.removeSecurityInfo(baseBatchRequestDto: baseBatchRequestDto) { (response, error) in
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

# **sendEditorNotify**
```swift
    open class func sendEditorNotify(fileId: Int, mentionMessageWrapper: MentionMessageWrapper? = nil, completion: @escaping (_ data: AceShortWrapperArrayWrapper?, _ error: Error?) -> Void)
```

Sends a message to the users who are mentioned in the file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-editor-notify/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID with the mention message. | 
 **mentionMessageWrapper** | [**MentionMessageWrapper**](MentionMessageWrapper.md) | The mention message. | [optional] 

### Return type

[**AceShortWrapperArrayWrapper**](AceShortWrapperArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID with the mention message.
let mentionMessageWrapper = MentionMessageWrapper(actionLink: ActionLinkConfig(action: ActionConfig(data: "data_example", type: "type_example")), emails: ["emails_example"], message: "message_example") // MentionMessageWrapper | The mention message. (optional)

// Send the mention message
FilesSharingAPIApi.sendEditorNotify(fileId: fileId, mentionMessageWrapper: mentionMessageWrapper) { (response, error) in
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

# **setFileSecurityInfo**
```swift
    open class func setFileSecurityInfo(fileId: Int, securityInfoSimpleRequestDto: SecurityInfoSimpleRequestDto, completion: @escaping (_ data: FileShareArrayWrapper?, _ error: Error?) -> Void)
```

Sets the sharing settings to a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-security-info/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **Int** | The file ID. | 
 **securityInfoSimpleRequestDto** | [**SecurityInfoSimpleRequestDto**](SecurityInfoSimpleRequestDto.md) | The parameters of the security information simple request. | 

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileId = 987 // Int | The file ID.
let securityInfoSimpleRequestDto = SecurityInfoSimpleRequestDto(share: [FileShareParams(email: "email_example", shareTo: 123, access: FileShare())], notify: true, sharingMessage: "sharingMessage_example") // SecurityInfoSimpleRequestDto | The parameters of the security information simple request.

// Share a file
FilesSharingAPIApi.setFileSecurityInfo(fileId: fileId, securityInfoSimpleRequestDto: securityInfoSimpleRequestDto) { (response, error) in
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

# **setFolderSecurityInfo**
```swift
    open class func setFolderSecurityInfo(folderId: Int, securityInfoSimpleRequestDto: SecurityInfoSimpleRequestDto, completion: @escaping (_ data: FileShareArrayWrapper?, _ error: Error?) -> Void)
```

Sets the sharing settings to a folder with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-security-info/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **Int** | The folder ID. | 
 **securityInfoSimpleRequestDto** | [**SecurityInfoSimpleRequestDto**](SecurityInfoSimpleRequestDto.md) | The parameters of the security information simple request. | 

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let folderId = 987 // Int | The folder ID.
let securityInfoSimpleRequestDto = SecurityInfoSimpleRequestDto(share: [FileShareParams(email: "email_example", shareTo: 123, access: FileShare())], notify: true, sharingMessage: "sharingMessage_example") // SecurityInfoSimpleRequestDto | The parameters of the security information simple request.

// Share a folder
FilesSharingAPIApi.setFolderSecurityInfo(folderId: folderId, securityInfoSimpleRequestDto: securityInfoSimpleRequestDto) { (response, error) in
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

# **setSecurityInfo**
```swift
    open class func setSecurityInfo(securityInfoRequestDto: SecurityInfoRequestDto? = nil, completion: @escaping (_ data: FileShareArrayWrapper?, _ error: Error?) -> Void)
```

Sets the sharing rights to all the files and folders specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-security-info/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **securityInfoRequestDto** | [**SecurityInfoRequestDto**](SecurityInfoRequestDto.md) |  | [optional] 

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let securityInfoRequestDto = SecurityInfoRequestDto(folderIds: [DuplicateRequestDto_allOf_fileIds()], fileIds: [nil], share: [FileShareParams(email: "email_example", shareTo: 123, access: FileShare())], notify: true, sharingMessage: "sharingMessage_example") // SecurityInfoRequestDto |  (optional)

// Set the sharing rights
FilesSharingAPIApi.setSecurityInfo(securityInfoRequestDto: securityInfoRequestDto) { (response, error) in
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

