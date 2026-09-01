# PeopleThirdPartyAccountsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getThirdPartyAuthProviders**](PeopleThirdPartyAccountsAPI.md#getthirdpartyauthproviders) | **GET** /api/2.0/people/thirdparty/providers | Get third-party accounts
[**linkThirdPartyAccount**](PeopleThirdPartyAccountsAPI.md#linkthirdpartyaccount) | **PUT** /api/2.0/people/thirdparty/linkaccount | Link a third-pary account
[**signupThirdPartyAccount**](PeopleThirdPartyAccountsAPI.md#signupthirdpartyaccount) | **POST** /api/2.0/people/thirdparty/signup | Create a third-pary account
[**unlinkThirdPartyAccount**](PeopleThirdPartyAccountsAPI.md#unlinkthirdpartyaccount) | **DELETE** /api/2.0/people/thirdparty/unlinkaccount | Unlink a third-pary account


# **getThirdPartyAuthProviders**
```swift
    open class func getThirdPartyAuthProviders(inviteView: Bool? = nil, settingsView: Bool? = nil, clientCallback: String? = nil, fromOnly: String? = nil, completion: @escaping (_ data: AccountInfoArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of the available third-party accounts.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-third-party-auth-providers/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteView** | **Bool** | Specifies whether to return providers that are available for invitation links, i.e. the user can login or register through these providers. | [optional] 
 **settingsView** | **Bool** | Specifies whether to display the provider settings in a pop-up window (true) or redirect them to the desktop application (false). | [optional] 
 **clientCallback** | **String** | The method that is called after authentication. | [optional] 
 **fromOnly** | **String** | The provider name if a response is required only from this provider. | [optional] 

### Return type

[**AccountInfoArrayWrapper**](AccountInfoArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inviteView = false // Bool | Specifies whether to return providers that are available for invitation links, i.e. the user can login or register through these providers. (optional)
let settingsView = false // Bool | Specifies whether to display the provider settings in a pop-up window (true) or redirect them to the desktop application (false). (optional)
let clientCallback = "clientCallback_example" // String | The method that is called after authentication. (optional)
let fromOnly = "fromOnly_example" // String | The provider name if a response is required only from this provider. (optional)

// Get third-party accounts
PeopleThirdPartyAccountsAPIApi.getThirdPartyAuthProviders(inviteView: inviteView, settingsView: settingsView, clientCallback: clientCallback, fromOnly: fromOnly) { (response, error) in
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

# **linkThirdPartyAccount**
```swift
    open class func linkThirdPartyAccount(linkAccountRequestDto: LinkAccountRequestDto? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Links a third-party account specified in the request to the user profile.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/link-third-party-account/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkAccountRequestDto** | [**LinkAccountRequestDto**](LinkAccountRequestDto.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let linkAccountRequestDto = LinkAccountRequestDto(serializedProfile: "serializedProfile_example") // LinkAccountRequestDto |  (optional)

// Link a third-pary account
PeopleThirdPartyAccountsAPIApi.linkThirdPartyAccount(linkAccountRequestDto: linkAccountRequestDto) { (response, error) in
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

# **signupThirdPartyAccount**
```swift
    open class func signupThirdPartyAccount(signupAccountRequestDto: SignupAccountRequestDto? = nil, completion: @escaping (_ data: EmployeeWrapper?, _ error: Error?) -> Void)
```

Creates a third-party account with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/signup-third-party-account/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signupAccountRequestDto** | [**SignupAccountRequestDto**](SignupAccountRequestDto.md) |  | [optional] 

### Return type

[**EmployeeWrapper**](EmployeeWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let signupAccountRequestDto = SignupAccountRequestDto(employeeType: EmployeeType(), key: "key_example", culture: "culture_example", serializedProfile: "serializedProfile_example") // SignupAccountRequestDto |  (optional)

// Create a third-pary account
PeopleThirdPartyAccountsAPIApi.signupThirdPartyAccount(signupAccountRequestDto: signupAccountRequestDto) { (response, error) in
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

# **unlinkThirdPartyAccount**
```swift
    open class func unlinkThirdPartyAccount(provider: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Unlinks a third-party account specified in the request from the user profile.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-third-party-account/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provider** | **String** | The provider name. | [optional] 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let provider = "provider_example" // String | The provider name. (optional)

// Unlink a third-pary account
PeopleThirdPartyAccountsAPIApi.unlinkThirdPartyAccount(provider: provider) { (response, error) in
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

