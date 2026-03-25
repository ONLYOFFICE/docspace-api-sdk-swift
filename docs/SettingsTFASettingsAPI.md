# SettingsTFASettingsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTfaAppCodes**](SettingsTFASettingsAPI.md#gettfaappcodes) | **GET** /api/2.0/settings/tfaappcodes | Get the TFA codes
[**getTfaConfirmUrl**](SettingsTFASettingsAPI.md#gettfaconfirmurl) | **GET** /api/2.0/settings/tfaapp/confirm | Get confirmation email
[**getTfaSettings**](SettingsTFASettingsAPI.md#gettfasettings) | **GET** /api/2.0/settings/tfaapp | Get the TFA settings
[**tfaAppGenerateSetupCode**](SettingsTFASettingsAPI.md#tfaappgeneratesetupcode) | **GET** /api/2.0/settings/tfaapp/setup | Generate setup code
[**tfaValidateAuthCode**](SettingsTFASettingsAPI.md#tfavalidateauthcode) | **POST** /api/2.0/settings/tfaapp/validate | Validate the TFA code
[**unlinkTfaApp**](SettingsTFASettingsAPI.md#unlinktfaapp) | **PUT** /api/2.0/settings/tfaappnewapp | Unlink the TFA application
[**updateTfaAppCodes**](SettingsTFASettingsAPI.md#updatetfaappcodes) | **PUT** /api/2.0/settings/tfaappnewcodes | Update the TFA codes
[**updateTfaSettings**](SettingsTFASettingsAPI.md#updatetfasettings) | **PUT** /api/2.0/settings/tfaapp | Update the TFA settings
[**updateTfaSettingsLink**](SettingsTFASettingsAPI.md#updatetfasettingslink) | **PUT** /api/2.0/settings/tfaappwithlink | Get a confirmation email for updating TFA settings


# **getTfaAppCodes**
```swift
    open class func getTfaAppCodes(completion: @escaping (_ data: ObjectArrayWrapper?, _ error: Error?) -> Void)
```

Returns the two-factor authentication application codes.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tfa-app-codes/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**ObjectArrayWrapper**](ObjectArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the TFA codes
SettingsTFASettingsAPIApi.getTfaAppCodes() { (response, error) in
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

# **getTfaConfirmUrl**
```swift
    open class func getTfaConfirmUrl(completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Returns the confirmation email URL for authorization via SMS or TFA application.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tfa-confirm-url/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get confirmation email
SettingsTFASettingsAPIApi.getTfaConfirmUrl() { (response, error) in
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

# **getTfaSettings**
```swift
    open class func getTfaSettings(completion: @escaping (_ data: TfaSettingsArrayWrapper?, _ error: Error?) -> Void)
```

Returns the current two-factor authentication settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tfa-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**TfaSettingsArrayWrapper**](TfaSettingsArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the TFA settings
SettingsTFASettingsAPIApi.getTfaSettings() { (response, error) in
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

# **tfaAppGenerateSetupCode**
```swift
    open class func tfaAppGenerateSetupCode(completion: @escaping (_ data: SetupCodeWrapper?, _ error: Error?) -> Void)
```

Generates the setup TFA code for the current user.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/tfa-app-generate-setup-code/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**SetupCodeWrapper**](SetupCodeWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Generate setup code
SettingsTFASettingsAPIApi.tfaAppGenerateSetupCode() { (response, error) in
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

# **tfaValidateAuthCode**
```swift
    open class func tfaValidateAuthCode(tfaValidateRequestsDto: TfaValidateRequestsDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Validates the two-factor authentication code specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/tfa-validate-auth-code/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tfaValidateRequestsDto** | [**TfaValidateRequestsDto**](TfaValidateRequestsDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tfaValidateRequestsDto = TfaValidateRequestsDto(code: "code_example", session: true) // TfaValidateRequestsDto |  (optional)

// Validate the TFA code
SettingsTFASettingsAPIApi.tfaValidateAuthCode(tfaValidateRequestsDto: tfaValidateRequestsDto) { (response, error) in
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

# **unlinkTfaApp**
```swift
    open class func unlinkTfaApp(tfaRequestsDto: TfaRequestsDto? = nil, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Unlinks the current two-factor authentication application from the user account specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-tfa-app/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tfaRequestsDto** | [**TfaRequestsDto**](TfaRequestsDto.md) |  | [optional] 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tfaRequestsDto = TfaRequestsDto(type: TfaRequestsDtoType(), id: 123, trustedIps: ["trustedIps_example"], mandatoryUsers: [123], mandatoryGroups: [123]) // TfaRequestsDto |  (optional)

// Unlink the TFA application
SettingsTFASettingsAPIApi.unlinkTfaApp(tfaRequestsDto: tfaRequestsDto) { (response, error) in
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

# **updateTfaAppCodes**
```swift
    open class func updateTfaAppCodes(completion: @escaping (_ data: ObjectArrayWrapper?, _ error: Error?) -> Void)
```

Requests the new backup codes for the two-factor authentication application.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-tfa-app-codes/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**ObjectArrayWrapper**](ObjectArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Update the TFA codes
SettingsTFASettingsAPIApi.updateTfaAppCodes() { (response, error) in
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

# **updateTfaSettings**
```swift
    open class func updateTfaSettings(tfaRequestsDto: TfaRequestsDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Updates the two-factor authentication settings with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-tfa-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tfaRequestsDto** | [**TfaRequestsDto**](TfaRequestsDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tfaRequestsDto = TfaRequestsDto(type: TfaRequestsDtoType(), id: 123, trustedIps: ["trustedIps_example"], mandatoryUsers: [123], mandatoryGroups: [123]) // TfaRequestsDto |  (optional)

// Update the TFA settings
SettingsTFASettingsAPIApi.updateTfaSettings(tfaRequestsDto: tfaRequestsDto) { (response, error) in
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

# **updateTfaSettingsLink**
```swift
    open class func updateTfaSettingsLink(tfaRequestsDto: TfaRequestsDto? = nil, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Returns the confirmation email URL for updating TFA settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-tfa-settings-link/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tfaRequestsDto** | [**TfaRequestsDto**](TfaRequestsDto.md) |  | [optional] 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tfaRequestsDto = TfaRequestsDto(type: TfaRequestsDtoType(), id: 123, trustedIps: ["trustedIps_example"], mandatoryUsers: [123], mandatoryGroups: [123]) // TfaRequestsDto |  (optional)

// Get a confirmation email for updating TFA settings
SettingsTFASettingsAPIApi.updateTfaSettingsLink(tfaRequestsDto: tfaRequestsDto) { (response, error) in
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

