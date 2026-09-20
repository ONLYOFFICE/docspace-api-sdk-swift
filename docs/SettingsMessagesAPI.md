# SettingsMessagesAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**enableAdminMessageSettings**](SettingsMessagesAPI.md#enableadminmessagesettings) | **POST** /api/2.0/settings/messagesettings | Enable or disable administrator messages
[**sendAdminMail**](SettingsMessagesAPI.md#sendadminmail) | **POST** /api/2.0/settings/sendadmmail | Send a message to the administrator
[**sendJoinInviteMail**](SettingsMessagesAPI.md#sendjoininvitemail) | **POST** /api/2.0/settings/sendjoininvite | Send an invitation email


# **enableAdminMessageSettings**
```swift
    open class func enableAdminMessageSettings(turnOnAdminMessageSettingsRequestDto: TurnOnAdminMessageSettingsRequestDto? = nil, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Switches on or off the contact form the sign-in page offers a visitor who cannot get into the portal, and  which delivers their message to the portal administrators. The caller needs the portal-settings right of a  DocSpace administrator - the portal owner and a DocSpace administrator qualify, any other member is refused.  Send the new state as `turnOn`: `true` publishes the form, `false` hides it. The change covers the whole  portal, applies to the next sign-in page without a restart, is recorded in the audit trail, and repeating the  call with the same value leaves the portal as it is. What comes back is a localized confirmation message  rather than the stored flag - read the flag as `enableAdmMess` from `GET api/2.0/settings`, which needs no  token. That flag is also forced on while the portal's payment has lapsed, so it can report `true` on a portal  where the form was switched off here. The form itself posts to `POST api/2.0/settings/sendadmmail` and this  setting gates nothing else: the notifications administrators receive as portal members are subscribed  separately with `POST api/2.0/settings/notification`.

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

// Enable or disable administrator messages
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

Sends a message from someone who cannot get into the portal to its administrators - the contact form the  sign-in page offers unauthenticated visitors. No token is needed. The form has to be published first with  `POST api/2.0/settings/messagesettings` unless the portal's payment has lapsed, otherwise nothing is sent;  `enableAdmMess` in `GET api/2.0/settings` reports whether the call is worth making. `email` is the address the  administrators answer to and has to be a real address, and `message` is reduced to plain text first, so a body  carrying nothing but markup counts as empty - either fault is refused with 400. When the caller is not signed  in and this installation has a CAPTCHA configured, `recaptchaResponse` has to carry a solved challenge of the  `recaptchaType` that `GET api/2.0/settings` publishes together with the site key, and a missing or stale  answer refuses the call. `culture` picks the language of the letter. Delivery is queued and reaches the  administrators subscribed to administrator notifications, so a confirmed call means accepted rather than read,  and the answer is a localized confirmation. Attempts are rate limited per address and per operation, and  further ones are refused with 429.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-admin-mail/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adminMessageSettingsRequestsDto** | [**AdminMessageSettingsRequestsDto**](AdminMessageSettingsRequestsDto.md) |  | [optional] 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

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

Sends an invitation email with a join link to the address in the request - the self-registration the sign-in  page's register link performs. No token is needed. The portal has to publish a trusted-domain policy first,  saved with `POST api/2.0/settings/maildomainsettings`: without one there is nothing to join and every caller  alike is answered with 405 - the same condition `GET api/2.0/settings` reports as `enabledJoin`. `email` has  to be a real address written in ASCII rather than an internationalized one, must not already belong to a  portal member, and, when the policy names domains rather than accepting all of them, has to end with one of  them - each of those faults is refused with 400. `culture` picks the language of the letter. The invitation is  not an account: the invitee becomes a member only after following the link, and the role it grants, user or  room administrator, follows the trusted-domain settings and drops to user once the portal's paid places are  taken. Where the installation caps invitations, an accepted call spends one of those counted by  `invitationLimit`, and only about a dozen calls from one address in two minutes are accepted. What comes back  is a localized confirmation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-join-invite-mail/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adminMessageBaseSettingsRequestsDto** | [**AdminMessageBaseSettingsRequestsDto**](AdminMessageBaseSettingsRequestsDto.md) |  | [optional] 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let adminMessageBaseSettingsRequestsDto = AdminMessageBaseSettingsRequestsDto(email: "email_example", culture: "culture_example") // AdminMessageBaseSettingsRequestsDto |  (optional)

// Send an invitation email
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

