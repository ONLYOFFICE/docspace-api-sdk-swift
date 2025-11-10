# CapabilitiesAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPortalCapabilities**](CapabilitiesAPI.md#getportalcapabilities) | **GET** /api/2.0/capabilities | Get portal capabilities


# **getPortalCapabilities**
```swift
    open class func getPortalCapabilities(completion: @escaping (_ data: CapabilitiesWrapper?, _ error: Error?) -> Void)
```

Returns the information about portal capabilities.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-capabilities/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**CapabilitiesWrapper**](CapabilitiesWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get portal capabilities
CapabilitiesAPIApi.getPortalCapabilities() { (response, error) in
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

