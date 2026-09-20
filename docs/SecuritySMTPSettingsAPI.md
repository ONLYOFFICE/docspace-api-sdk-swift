# SecuritySMTPSettingsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSmtpOperationStatus**](SecuritySMTPSettingsAPI.md#getsmtpoperationstatus) | **GET** /api/2.0/smtpsettings/smtp/test/status | Get SMTP test status
[**getSmtpSettings**](SecuritySMTPSettingsAPI.md#getsmtpsettings) | **GET** /api/2.0/smtpsettings/smtp | Get SMTP settings
[**resetSmtpSettings**](SecuritySMTPSettingsAPI.md#resetsmtpsettings) | **DELETE** /api/2.0/smtpsettings/smtp | Reset SMTP settings
[**saveSmtpSettings**](SecuritySMTPSettingsAPI.md#savesmtpsettings) | **POST** /api/2.0/smtpsettings/smtp | Save SMTP settings
[**testSmtpSettings**](SecuritySMTPSettingsAPI.md#testsmtpsettings) | **GET** /api/2.0/smtpsettings/smtp/test | Test SMTP settings


# **getSmtpOperationStatus**
```swift
    open class func getSmtpOperationStatus(completion: @escaping (_ data: SmtpOperationStatusRequestsWrapper?, _ error: Error?) -> Void)
```

Returns the state of the test message that `GET api/2.0/smtpsettings/smtp/test` queued for this portal, and is  the operation to poll while that test runs. A test has to be queued first; the caller needs the  portal-settings right of a DocSpace administrator, and the SMTP settings section has to be enabled for the  portal, otherwise the call is answered with 402. The call changes no settings, but it is not free of  consequence: the first answer that reports `completed` true also discards the finished job, so a later call no  longer knows about it - take `error` from that answer and keep it. An empty answer means the portal has no  test on record, either because none was queued or because its result has already been read. While the job  runs, `percents` climbs to 100 and `status` names the step reached, such as `Connect to host` or  `Send test message`; `error` is empty until something fails and stays empty when the relay accepted the  message. `id` identifies the queued job, of which a portal only ever has one.

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


// Get SMTP test status
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

Returns the SMTP relay this portal sends its own mail through - host, port, sender identity and authentication  flags - as it is stored for the portal. Nothing has to be called first; the caller needs the portal-settings  right of a DocSpace administrator, and the SMTP settings section has to be enabled for the portal, otherwise  the call is answered with 402. The call is read-only and safe to repeat. `isDefaultSettings` is true when the  portal has no settings of its own and runs on the mail configuration of the installation: a standalone  installation then shows those server-wide values, while a cloud portal is answered with an empty settings  object instead, so an empty `host` together with `isDefaultSettings` true means nothing was ever saved here.  `credentialsUserPassword` always comes back empty - the stored password cannot be read back, and a client that  saves the settings again has to ask the user for it once more. `port` is the port that was saved, and settings  saved without one are stored with `25`. To find out whether the returned relay actually accepts mail, queue a  test with `GET api/2.0/smtpsettings/smtp/test`.

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


// Get SMTP settings
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

Deletes the SMTP settings of this portal and puts it back on the mail configuration of the installation, so  the portal stops using the relay saved by `POST api/2.0/smtpsettings/smtp`. Nothing has to be called first;  the caller needs the portal-settings right of a DocSpace administrator, and the SMTP settings section has to  be enabled for the portal, otherwise the call is answered with 402. The call is destructive and cannot be  undone - the host, the sender identity and the credentials are gone and have to be entered again - but it is  idempotent, and on a portal that has no settings of its own it changes nothing. Portal mail itself keeps  working as long as the installation has a relay of its own configured. The answer holds the settings that are  in force after the reset, always with `isDefaultSettings` true: the server-wide values in a standalone  installation, an empty settings object in a cloud portal, and an empty `credentialsUserPassword` in both. Read  them back at any time with `GET api/2.0/smtpsettings/smtp`.

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


// Reset SMTP settings
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

Stores the SMTP relay that this portal will hand all of its own mail to, replacing whatever was saved before  and taking the portal off the mail configuration of the installation. Nothing has to be called first; the  caller needs the portal-settings right of a DocSpace administrator, and the SMTP settings section has to be  enabled for the portal, otherwise the call is answered with 402. The call is mutating and idempotent - the  same body saved twice leaves the same settings - and it applies to the next message the portal sends. The  settings are stored unverified, no connection to `host` is attempted, so queue  `GET api/2.0/smtpsettings/smtp/test` afterwards to find out whether they work. `host` and `senderAddress` must  not be empty, `senderDisplayName` has to be present, and `enableAuth` true also requires `credentialsUserName`  and `credentialsUserPassword`; a request that misses any of them is rejected and nothing is saved. `port`  falls back to `25` when it is omitted, and `useNtlm` is accepted but not stored, so the saved settings always  authenticate with a plain user name and password. The answer repeats the stored settings with the password  emptied. Use `DELETE api/2.0/smtpsettings/smtp` to return to the configuration of the installation.

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

let smtpSettingsDto = SmtpSettingsDto(host: "host_example", port: 123, senderAddress: "senderAddress_example", senderDisplayName: "senderDisplayName_example", credentialsUserName: "credentialsUserName_example", credentialsUserPassword: "", enableSSL: true, enableAuth: true, useNtlm: false, isDefaultSettings: true) // SmtpSettingsDto |  (optional)

// Save SMTP settings
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

Queues a background job that sends a test message through the SMTP settings currently stored for the portal to  the email address of the calling user, and returns the state of that job. Save the settings with  `POST api/2.0/smtpsettings/smtp` first: the job always takes the stored settings and nothing can be passed to  it here. The caller needs the portal-settings right of a DocSpace administrator, and the SMTP settings section  has to be enabled for the portal, otherwise the call is answered with 402. The call is mutating, it sends  mail, and it is rate-limited to five requests per fifteen minutes per user and path by default, answering 429  above that; while a test is still running the same job is returned instead of a second one being started. The  message has not been sent when the answer arrives: poll `GET api/2.0/smtpsettings/smtp/test/status` until  `completed` is true, then read `error` - empty means the relay accepted the message, otherwise it carries the  reason. `percents` climbs to 100 and `status` names the step reached, such as `Connect to host` or  `Send test message`. An unreachable relay is reported in `error` after a 30-second connection timeout, not as  a failed request.

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


// Test SMTP settings
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

