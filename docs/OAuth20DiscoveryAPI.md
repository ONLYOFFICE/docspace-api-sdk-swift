# OAuth20DiscoveryAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**handleOptions**](OAuth20DiscoveryAPI.md#handleoptions) | **OPTIONS** /.well-known/oauth-authorization-server | Probe the discovery endpoint


# **handleOptions**
```swift
    open class func handleOptions(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Answers the CORS preflight for the OAuth 2.0 Authorization Server metadata endpoint. The endpoint needs no authentication and reads nothing from the request: it always answers 200 with an empty body, and the CORS headers are added by the surrounding filter chain rather than by this handler. It changes no state, and it does not return the authorization server metadata document - issue a GET against the same path for that.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/handle-options/).

### Parameters
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Probe the discovery endpoint
OAuth20DiscoveryAPIApi.handleOptions() { (response, error) in
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

