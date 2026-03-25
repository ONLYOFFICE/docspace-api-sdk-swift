# PeopleUserStatusAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getByStatus**](PeopleUserStatusAPI.md#getbystatus) | **GET** /api/2.0/people/status/{status} | Get profiles by status
[**updateUserActivationStatus**](PeopleUserStatusAPI.md#updateuseractivationstatus) | **PUT** /api/2.0/people/activationstatus/{activationstatus} | Set an activation status to the users
[**updateUserStatus**](PeopleUserStatusAPI.md#updateuserstatus) | **PUT** /api/2.0/people/status/{status} | Change a user status


# **getByStatus**
```swift
    open class func getByStatus(status: EmployeeStatus, filterBy: String? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterSeparator: String? = nil, filterValue: String? = nil, completion: @escaping (_ data: EmployeeFullArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of profiles filtered by the user status.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-by-status/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**EmployeeStatus**](.md) | The user status. | 
 **filterBy** | **String** | Specifies the criteria used to filter the profiles in the request. | [optional] 
 **count** | **Int** | The maximum number of user profiles to retrieve. | [optional] 
 **startIndex** | **Int** | The starting index for retrieving data in a paginated request. | [optional] 
 **sortBy** | **String** | Specifies the property or field name by which the results should be sorted. | [optional] 
 **sortOrder** | [**SortOrder**](.md) | The order in which the results are sorted. | [optional] 
 **filterSeparator** | **String** | Represents the separator used to split multiple filter criteria in a query string. | [optional] 
 **filterValue** | **String** | A string value representing additional filter criteria used in query parameters. | [optional] 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let status = EmployeeStatus() // EmployeeStatus | The user status.
let filterBy = "filterBy_example" // String | Specifies the criteria used to filter the profiles in the request. (optional)
let count = 987 // Int | The maximum number of user profiles to retrieve. (optional)
let startIndex = 987 // Int | The starting index for retrieving data in a paginated request. (optional)
let sortBy = "sortBy_example" // String | Specifies the property or field name by which the results should be sorted. (optional)
let sortOrder = SortOrder() // SortOrder | The order in which the results are sorted. (optional)
let filterSeparator = "filterSeparator_example" // String | Represents the separator used to split multiple filter criteria in a query string. (optional)
let filterValue = "filterValue_example" // String | A string value representing additional filter criteria used in query parameters. (optional)

// Get profiles by status
PeopleUserStatusAPIApi.getByStatus(status: status, filterBy: filterBy, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterSeparator: filterSeparator, filterValue: filterValue) { (response, error) in
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

# **updateUserActivationStatus**
```swift
    open class func updateUserActivationStatus(activationstatus: EmployeeActivationStatus, updateMembersRequestDto: UpdateMembersRequestDto, completion: @escaping (_ data: EmployeeFullArrayWrapper?, _ error: Error?) -> Void)
```

Sets the required activation status to the list of users with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-activation-status/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activationstatus** | [**EmployeeActivationStatus**](.md) | The new user activation status. | 
 **updateMembersRequestDto** | [**UpdateMembersRequestDto**](UpdateMembersRequestDto.md) | The request parameters for updating the user information. | 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let activationstatus = EmployeeActivationStatus() // EmployeeActivationStatus | The new user activation status.
let updateMembersRequestDto = UpdateMembersRequestDto(userIds: [123], resendAll: false) // UpdateMembersRequestDto | The request parameters for updating the user information.

// Set an activation status to the users
PeopleUserStatusAPIApi.updateUserActivationStatus(activationstatus: activationstatus, updateMembersRequestDto: updateMembersRequestDto) { (response, error) in
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

# **updateUserStatus**
```swift
    open class func updateUserStatus(status: EmployeeStatus, updateMembersRequestDto: UpdateMembersRequestDto, completion: @escaping (_ data: EmployeeFullArrayWrapper?, _ error: Error?) -> Void)
```

Changes a status of the users with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-status/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**EmployeeStatus**](.md) | The new user status. | 
 **updateMembersRequestDto** | [**UpdateMembersRequestDto**](UpdateMembersRequestDto.md) | The request parameters for updating the user information. | 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let status = EmployeeStatus() // EmployeeStatus | The new user status.
let updateMembersRequestDto = UpdateMembersRequestDto(userIds: [123], resendAll: false) // UpdateMembersRequestDto | The request parameters for updating the user information.

// Change a user status
PeopleUserStatusAPIApi.updateUserStatus(status: status, updateMembersRequestDto: updateMembersRequestDto) { (response, error) in
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

