# OAuth20AuthorizationAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorizeOAuth**](OAuth20AuthorizationAPI.md#authorizeoauth) | **GET** /oauth2/authorize | OAuth2 Authorization Endpoint
[**exchangeToken**](OAuth20AuthorizationAPI.md#exchangetoken) | **POST** /oauth2/token | OAuth2 Token Endpoint
[**submitConsent**](OAuth20AuthorizationAPI.md#submitconsent) | **POST** /oauth2/authorize | OAuth2 consent endpoint


# **authorizeOAuth**
```swift
    open class func authorizeOAuth(responseType: String, clientId: String, redirectUri: String, scope: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Initiates the OAuth2 authorization flow.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/authorize-oauth/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **responseType** | **String** | The OAuth 2.0 response type, must be 'code' for authorization code flow. | 
 **clientId** | **String** | The client identifier issued to the client during registration. | 
 **redirectUri** | **String** | The URL to redirect to after authorization is complete. | 
 **scope** | **String** | The space-separated list of requested scope permissions. | 

### Return type

Void (empty response body)

### Authorization

[x-signature](../README.md#x-signature)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let responseType = "responseType_example" // String | The OAuth 2.0 response type, must be 'code' for authorization code flow.
let clientId = "clientId_example" // String | The client identifier issued to the client during registration.
let redirectUri = "redirectUri_example" // String | The URL to redirect to after authorization is complete.
let scope = "scope_example" // String | The space-separated list of requested scope permissions.

// OAuth2 Authorization Endpoint
OAuth20AuthorizationAPIApi.authorizeOAuth(responseType: responseType, clientId: clientId, redirectUri: redirectUri, scope: scope) { (response, error) in
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

# **exchangeToken**
```swift
    open class func exchangeToken(grantType: String? = nil, code: String? = nil, redirectUri: String? = nil, clientId: String? = nil, clientSecret: String? = nil, completion: @escaping (_ data: ExchangeToken200Response?, _ error: Error?) -> Void)
```

Exchange authorization code for access token

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/exchange-token/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grantType** | **String** | The OAuth2 grant type, must be 'authorization_code' for the authorization code flow. | [optional] 
 **code** | **String** | A temporary authorization code that is sent to the client to be exchanged for a token. | [optional] 
 **redirectUri** | **String** | The URL where the user will be redirected after successful or unsuccessful authentication. | [optional] 
 **clientId** | **String** | The client identifier issued to the client during registration. | [optional] 
 **clientSecret** | **String** | The client secret issued to the client during registration. | [optional] 

### Return type

[**ExchangeToken200Response**](ExchangeToken200Response.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let grantType = "grantType_example" // String | The OAuth2 grant type, must be 'authorization_code' for the authorization code flow. (optional)
let code = "code_example" // String | A temporary authorization code that is sent to the client to be exchanged for a token. (optional)
let redirectUri = "redirectUri_example" // String | The URL where the user will be redirected after successful or unsuccessful authentication. (optional)
let clientId = "clientId_example" // String | The client identifier issued to the client during registration. (optional)
let clientSecret = "clientSecret_example" // String | The client secret issued to the client during registration. (optional)

// OAuth2 Token Endpoint
OAuth20AuthorizationAPIApi.exchangeToken(grantType: grantType, code: code, redirectUri: redirectUri, clientId: clientId, clientSecret: clientSecret) { (response, error) in
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

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitConsent**
```swift
    open class func submitConsent(clientId: String? = nil, state: String? = nil, scope: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Sends consent approval

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/submit-consent/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String** | The client identifier issued to the client during registration. | [optional] 
 **state** | **String** | The random string used to solve the CSRF vulnerability problem. | [optional] 
 **scope** | **String** | The space-separated list of requested scope permissions. | [optional] 

### Return type

Void (empty response body)

### Authorization

[x-signature](../README.md#x-signature)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String | The client identifier issued to the client during registration. (optional)
let state = "state_example" // String | The random string used to solve the CSRF vulnerability problem. (optional)
let scope = "scope_example" // String | The space-separated list of requested scope permissions. (optional)

// OAuth2 consent endpoint
OAuth20AuthorizationAPIApi.submitConsent(clientId: clientId, state: state, scope: scope) { (response, error) in
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

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

