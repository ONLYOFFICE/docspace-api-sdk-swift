# SecurityAccessToDevToolsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**setTenantDevToolsAccessSettings**](SecurityAccessToDevToolsAPI.md#settenantdevtoolsaccesssettings) | **POST** /api/2.0/settings/devtoolsaccess | Set the Developer Tools access settings


# **setTenantDevToolsAccessSettings**
```swift
    open class func setTenantDevToolsAccessSettings(tenantDevToolsAccessSettingsDto: TenantDevToolsAccessSettingsDto? = nil, completion: @escaping (_ data: TenantDevToolsAccessSettingsWrapper?, _ error: Error?) -> Void)
```

Sets the Developer Tools access settings for the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-dev-tools-access-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantDevToolsAccessSettingsDto** | [**TenantDevToolsAccessSettingsDto**](TenantDevToolsAccessSettingsDto.md) |  | [optional] 

### Return type

[**TenantDevToolsAccessSettingsWrapper**](TenantDevToolsAccessSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tenantDevToolsAccessSettingsDto = TenantDevToolsAccessSettingsDto(limitedAccessForUsers: true) // TenantDevToolsAccessSettingsDto |  (optional)

// Set the Developer Tools access settings
SecurityAccessToDevToolsAPIApi.setTenantDevToolsAccessSettings(tenantDevToolsAccessSettingsDto: tenantDevToolsAccessSettingsDto) { (response, error) in
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

