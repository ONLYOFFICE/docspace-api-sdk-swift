# SecuritySMTPSettingsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSmtpOperationStatus**](SecuritySMTPSettingsAPI.md#getsmtpoperationstatus) | **GET** /api/2.0/smtpsettings/smtp/test/status | Get the SMTP testing process status
[**getSmtpSettings**](SecuritySMTPSettingsAPI.md#getsmtpsettings) | **GET** /api/2.0/smtpsettings/smtp | Get the SMTP settings
[**resetSmtpSettings**](SecuritySMTPSettingsAPI.md#resetsmtpsettings) | **DELETE** /api/2.0/smtpsettings/smtp | Reset the SMTP settings
[**saveSmtpSettings**](SecuritySMTPSettingsAPI.md#savesmtpsettings) | **POST** /api/2.0/smtpsettings/smtp | Save the SMTP settings
[**testSmtpSettings**](SecuritySMTPSettingsAPI.md#testsmtpsettings) | **GET** /api/2.0/smtpsettings/smtp/test | Test the SMTP settings


# **getSmtpOperationStatus**
```swift
    open class func getSmtpOperationStatus(completion: @escaping (_ data: SmtpOperationStatusRequestsWrapper?, _ error: Error?) -> Void)
```

Returns the status of the SMTP testing process.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-smtp-operation-status/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**SmtpOperationStatusRequestsWrapper**](SmtpOperationStatusRequestsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the SMTP testing process status
SecuritySMTPSettingsAPIApi.getSmtpOperationStatus() { (response, error) in
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

# **getSmtpSettings**
```swift
    open class func getSmtpSettings(completion: @escaping (_ data: SmtpSettingsWrapper?, _ error: Error?) -> Void)
```

Returns the current portal SMTP settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-smtp-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**SmtpSettingsWrapper**](SmtpSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the SMTP settings
SecuritySMTPSettingsAPIApi.getSmtpSettings() { (response, error) in
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

# **resetSmtpSettings**
```swift
    open class func resetSmtpSettings(completion: @escaping (_ data: SmtpSettingsWrapper?, _ error: Error?) -> Void)
```

Resets the SMTP settings of the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-smtp-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**SmtpSettingsWrapper**](SmtpSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Reset the SMTP settings
SecuritySMTPSettingsAPIApi.resetSmtpSettings() { (response, error) in
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

# **saveSmtpSettings**
```swift
    open class func saveSmtpSettings(smtpSettingsDto: SmtpSettingsDto? = nil, completion: @escaping (_ data: SmtpSettingsWrapper?, _ error: Error?) -> Void)
```

Saves the SMTP settings for the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-smtp-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smtpSettingsDto** | [**SmtpSettingsDto**](SmtpSettingsDto.md) |  | [optional] 

### Return type

[**SmtpSettingsWrapper**](SmtpSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let smtpSettingsDto = SmtpSettingsDto(host: "host_example", port: 123, senderAddress: "senderAddress_example", senderDisplayName: "senderDisplayName_example", credentialsUserName: "credentialsUserName_example", credentialsUserPassword: "credentialsUserPassword_example", enableSSL: true, enableAuth: true, useNtlm: true, isDefaultSettings: true) // SmtpSettingsDto |  (optional)

// Save the SMTP settings
SecuritySMTPSettingsAPIApi.saveSmtpSettings(smtpSettingsDto: smtpSettingsDto) { (response, error) in
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

# **testSmtpSettings**
```swift
    open class func testSmtpSettings(completion: @escaping (_ data: SmtpOperationStatusRequestsWrapper?, _ error: Error?) -> Void)
```

Tests the SMTP settings for the current portal (sends test message to the user email).

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/test-smtp-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**SmtpOperationStatusRequestsWrapper**](SmtpOperationStatusRequestsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Test the SMTP settings
SecuritySMTPSettingsAPIApi.testSmtpSettings() { (response, error) in
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

