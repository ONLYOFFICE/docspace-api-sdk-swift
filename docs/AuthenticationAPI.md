# AuthenticationAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticateMe**](AuthenticationAPI.md#authenticateme) | **POST** /api/2.0/authentication | Authenticate a user
[**authenticateMeFromBodyWithCode**](AuthenticationAPI.md#authenticatemefrombodywithcode) | **POST** /api/2.0/authentication/{code} | Authenticate a user by code
[**checkConfirm**](AuthenticationAPI.md#checkconfirm) | **POST** /api/2.0/authentication/confirm | Open confirmation email URL
[**getIsAuthentificated**](AuthenticationAPI.md#getisauthentificated) | **GET** /api/2.0/authentication | Check authentication
[**logout**](AuthenticationAPI.md#logout) | **POST** /api/2.0/authentication/logout | Log out
[**saveMobilePhone**](AuthenticationAPI.md#savemobilephone) | **POST** /api/2.0/authentication/setphone | Set a mobile phone
[**sendSmsCode**](AuthenticationAPI.md#sendsmscode) | **POST** /api/2.0/authentication/sendsms | Send SMS code


# **authenticateMe**
```swift
    open class func authenticateMe(authRequestsDto: AuthRequestsDto? = nil, completion: @escaping (_ data: AuthenticationTokenWrapper?, _ error: Error?) -> Void)
```

Authenticates the current user by SMS, authenticator app, or without two-factor authentication.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/authenticate-me/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authRequestsDto** | [**AuthRequestsDto**](AuthRequestsDto.md) |  | [optional] 

### Return type

[**AuthenticationTokenWrapper**](AuthenticationTokenWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authRequestsDto = AuthRequestsDto(userName: "userName_example", password: "password_example", passwordHash: "passwordHash_example", provider: "provider_example", accessToken: "accessToken_example", serializedProfile: "serializedProfile_example", code: "code_example", codeOAuth: "codeOAuth_example", session: true, confirmData: ConfirmData(email: "email_example", first: true, key: "key_example"), recaptchaType: RecaptchaType(), recaptchaResponse: "recaptchaResponse_example", culture: "culture_example") // AuthRequestsDto |  (optional)

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
    open class func authenticateMeFromBodyWithCode(code: String, authRequestsDto: AuthRequestsDto? = nil, completion: @escaping (_ data: AuthenticationTokenWrapper?, _ error: Error?) -> Void)
```

Authenticates the current user by SMS or two-factor authentication code.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/authenticate-me-from-body-with-code/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String** |  | 
 **authRequestsDto** | [**AuthRequestsDto**](AuthRequestsDto.md) |  | [optional] 

### Return type

[**AuthenticationTokenWrapper**](AuthenticationTokenWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let code = "code_example" // String | 
let authRequestsDto = AuthRequestsDto(userName: "userName_example", password: "password_example", passwordHash: "passwordHash_example", provider: "provider_example", accessToken: "accessToken_example", serializedProfile: "serializedProfile_example", code: "code_example", codeOAuth: "codeOAuth_example", session: true, confirmData: ConfirmData(email: "email_example", first: true, key: "key_example"), recaptchaType: RecaptchaType(), recaptchaResponse: "recaptchaResponse_example", culture: "culture_example") // AuthRequestsDto |  (optional)

// Authenticate a user by code
AuthenticationAPIApi.authenticateMeFromBodyWithCode(code: code, authRequestsDto: authRequestsDto) { (response, error) in
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

Opens a confirmation email URL to validate a certain action (employee invitation, portal removal, phone activation, etc.).

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-confirm/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailValidationKeyModel** | [**EmailValidationKeyModel**](EmailValidationKeyModel.md) |  | [optional] 

### Return type

[**ConfirmWrapper**](ConfirmWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let emailValidationKeyModel = EmailValidationKeyModel(key: "key_example", emplType: EmployeeType(), email: "email_example", encEmail: "encEmail_example", uiD: 123, type: ConfirmType(), first: "first_example", roomId: "roomId_example") // EmailValidationKeyModel |  (optional)

// Open confirmation email URL
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

Checks if the current user is authenticated or not.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-authentificated/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

No authorization required

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

Logs out of the current user account.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/logout/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

No authorization required

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

Sets a mobile phone for the current user.

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

Sends SMS with an authentication code.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-sms-code/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authRequestsDto** | [**AuthRequestsDto**](AuthRequestsDto.md) |  | [optional] 

### Return type

[**AuthenticationTokenWrapper**](AuthenticationTokenWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authRequestsDto = AuthRequestsDto(userName: "userName_example", password: "password_example", passwordHash: "passwordHash_example", provider: "provider_example", accessToken: "accessToken_example", serializedProfile: "serializedProfile_example", code: "code_example", codeOAuth: "codeOAuth_example", session: true, confirmData: ConfirmData(email: "email_example", first: true, key: "key_example"), recaptchaType: RecaptchaType(), recaptchaResponse: "recaptchaResponse_example", culture: "culture_example") // AuthRequestsDto |  (optional)

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

