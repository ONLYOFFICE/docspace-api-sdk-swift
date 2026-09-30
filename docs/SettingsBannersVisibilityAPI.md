# SettingsBannersVisibilityAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTenantBannerSettings**](SettingsBannersVisibilityAPI.md#gettenantbannersettings) | **GET** /api/2.0/settings/banner | Get the banners visibility


# **getTenantBannerSettings**
```swift
    open class func getTenantBannerSettings(completion: @escaping (_ data: TenantBannerSettingsWrapper?, _ error: Error?) -> Void)
```

Returns whether the portal's promotional banners are currently hidden from every user's interface. Requires an  authenticated session; every role can read it, since the flag affects what they see regardless of their own  permissions. This is a read-only, idempotent call. The flag only takes effect on a Standalone (self-hosted)  installation; on SaaS, banners are always shown no matter what is saved here. Change the setting with  `POST api/2.0/settings/banner`, which additionally requires an Enterprise license.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-banner-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**TenantBannerSettingsWrapper**](TenantBannerSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the banners visibility
SettingsBannersVisibilityAPIApi.getTenantBannerSettings() { (response, error) in
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

