# SecurityBannersVisibilityAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**setTenantBannerSettings**](SecurityBannersVisibilityAPI.md#settenantbannersettings) | **POST** /api/2.0/settings/banner | Set the banners visibility


# **setTenantBannerSettings**
```swift
    open class func setTenantBannerSettings(tenantBannerSettingsDto: TenantBannerSettingsDto? = nil, completion: @escaping (_ data: TenantBannerSettingsWrapper?, _ error: Error?) -> Void)
```

Sets the visibility settings of the promotional banners in the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-banner-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantBannerSettingsDto** | [**TenantBannerSettingsDto**](TenantBannerSettingsDto.md) |  | [optional] 

### Return type

[**TenantBannerSettingsWrapper**](TenantBannerSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tenantBannerSettingsDto = TenantBannerSettingsDto(hidden: true) // TenantBannerSettingsDto |  (optional)

// Set the banners visibility
SecurityBannersVisibilityAPIApi.setTenantBannerSettings(tenantBannerSettingsDto: tenantBannerSettingsDto) { (response, error) in
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

