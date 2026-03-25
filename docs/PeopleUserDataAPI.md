# PeopleUserDataAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDeletePersonalFolderProgress**](PeopleUserDataAPI.md#getdeletepersonalfolderprogress) | **GET** /api/2.0/people/delete/personal/progress | Get the progress of deleting the personal folder
[**getReassignProgress**](PeopleUserDataAPI.md#getreassignprogress) | **GET** /api/2.0/people/reassign/progress/{userid} | Get the reassignment progress
[**getRemoveProgress**](PeopleUserDataAPI.md#getremoveprogress) | **GET** /api/2.0/people/remove/progress/{userid} | Get the deletion progress
[**necessaryReassign**](PeopleUserDataAPI.md#necessaryreassign) | **GET** /api/2.0/people/reassign/necessary | Check data for reassignment need
[**sendInstructionsToDelete**](PeopleUserDataAPI.md#sendinstructionstodelete) | **PUT** /api/2.0/people/self/delete | Send the deletion instructions
[**startDeletePersonalFolder**](PeopleUserDataAPI.md#startdeletepersonalfolder) | **POST** /api/2.0/people/delete/personal/start | Delete the personal folder
[**startReassign**](PeopleUserDataAPI.md#startreassign) | **POST** /api/2.0/people/reassign/start | Start the data reassignment
[**startRemove**](PeopleUserDataAPI.md#startremove) | **POST** /api/2.0/people/remove/start | Start the data deletion
[**terminateReassign**](PeopleUserDataAPI.md#terminatereassign) | **PUT** /api/2.0/people/reassign/terminate | Terminate the data reassignment
[**terminateRemove**](PeopleUserDataAPI.md#terminateremove) | **PUT** /api/2.0/people/remove/terminate | Terminate the data deletion


# **getDeletePersonalFolderProgress**
```swift
    open class func getDeletePersonalFolderProgress(completion: @escaping (_ data: TaskProgressResponseWrapper?, _ error: Error?) -> Void)
```

Returns the progress of deleting the personal folder.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-delete-personal-folder-progress/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**TaskProgressResponseWrapper**](TaskProgressResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the progress of deleting the personal folder
PeopleUserDataAPIApi.getDeletePersonalFolderProgress() { (response, error) in
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

# **getReassignProgress**
```swift
    open class func getReassignProgress(userid: UUID, completion: @escaping (_ data: TaskProgressResponseWrapper?, _ error: Error?) -> Void)
```

Returns the progress of the started data reassignment for the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-reassign-progress/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **UUID** | The user ID. | 

### Return type

[**TaskProgressResponseWrapper**](TaskProgressResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userid = 987 // UUID | The user ID.

// Get the reassignment progress
PeopleUserDataAPIApi.getReassignProgress(userid: userid) { (response, error) in
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

# **getRemoveProgress**
```swift
    open class func getRemoveProgress(userid: UUID, completion: @escaping (_ data: TaskProgressResponseWrapper?, _ error: Error?) -> Void)
```

Returns the progress of the started data deletion for the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-remove-progress/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **UUID** | The user ID. | 

### Return type

[**TaskProgressResponseWrapper**](TaskProgressResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userid = 987 // UUID | The user ID.

// Get the deletion progress
PeopleUserDataAPIApi.getRemoveProgress(userid: userid) { (response, error) in
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

# **necessaryReassign**
```swift
    open class func necessaryReassign(userId: UUID? = nil, type: EmployeeType? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Checks whether the reassignment of rooms and shared files is required.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/necessary-reassign/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **UUID** | The user ID. | [optional] 
 **type** | [**EmployeeType**](.md) | The expected user type. | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userId = 987 // UUID | The user ID. (optional)
let type = EmployeeType() // EmployeeType | The expected user type. (optional)

// Check data for reassignment need
PeopleUserDataAPIApi.necessaryReassign(userId: userId, type: type) { (response, error) in
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

# **sendInstructionsToDelete**
```swift
    open class func sendInstructionsToDelete(completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Sends the instructions for deleting a user profile.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-instructions-to-delete/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Send the deletion instructions
PeopleUserDataAPIApi.sendInstructionsToDelete() { (response, error) in
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

# **startDeletePersonalFolder**
```swift
    open class func startDeletePersonalFolder(completion: @escaping (_ data: TaskProgressResponseWrapper?, _ error: Error?) -> Void)
```

Starts deleting the personal folder.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-delete-personal-folder/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**TaskProgressResponseWrapper**](TaskProgressResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Delete the personal folder
PeopleUserDataAPIApi.startDeletePersonalFolder() { (response, error) in
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

# **startReassign**
```swift
    open class func startReassign(startReassignRequestDto: StartReassignRequestDto? = nil, completion: @escaping (_ data: TaskProgressResponseWrapper?, _ error: Error?) -> Void)
```

Starts the data reassignment for the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-reassign/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startReassignRequestDto** | [**StartReassignRequestDto**](StartReassignRequestDto.md) |  | [optional] 

### Return type

[**TaskProgressResponseWrapper**](TaskProgressResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let startReassignRequestDto = StartReassignRequestDto(fromUserId: 123, toUserId: 123, deleteProfile: false) // StartReassignRequestDto |  (optional)

// Start the data reassignment
PeopleUserDataAPIApi.startReassign(startReassignRequestDto: startReassignRequestDto) { (response, error) in
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

# **startRemove**
```swift
    open class func startRemove(terminateRequestDto: TerminateRequestDto? = nil, completion: @escaping (_ data: TaskProgressResponseWrapper?, _ error: Error?) -> Void)
```

Starts the data deletion for the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-remove/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **terminateRequestDto** | [**TerminateRequestDto**](TerminateRequestDto.md) |  | [optional] 

### Return type

[**TaskProgressResponseWrapper**](TaskProgressResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let terminateRequestDto = TerminateRequestDto(userId: 123) // TerminateRequestDto |  (optional)

// Start the data deletion
PeopleUserDataAPIApi.startRemove(terminateRequestDto: terminateRequestDto) { (response, error) in
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

# **terminateReassign**
```swift
    open class func terminateReassign(terminateRequestDto: TerminateRequestDto? = nil, completion: @escaping (_ data: TaskProgressResponseWrapper?, _ error: Error?) -> Void)
```

Terminates the data reassignment for the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-reassign/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **terminateRequestDto** | [**TerminateRequestDto**](TerminateRequestDto.md) |  | [optional] 

### Return type

[**TaskProgressResponseWrapper**](TaskProgressResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let terminateRequestDto = TerminateRequestDto(userId: 123) // TerminateRequestDto |  (optional)

// Terminate the data reassignment
PeopleUserDataAPIApi.terminateReassign(terminateRequestDto: terminateRequestDto) { (response, error) in
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

# **terminateRemove**
```swift
    open class func terminateRemove(terminateRequestDto: TerminateRequestDto? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Terminates the data deletion for the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-remove/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **terminateRequestDto** | [**TerminateRequestDto**](TerminateRequestDto.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let terminateRequestDto = TerminateRequestDto(userId: 123) // TerminateRequestDto |  (optional)

// Terminate the data deletion
PeopleUserDataAPIApi.terminateRemove(terminateRequestDto: terminateRequestDto) { (response, error) in
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

