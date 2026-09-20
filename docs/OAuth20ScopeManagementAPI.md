# OAuth20ScopeManagementAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getScopes**](OAuth20ScopeManagementAPI.md#getscopes) | **GET** /api/2.0/oauth2/scopes | List available OAuth2 scopes


# **getScopes**
```swift
    open class func getScopes(completion: @escaping (_ data: [ScopeResponse]?, _ error: Error?) -> Void)
```

Retrieves a list of all available OAuth2 scopes for the specified tenant. The scopes define the permissions that can be requested by OAuth2 clients. The list is ordered alphabetically, with the 'openid' scope always appearing first. It is a read-only catalogue that does not depend on which clients exist: a valid portal signature is the only requirement, with no role restriction, and every caller of the portal sees the same list.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-scopes/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**[ScopeResponse]**](ScopeResponse.md)

### Authorization

[x-signature](../README.md#x-signature)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// List available OAuth2 scopes
OAuth20ScopeManagementAPIApi.getScopes() { (response, error) in
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

