# PeopleQuotaAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**resetUsersQuota**](PeopleQuotaAPI.md#resetusersquota) | **PUT** /api/2.0/people/resetquota | Reset a user quota limit
[**updateUserQuota**](PeopleQuotaAPI.md#updateuserquota) | **PUT** /api/2.0/people/userquota | Change a user quota limit


# **resetUsersQuota**
```swift
    open class func resetUsersQuota(updateMembersQuotaRequestDto: UpdateMembersQuotaRequestDto? = nil, completion: @escaping (_ data: EmployeeFullArrayWrapper?, _ error: Error?) -> Void)
```

Resets a quota limit of users with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-users-quota/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateMembersQuotaRequestDto** | [**UpdateMembersQuotaRequestDto**](UpdateMembersQuotaRequestDto.md) |  | [optional] 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateMembersQuotaRequestDto = UpdateMembersQuotaRequestDto(userIds: [123], quota: UpdateMembersQuotaRequestDto_quota()) // UpdateMembersQuotaRequestDto |  (optional)

// Reset a user quota limit
PeopleQuotaAPIApi.resetUsersQuota(updateMembersQuotaRequestDto: updateMembersQuotaRequestDto) { (response, error) in
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

# **updateUserQuota**
```swift
    open class func updateUserQuota(updateMembersQuotaRequestDto: UpdateMembersQuotaRequestDto? = nil, completion: @escaping (_ data: EmployeeFullArrayWrapper?, _ error: Error?) -> Void)
```

Changes a quota limit for the users with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-quota/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateMembersQuotaRequestDto** | [**UpdateMembersQuotaRequestDto**](UpdateMembersQuotaRequestDto.md) |  | [optional] 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateMembersQuotaRequestDto = UpdateMembersQuotaRequestDto(userIds: [123], quota: UpdateMembersQuotaRequestDto_quota()) // UpdateMembersQuotaRequestDto |  (optional)

// Change a user quota limit
PeopleQuotaAPIApi.updateUserQuota(updateMembersQuotaRequestDto: updateMembersQuotaRequestDto) { (response, error) in
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

