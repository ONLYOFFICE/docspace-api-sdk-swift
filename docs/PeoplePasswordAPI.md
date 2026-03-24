# PeoplePasswordAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changeUserPassword**](PeoplePasswordAPI.md#changeuserpassword) | **PUT** /api/2.0/people/{userid}/password | Change a user password
[**sendUserPassword**](PeoplePasswordAPI.md#senduserpassword) | **POST** /api/2.0/people/password | Remind a user password


# **changeUserPassword**
```swift
    open class func changeUserPassword(userid: UUID, memberBaseRequestDto: MemberBaseRequestDto, completion: @escaping (_ data: EmployeeFullWrapper?, _ error: Error?) -> Void)
```

Sets a new password to the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-user-password/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **UUID** | The user ID. | 
 **memberBaseRequestDto** | [**MemberBaseRequestDto**](MemberBaseRequestDto.md) | The request parameters for the user generic information. | 

### Return type

[**EmployeeFullWrapper**](EmployeeFullWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userid = 987 // UUID | The user ID.
let memberBaseRequestDto = MemberBaseRequestDto(password: "password_example", passwordHash: "passwordHash_example", email: "email_example", encEmail: "encEmail_example") // MemberBaseRequestDto | The request parameters for the user generic information.

// Change a user password
PeoplePasswordAPIApi.changeUserPassword(userid: userid, memberBaseRequestDto: memberBaseRequestDto) { (response, error) in
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

# **sendUserPassword**
```swift
    open class func sendUserPassword(emailMemberRequestDto: EmailMemberRequestDto? = nil, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Reminds a password to the user using the email address specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-user-password/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailMemberRequestDto** | [**EmailMemberRequestDto**](EmailMemberRequestDto.md) |  | [optional] 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let emailMemberRequestDto = EmailMemberRequestDto(email: "email_example", recaptchaType: RecaptchaType(), recaptchaResponse: "recaptchaResponse_example") // EmailMemberRequestDto |  (optional)

// Remind a user password
PeoplePasswordAPIApi.sendUserPassword(emailMemberRequestDto: emailMemberRequestDto) { (response, error) in
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

