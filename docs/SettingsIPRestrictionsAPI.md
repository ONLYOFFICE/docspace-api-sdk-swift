# SettingsIPRestrictionsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getIpRestrictions**](SettingsIPRestrictionsAPI.md#getiprestrictions) | **GET** /api/2.0/settings/iprestrictions | Get the IP portal restrictions
[**readIpRestrictionsSettings**](SettingsIPRestrictionsAPI.md#readiprestrictionssettings) | **GET** /api/2.0/settings/iprestrictions/settings | Get the IP restriction settings
[**saveIpRestrictions**](SettingsIPRestrictionsAPI.md#saveiprestrictions) | **PUT** /api/2.0/settings/iprestrictions | Update the IP restrictions
[**updateIpRestrictionsSettings**](SettingsIPRestrictionsAPI.md#updateiprestrictionssettings) | **PUT** /api/2.0/settings/iprestrictions/settings | Update the IP restriction settings


# **getIpRestrictions**
```swift
    open class func getIpRestrictions(completion: @escaping (_ data: IPRestrictionArrayWrapper?, _ error: Error?) -> Void)
```

Returns the IP portal restrictions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-ip-restrictions/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**IPRestrictionArrayWrapper**](IPRestrictionArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the IP portal restrictions
SettingsIPRestrictionsAPIApi.getIpRestrictions() { (response, error) in
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

# **readIpRestrictionsSettings**
```swift
    open class func readIpRestrictionsSettings(completion: @escaping (_ data: IPRestrictionsSettingsWrapper?, _ error: Error?) -> Void)
```

Returns the IP restriction settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/read-ip-restrictions-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**IPRestrictionsSettingsWrapper**](IPRestrictionsSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the IP restriction settings
SettingsIPRestrictionsAPIApi.readIpRestrictionsSettings() { (response, error) in
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

# **saveIpRestrictions**
```swift
    open class func saveIpRestrictions(ipRestrictionsDto: IpRestrictionsDto? = nil, completion: @escaping (_ data: IpRestrictionsWrapper?, _ error: Error?) -> Void)
```

Updates the IP restrictions with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-ip-restrictions/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ipRestrictionsDto** | [**IpRestrictionsDto**](IpRestrictionsDto.md) |  | [optional] 

### Return type

[**IpRestrictionsWrapper**](IpRestrictionsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ipRestrictionsDto = IpRestrictionsDto(ipRestrictions: [IpRestrictionBase(ip: "ip_example", forAdmin: true)], enable: true) // IpRestrictionsDto |  (optional)

// Update the IP restrictions
SettingsIPRestrictionsAPIApi.saveIpRestrictions(ipRestrictionsDto: ipRestrictionsDto) { (response, error) in
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

# **updateIpRestrictionsSettings**
```swift
    open class func updateIpRestrictionsSettings(ipRestrictionsDto: IpRestrictionsDto? = nil, completion: @escaping (_ data: IpRestrictionsWrapper?, _ error: Error?) -> Void)
```

Updates the IP restriction settings with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-ip-restrictions-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ipRestrictionsDto** | [**IpRestrictionsDto**](IpRestrictionsDto.md) |  | [optional] 

### Return type

[**IpRestrictionsWrapper**](IpRestrictionsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ipRestrictionsDto = IpRestrictionsDto(ipRestrictions: [IpRestrictionBase(ip: "ip_example", forAdmin: true)], enable: true) // IpRestrictionsDto |  (optional)

// Update the IP restriction settings
SettingsIPRestrictionsAPIApi.updateIpRestrictionsSettings(ipRestrictionsDto: ipRestrictionsDto) { (response, error) in
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

