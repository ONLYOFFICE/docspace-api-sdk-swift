# ThirdPartyAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getThirdPartyCode**](ThirdPartyAPI.md#getthirdpartycode) | **GET** /api/2.0/thirdparty/{provider} | Get the code request


# **getThirdPartyCode**
```swift
    open class func getThirdPartyCode(provider: LoginProvider, completion: @escaping (_ data: ObjectWrapper?, _ error: Error?) -> Void)
```

Returns a request to get the confirmation code from URL.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-third-party-code/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provider** | [**LoginProvider**](.md) | The identity provider used for authentication. | 

### Return type

[**ObjectWrapper**](ObjectWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let provider = LoginProvider() // LoginProvider | The identity provider used for authentication.

// Get the code request
ThirdPartyAPIApi.getThirdPartyCode(provider: provider) { (response, error) in
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

