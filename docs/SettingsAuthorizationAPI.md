# SettingsAuthorizationAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAuthServices**](SettingsAuthorizationAPI.md#getauthservices) | **GET** /api/2.0/settings/authservice | Get the authorization services
[**saveAuthKeys**](SettingsAuthorizationAPI.md#saveauthkeys) | **POST** /api/2.0/settings/authservice | Save the authorization keys


# **getAuthServices**
```swift
    open class func getAuthServices(completion: @escaping (_ data: AuthServiceRequestsArrayWrapper?, _ error: Error?) -> Void)
```

Returns the authorization services.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-auth-services/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**AuthServiceRequestsArrayWrapper**](AuthServiceRequestsArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the authorization services
SettingsAuthorizationAPIApi.getAuthServices() { (response, error) in
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

# **saveAuthKeys**
```swift
    open class func saveAuthKeys(authServiceRequestsDto: AuthServiceRequestsDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Saves the authorization keys.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-auth-keys/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authServiceRequestsDto** | [**AuthServiceRequestsDto**](AuthServiceRequestsDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authServiceRequestsDto = AuthServiceRequestsDto(name: "name_example", title: "title_example", description: "description_example", instruction: "instruction_example", canSet: true, props: [AuthKey(name: "name_example", value: "value_example", title: "title_example")]) // AuthServiceRequestsDto |  (optional)

// Save the authorization keys
SettingsAuthorizationAPIApi.saveAuthKeys(authServiceRequestsDto: authServiceRequestsDto) { (response, error) in
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

