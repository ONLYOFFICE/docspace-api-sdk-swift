# SecurityCSPAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**configureCsp**](SecurityCSPAPI.md#configurecsp) | **POST** /api/2.0/security/csp | Configure CSP settings
[**getCspSettings**](SecurityCSPAPI.md#getcspsettings) | **GET** /api/2.0/security/csp | Get CSP settings


# **configureCsp**
```swift
    open class func configureCsp(cspRequestsDto: CspRequestsDto? = nil, completion: @escaping (_ data: CspWrapper?, _ error: Error?) -> Void)
```

Configures the CSP (Content Security Policy) settings for the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/configure-csp/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cspRequestsDto** | [**CspRequestsDto**](CspRequestsDto.md) |  | [optional] 

### Return type

[**CspWrapper**](CspWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let cspRequestsDto = CspRequestsDto(domains: ["domains_example"]) // CspRequestsDto |  (optional)

// Configure CSP settings
SecurityCSPAPIApi.configureCsp(cspRequestsDto: cspRequestsDto) { (response, error) in
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

# **getCspSettings**
```swift
    open class func getCspSettings(completion: @escaping (_ data: CspWrapper?, _ error: Error?) -> Void)
```

Returns the CSP (Content Security Policy) settings for the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-csp-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**CspWrapper**](CspWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get CSP settings
SecurityCSPAPIApi.getCspSettings() { (response, error) in
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

