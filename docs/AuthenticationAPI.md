# AuthenticationAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticateMe**](AuthenticationAPI.md#authenticateme) | **POST** /api/2.0/authentication | Authenticate a user
[**authenticateMeFromBodyWithCode**](AuthenticationAPI.md#authenticatemefrombodywithcode) | **POST** /api/2.0/authentication/{code} | Authenticate a user by code
[**checkConfirm**](AuthenticationAPI.md#checkconfirm) | **POST** /api/2.0/authentication/confirm | Check a confirmation link
[**getIsAuthentificated**](AuthenticationAPI.md#getisauthentificated) | **GET** /api/2.0/authentication | Check authentication
[**logout**](AuthenticationAPI.md#logout) | **POST** /api/2.0/authentication/logout | Log out
[**saveMobilePhone**](AuthenticationAPI.md#savemobilephone) | **POST** /api/2.0/authentication/setphone | Set a mobile phone
[**sendSmsCode**](AuthenticationAPI.md#sendsmscode) | **POST** /api/2.0/authentication/sendsms | Send SMS code


# **authenticateMe**
```swift
    open class func authenticateMe(authRequestsDto: AuthRequestsDto? = nil, completion: @escaping (_ data: AuthenticationTokenWrapper?, _ error: Error?) -> Void)
```

Signs a user in to the current portal and either issues the authentication token or reports which second  factor is still missing. Credentials go in the body as `userName` with `password` or `passwordHash`, as the  key of a confirmation link in `confirmData`, or as a third-party account (`provider` with `accessToken`, or  `serializedProfile`), which only a standalone installation or a tariff with third-party sign-in allows. Open  to unauthenticated callers, mutating and not  idempotent: it writes a login event, sets the portal cookies and counts every failure against the brute-force  limit. When a second factor is required for this user the answer carries no `token` but `sms` with the masked  phone number - or a `confirmUrl` pointing at `POST api/2.0/authentication/setphone` while no number is  activated yet - or `tfa` with the setup key while the authenticator app is not connected; submit the code to  `POST api/2.0/authentication/{code}` to finish such a sign-in. Otherwise the answer carries `token` for the  `Authorization` header and `expires`, which is omitted when `session=true` ties the token to the browser  session. An unknown user fails with 404, rejected credentials with 401, a disabled or blocked user with 403.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/authenticate-me/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authRequestsDto** | [**AuthRequestsDto**](AuthRequestsDto.md) |  | [optional] 

### Return type

[**AuthenticationTokenWrapper**](AuthenticationTokenWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authRequestsDto = AuthRequestsDto(userName: "userName_example", password: "password_example", passwordHash: "passwordHash_example", provider: "provider_example", accessToken: "accessToken_example", serializedProfile: "serializedProfile_example", codeOAuth: "codeOAuth_example", session: true, confirmData: ConfirmData(email: "email_example", first: true, key: "key_example"), recaptchaType: RecaptchaType(), recaptchaResponse: "recaptchaResponse_example", culture: "culture_example") // AuthRequestsDto |  (optional)

// Authenticate a user
AuthenticationAPIApi.authenticateMe(authRequestsDto: authRequestsDto) { (response, error) in
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

# **authenticateMeFromBodyWithCode**
```swift
    open class func authenticateMeFromBodyWithCode(code: String, authWithCodeRequestsDto: AuthWithCodeRequestsDto? = nil, completion: @escaping (_ data: AuthenticationTokenWrapper?, _ error: Error?) -> Void)
```

Finishes a two-factor sign-in: checks the one-time code and, when it matches, issues the authentication token.  Call it only after `POST api/2.0/authentication` answered with `sms` or `tfa` set, and repeat the same  credentials in the body next to `code` - the code alone does not identify the user. The code comes from the  SMS the portal sent, which `POST api/2.0/authentication/sendsms` resends, or from the authenticator app;  whichever second factor the portal has enabled for this user is the one checked here. Open to unauthenticated  callers, mutating and not idempotent: a code is single-use, the sign-in is written to the login history, and  the first code accepted from an authenticator app also connects that app to the user. The answer carries  `token` for the `Authorization` header, `expires` unless `session=true` tied the token to the browser session,  and either `sms` with the masked phone number or `tfa`. A wrong, empty or expired code fails with 401 and  counts against the brute-force limit, which then refuses further attempts with 403.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/authenticate-me-from-body-with-code/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String** | The two-factor authentication code. Send the same value as the `code` of the request body, which is the one the handler reads. | 
 **authWithCodeRequestsDto** | [**AuthWithCodeRequestsDto**](AuthWithCodeRequestsDto.md) |  | [optional] 

### Return type

[**AuthenticationTokenWrapper**](AuthenticationTokenWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let code = "code_example" // String | The two-factor authentication code. Send the same value as the `code` of the request body, which is the one the handler reads.
let authWithCodeRequestsDto = AuthWithCodeRequestsDto(userName: "userName_example", password: "password_example", passwordHash: "passwordHash_example", provider: "provider_example", accessToken: "accessToken_example", serializedProfile: "serializedProfile_example", codeOAuth: "codeOAuth_example", session: true, confirmData: ConfirmData(email: "email_example", first: true, key: "key_example"), recaptchaType: RecaptchaType(), recaptchaResponse: "recaptchaResponse_example", culture: "culture_example", code: "code_example") // AuthWithCodeRequestsDto |  (optional)

// Authenticate a user by code
AuthenticationAPIApi.authenticateMeFromBodyWithCode(code: code, authWithCodeRequestsDto: authWithCodeRequestsDto) { (response, error) in
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

# **checkConfirm**
```swift
    open class func checkConfirm(emailValidationKeyModel: EmailValidationKeyModel? = nil, completion: @escaping (_ data: ConfirmWrapper?, _ error: Error?) -> Void)
```

Checks the key of a confirmation link that the portal sent by email and reports whether the action behind that  link can still be carried out - an employee invitation, phone activation, a password change, portal removal  and so on. Take `key` and `type` from the query string of the link; when `key` is left empty, the key saved in  the confirmation cookie of the same `type` is used instead. Open to unauthenticated callers and read-only: it  neither accepts the invitation nor signs anyone in. `result` is `Ok` when the link may be used, `Invalid` when  the key does not match the type or the email, `Expired` when it is too old, and `TariffLimit`, `UserExisted`,  `UserExcluded` or `QuotaFailed` when the key is sound but the invitation behind it cannot be accepted. Only  `Ok` should be followed by the operation that performs the action - `POST api/2.0/people` with  `fromInviteLink` for an invitation, `POST api/2.0/authentication` with `confirmData` for a sign-in link - and  for an invitation to a room the answer also carries the identifier and the title of that room.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-confirm/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailValidationKeyModel** | [**EmailValidationKeyModel**](EmailValidationKeyModel.md) |  | [optional] 

### Return type

[**ConfirmWrapper**](ConfirmWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let emailValidationKeyModel = EmailValidationKeyModel(key: "key_example", emplType: EmployeeType(), email: "email_example", encEmail: "encEmail_example", uiD: 123, type: ConfirmType(), first: "first_example", roomId: "roomId_example") // EmailValidationKeyModel |  (optional)

// Check a confirmation link
AuthenticationAPIApi.checkConfirm(emailValidationKeyModel: emailValidationKeyModel) { (response, error) in
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

# **getIsAuthentificated**
```swift
    open class func getIsAuthentificated(completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Reports whether the credentials that came with this very request identify a signed-in user of the current  portal - the authentication cookie, or the token in the `Authorization` header. Nothing has to be called  first: the operation is open to unauthenticated callers, who simply get `false`, it is read-only and  idempotent, and it answers even while the portal's payment has lapsed. The result is a bare boolean that  carries no reason, so `false` covers a missing, malformed, expired and revoked token alike; the way to recover  from it is to sign in again with `POST api/2.0/authentication`. It says nothing about who the caller is or how  long the session still lasts - read `GET api/2.0/people/@self` for the profile behind the token.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-authentificated/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Check authentication
AuthenticationAPIApi.getIsAuthentificated() { (response, error) in
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

# **logout**
```swift
    open class func logout(completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Ends the session the request itself was made with: the login event behind the authentication cookie is closed,  the sockets opened for it are disconnected, the portal cookies are cleared and a logout event is written to  the login history. Send it with the cookie or token of the session that is to be closed; an anonymous call is  accepted and closes nothing. The operation is mutating and idempotent - the same session cannot be closed  twice - and it touches only that one session: the other sessions of the same user stay alive and are ended by  `PUT api/2.0/security/activeconnections/logoutallexceptthis` or  `PUT api/2.0/security/activeconnections/logout/{loginEventId}`. The answer is a single logout URL when the  user signed in through SSO and the portal has an SLO endpoint configured, and the client has to open that URL  to end the session on the identity provider as well; for everyone else it is empty and nothing more is needed.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/logout/).

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


// Log out
AuthenticationAPIApi.logout() { (response, error) in
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

# **saveMobilePhone**
```swift
    open class func saveMobilePhone(mobileRequestsDto: MobileRequestsDto? = nil, completion: @escaping (_ data: AuthenticationTokenWrapper?, _ error: Error?) -> Void)
```

Stores the mobile phone number of a user who is going through phone activation and sends the first SMS  authentication code to it. It is reachable only with the phone-activation confirmation link that  `POST api/2.0/authentication` returns in `confirmUrl` when SMS two-factor is required and the user has no  activated number yet: that link authorizes the call in place of an authentication token, and no token is  issued here. The operation is mutating and not idempotent - it saves the number as not activated, writes an  audit event and sends a message - and an already activated number is not replaced this way, the stored number  has to be erased first. The answer carries `sms`, the masked number and `expires`, the moment the code stops  being accepted. Submit that code to `POST api/2.0/authentication/{code}`, which signs the user in and marks  the number activated, or ask for another one with `POST api/2.0/authentication/sendsms`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-mobile-phone/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mobileRequestsDto** | [**MobileRequestsDto**](MobileRequestsDto.md) |  | [optional] 

### Return type

[**AuthenticationTokenWrapper**](AuthenticationTokenWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let mobileRequestsDto = MobileRequestsDto(mobilePhone: "mobilePhone_example") // MobileRequestsDto |  (optional)

// Set a mobile phone
AuthenticationAPIApi.saveMobilePhone(mobileRequestsDto: mobileRequestsDto) { (response, error) in
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

# **sendSmsCode**
```swift
    open class func sendSmsCode(authRequestsDto: AuthRequestsDto? = nil, completion: @escaping (_ data: AuthenticationTokenWrapper?, _ error: Error?) -> Void)
```

Sends a new SMS authentication code to the phone number stored for the user and reports when that code  expires. The credentials in the body are checked exactly as by `POST api/2.0/authentication`, so use this  operation to resend the code after that call answered with `sms`; the user needs SMS two-factor enabled and a  phone number already stored, which `POST api/2.0/authentication/setphone` registers. Open to unauthenticated  callers, mutating and not idempotent: every call sends a message, is counted in the portal's SMS usage and  spends one of the few codes a number is allowed within the code lifetime (ten minutes by default), after which  the call fails until those codes expire. Codes sent earlier stay valid, so a resent code does not invalidate  them, and the first one to be accepted invalidates all of them. The answer carries `sms`, the masked number  and `expires`, and no token - submit the code to `POST api/2.0/authentication/{code}`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-sms-code/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authRequestsDto** | [**AuthRequestsDto**](AuthRequestsDto.md) |  | [optional] 

### Return type

[**AuthenticationTokenWrapper**](AuthenticationTokenWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authRequestsDto = AuthRequestsDto(userName: "userName_example", password: "password_example", passwordHash: "passwordHash_example", provider: "provider_example", accessToken: "accessToken_example", serializedProfile: "serializedProfile_example", codeOAuth: "codeOAuth_example", session: true, confirmData: ConfirmData(email: "email_example", first: true, key: "key_example"), recaptchaType: RecaptchaType(), recaptchaResponse: "recaptchaResponse_example", culture: "culture_example") // AuthRequestsDto |  (optional)

// Send SMS code
AuthenticationAPIApi.sendSmsCode(authRequestsDto: authRequestsDto) { (response, error) in
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

