# PeopleThemeAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changePortalTheme**](PeopleThemeAPI.md#changeportaltheme) | **PUT** /api/2.0/people/theme | Change the portal theme
[**getPortalTheme**](PeopleThemeAPI.md#getportaltheme) | **GET** /api/2.0/people/theme | Get the portal theme


# **changePortalTheme**
```swift
    open class func changePortalTheme(darkThemeSettingsRequestDto: DarkThemeSettingsRequestDto? = nil, completion: @escaping (_ data: DarkThemeSettingsWrapper?, _ error: Error?) -> Void)
```

Changes the current portal theme.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-portal-theme/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **darkThemeSettingsRequestDto** | [**DarkThemeSettingsRequestDto**](DarkThemeSettingsRequestDto.md) |  | [optional] 

### Return type

[**DarkThemeSettingsWrapper**](DarkThemeSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let darkThemeSettingsRequestDto = DarkThemeSettingsRequestDto(theme: DarkThemeSettingsType()) // DarkThemeSettingsRequestDto |  (optional)

// Change the portal theme
PeopleThemeAPIApi.changePortalTheme(darkThemeSettingsRequestDto: darkThemeSettingsRequestDto) { (response, error) in
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

# **getPortalTheme**
```swift
    open class func getPortalTheme(completion: @escaping (_ data: DarkThemeSettingsWrapper?, _ error: Error?) -> Void)
```

Returns a theme which is set to the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-theme/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**DarkThemeSettingsWrapper**](DarkThemeSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the portal theme
PeopleThemeAPIApi.getPortalTheme() { (response, error) in
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

