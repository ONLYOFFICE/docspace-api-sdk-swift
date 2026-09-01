# SettingsOwnerAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sendOwnerChangeInstructions**](SettingsOwnerAPI.md#sendownerchangeinstructions) | **POST** /api/2.0/settings/owner | Send the owner change instructions
[**updatePortalOwner**](SettingsOwnerAPI.md#updateportalowner) | **PUT** /api/2.0/settings/owner | Update the portal owner


# **sendOwnerChangeInstructions**
```swift
    open class func sendOwnerChangeInstructions(ownerIdSettingsRequestDto: OwnerIdSettingsRequestDto? = nil, completion: @escaping (_ data: OwnerChangeInstructionsWrapper?, _ error: Error?) -> Void)
```

Sends the instructions to change the DocSpace owner.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-owner-change-instructions/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ownerIdSettingsRequestDto** | [**OwnerIdSettingsRequestDto**](OwnerIdSettingsRequestDto.md) |  | [optional] 

### Return type

[**OwnerChangeInstructionsWrapper**](OwnerChangeInstructionsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ownerIdSettingsRequestDto = OwnerIdSettingsRequestDto(ownerId: 123) // OwnerIdSettingsRequestDto |  (optional)

// Send the owner change instructions
SettingsOwnerAPIApi.sendOwnerChangeInstructions(ownerIdSettingsRequestDto: ownerIdSettingsRequestDto) { (response, error) in
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

# **updatePortalOwner**
```swift
    open class func updatePortalOwner(ownerIdSettingsRequestDto: OwnerIdSettingsRequestDto? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Updates the current portal owner with a new one specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-portal-owner/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ownerIdSettingsRequestDto** | [**OwnerIdSettingsRequestDto**](OwnerIdSettingsRequestDto.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ownerIdSettingsRequestDto = OwnerIdSettingsRequestDto(ownerId: 123) // OwnerIdSettingsRequestDto |  (optional)

// Update the portal owner
SettingsOwnerAPIApi.updatePortalOwner(ownerIdSettingsRequestDto: ownerIdSettingsRequestDto) { (response, error) in
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

