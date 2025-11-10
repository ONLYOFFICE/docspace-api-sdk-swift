# PortalQuotaAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPortalQuota**](PortalQuotaAPI.md#getportalquota) | **GET** /api/2.0/portal/quota | Get a portal quota
[**getPortalTariff**](PortalQuotaAPI.md#getportaltariff) | **GET** /api/2.0/portal/tariff | Get a portal tariff
[**getPortalUsedSpace**](PortalQuotaAPI.md#getportalusedspace) | **GET** /api/2.0/portal/usedspace | Get the portal used space
[**getRightQuota**](PortalQuotaAPI.md#getrightquota) | **GET** /api/2.0/portal/quota/right | Get the recommended quota


# **getPortalQuota**
```swift
    open class func getPortalQuota(completion: @escaping (_ data: TenantQuotaWrapper?, _ error: Error?) -> Void)
```

Returns the current portal quota.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-quota/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**TenantQuotaWrapper**](TenantQuotaWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get a portal quota
PortalQuotaAPIApi.getPortalQuota() { (response, error) in
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

# **getPortalTariff**
```swift
    open class func getPortalTariff(refresh: Bool? = nil, completion: @escaping (_ data: TariffWrapper?, _ error: Error?) -> Void)
```

Returns the current portal tariff.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-tariff/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refresh** | **Bool** | The value indicating whether the current portal tariff information should be refreshed. | [optional] 

### Return type

[**TariffWrapper**](TariffWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let refresh = true // Bool | The value indicating whether the current portal tariff information should be refreshed. (optional)

// Get a portal tariff
PortalQuotaAPIApi.getPortalTariff(refresh: refresh) { (response, error) in
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

# **getPortalUsedSpace**
```swift
    open class func getPortalUsedSpace(completion: @escaping (_ data: DoubleWrapper?, _ error: Error?) -> Void)
```

Returns the used space of the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-used-space/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**DoubleWrapper**](DoubleWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the portal used space
PortalQuotaAPIApi.getPortalUsedSpace() { (response, error) in
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

# **getRightQuota**
```swift
    open class func getRightQuota(completion: @escaping (_ data: TenantQuotaWrapper?, _ error: Error?) -> Void)
```

Returns the recommended quota for the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-right-quota/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**TenantQuotaWrapper**](TenantQuotaWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the recommended quota
PortalQuotaAPIApi.getRightQuota() { (response, error) in
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

