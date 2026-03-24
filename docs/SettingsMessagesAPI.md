# SettingsMessagesAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**enableAdminMessageSettings**](SettingsMessagesAPI.md#enableadminmessagesettings) | **POST** /api/2.0/settings/messagesettings | Enable the administrator message settings
[**sendAdminMail**](SettingsMessagesAPI.md#sendadminmail) | **POST** /api/2.0/settings/sendadmmail | Send a message to the administrator
[**sendJoinInviteMail**](SettingsMessagesAPI.md#sendjoininvitemail) | **POST** /api/2.0/settings/sendjoininvite | Sends an invitation email


# **enableAdminMessageSettings**
```swift
    open class func enableAdminMessageSettings(turnOnAdminMessageSettingsRequestDto: TurnOnAdminMessageSettingsRequestDto? = nil, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Displays the contact form on the Sign In page, allowing users to send a message to the DocSpace administrator in case they encounter any issues while accessing DocSpace.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/enable-admin-message-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **turnOnAdminMessageSettingsRequestDto** | [**TurnOnAdminMessageSettingsRequestDto**](TurnOnAdminMessageSettingsRequestDto.md) |  | [optional] 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let turnOnAdminMessageSettingsRequestDto = TurnOnAdminMessageSettingsRequestDto(turnOn: true) // TurnOnAdminMessageSettingsRequestDto |  (optional)

// Enable the administrator message settings
SettingsMessagesAPIApi.enableAdminMessageSettings(turnOnAdminMessageSettingsRequestDto: turnOnAdminMessageSettingsRequestDto) { (response, error) in
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

# **sendAdminMail**
```swift
    open class func sendAdminMail(adminMessageSettingsRequestsDto: AdminMessageSettingsRequestsDto? = nil, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Sends a message to the administrator email when unauthorized users encounter issues accessing DocSpace.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-admin-mail/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adminMessageSettingsRequestsDto** | [**AdminMessageSettingsRequestsDto**](AdminMessageSettingsRequestsDto.md) |  | [optional] 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let adminMessageSettingsRequestsDto = AdminMessageSettingsRequestsDto(message: "message_example", email: "email_example", culture: "culture_example", recaptchaType: RecaptchaType(), recaptchaResponse: "recaptchaResponse_example") // AdminMessageSettingsRequestsDto |  (optional)

// Send a message to the administrator
SettingsMessagesAPIApi.sendAdminMail(adminMessageSettingsRequestsDto: adminMessageSettingsRequestsDto) { (response, error) in
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

# **sendJoinInviteMail**
```swift
    open class func sendJoinInviteMail(adminMessageBaseSettingsRequestsDto: AdminMessageBaseSettingsRequestsDto? = nil, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Sends an invitation email with a link to the DocSpace.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-join-invite-mail/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adminMessageBaseSettingsRequestsDto** | [**AdminMessageBaseSettingsRequestsDto**](AdminMessageBaseSettingsRequestsDto.md) |  | [optional] 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let adminMessageBaseSettingsRequestsDto = AdminMessageBaseSettingsRequestsDto(email: "email_example", culture: "culture_example") // AdminMessageBaseSettingsRequestsDto |  (optional)

// Sends an invitation email
SettingsMessagesAPIApi.sendJoinInviteMail(adminMessageBaseSettingsRequestsDto: adminMessageBaseSettingsRequestsDto) { (response, error) in
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

