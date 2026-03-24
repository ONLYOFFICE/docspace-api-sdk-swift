# PeopleUserTypeAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUserTypeUpdateProgress**](PeopleUserTypeAPI.md#getusertypeupdateprogress) | **GET** /api/2.0/people/type/progress/{userid} | Get the progress of updating user type
[**starUserTypetUpdate**](PeopleUserTypeAPI.md#starusertypetupdate) | **POST** /api/2.0/people/type | Start updating user type
[**terminateUserTypeUpdate**](PeopleUserTypeAPI.md#terminateusertypeupdate) | **PUT** /api/2.0/people/type/terminate | Terminate updating user type
[**updateUserType**](PeopleUserTypeAPI.md#updateusertype) | **PUT** /api/2.0/people/type/{type} | Change a user type


# **getUserTypeUpdateProgress**
```swift
    open class func getUserTypeUpdateProgress(userid: UUID, completion: @escaping (_ data: TaskProgressResponseWrapper?, _ error: Error?) -> Void)
```

Returns the progress of updating the user type.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-type-update-progress/).

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

// Get the progress of updating user type
PeopleUserTypeAPIApi.getUserTypeUpdateProgress(userid: userid) { (response, error) in
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

# **starUserTypetUpdate**
```swift
    open class func starUserTypetUpdate(startUpdateUserTypeDto: StartUpdateUserTypeDto? = nil, completion: @escaping (_ data: TaskProgressResponseWrapper?, _ error: Error?) -> Void)
```

Starts updating the type of the user or guest when reassigning rooms and shared files.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/star-user-typet-update/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startUpdateUserTypeDto** | [**StartUpdateUserTypeDto**](StartUpdateUserTypeDto.md) |  | [optional] 

### Return type

[**TaskProgressResponseWrapper**](TaskProgressResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let startUpdateUserTypeDto = StartUpdateUserTypeDto(type: EmployeeType(), userId: 123, reassignUserId: 123) // StartUpdateUserTypeDto |  (optional)

// Start updating user type
PeopleUserTypeAPIApi.starUserTypetUpdate(startUpdateUserTypeDto: startUpdateUserTypeDto) { (response, error) in
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

# **terminateUserTypeUpdate**
```swift
    open class func terminateUserTypeUpdate(terminateRequestDto: TerminateRequestDto? = nil, completion: @escaping (_ data: TaskProgressResponseWrapper?, _ error: Error?) -> Void)
```

Terminates the process of updating the type of the user or guest.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-user-type-update/).

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

// Terminate updating user type
PeopleUserTypeAPIApi.terminateUserTypeUpdate(terminateRequestDto: terminateRequestDto) { (response, error) in
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

# **updateUserType**
```swift
    open class func updateUserType(type: EmployeeType, updateMembersRequestDto: UpdateMembersRequestDto, completion: @escaping (_ data: EmployeeFullArrayWrapper?, _ error: Error?) -> Void)
```

Changes a type of the users with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-type/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | [**EmployeeType**](.md) | The new user type. | 
 **updateMembersRequestDto** | [**UpdateMembersRequestDto**](UpdateMembersRequestDto.md) | The request parameters for updating the user information. | 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let type = EmployeeType() // EmployeeType | The new user type.
let updateMembersRequestDto = UpdateMembersRequestDto(userIds: [123], resendAll: true) // UpdateMembersRequestDto | The request parameters for updating the user information.

// Change a user type
PeopleUserTypeAPIApi.updateUserType(type: type, updateMembersRequestDto: updateMembersRequestDto) { (response, error) in
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

