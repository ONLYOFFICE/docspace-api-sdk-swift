# SecurityBannersVisibilityAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**setTenantBannerSettings**](SecurityBannersVisibilityAPI.md#settenantbannersettings) | **POST** /api/2.0/settings/banner | Set the banners visibility


# **setTenantBannerSettings**
```swift
    open class func setTenantBannerSettings(tenantBannerSettingsDto: TenantBannerSettingsDto? = nil, completion: @escaping (_ data: TenantBannerSettingsWrapper?, _ error: Error?) -> Void)
```

Sets whether the portal's promotional banners are hidden for every user. Available only on an Enterprise  license; every other plan is refused regardless of the caller's role. Requires Owner or DocSpaceAdmin (the  EditPortalSettings permission). The flag only takes effect on a Standalone (self-hosted) installation; on  SaaS, banners are always shown no matter what is saved here. This is a mutating, idempotent, portal-wide call:  it applies to every user on the tenant immediately. It returns the saved setting; read the current value at  any time from `GET api/2.0/settings/banner`.

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

