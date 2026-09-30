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

Drops the personal storage limit of the listed accounts, so that each of them follows the portal default  again.  The caller needs the permission to edit the portal settings, which in practice means a DocSpace  administrator or the portal owner.  On a hosted portal the tariff has to include the storage statistics feature, otherwise the operation answers  402; a standalone installation has no such condition.  It takes only `userIds` - the `quota` field of the request body is not read here - and system accounts are  dropped from the list without an error.  The accounts are processed one by one and the answer holds the ones that were reached, each already showing  the portal default as its limit.  Nothing is deleted and no space is freed; only the limit that applies changes.  Use `PUT api/2.0/people/userquota` to give an account its own limit instead.

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

Gives the listed accounts their own storage limit, replacing the portal default for each of them.  The caller needs the permission to edit the portal settings, which in practice means a DocSpace  administrator or the portal owner.  `quota` is a whole number of bytes: a value of 0 or more becomes the personal limit, while any negative value  switches the personal limit off and hands the account back to the portal default.  The value has to fit the portal: a limit larger than the total storage the tariff allows, or larger than the  portal-wide quota on a standalone installation, is rejected with 400, and so is a value that is not a whole  number.  System accounts are dropped from the list without an error, the accounts are processed one by one, and the  answer holds the ones that were reached.  Setting a limit does not free any space and does not delete anything: an account already over its new limit  simply cannot add more.  Use `PUT api/2.0/people/resetquota` to return accounts to the portal default.

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

