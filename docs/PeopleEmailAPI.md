# PeopleEmailAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changeUserEmail**](PeopleEmailAPI.md#changeuseremail) | **PUT** /api/2.0/people/{userid}/email | Change a user email
[**sendEmailChangeInstructions**](PeopleEmailAPI.md#sendemailchangeinstructions) | **POST** /api/2.0/people/email | Send instructions to change email


# **changeUserEmail**
```swift
    open class func changeUserEmail(userid: UUID, changeEmailRequest: ChangeEmailRequest, completion: @escaping (_ data: EmployeeFullWrapper?, _ error: Error?) -> Void)
```

Sets a new email address on an account, which is the step that completes an email change.  The request has to carry the confirmation token from the emailed link rather than an ordinary session, and an  expired or already used token is answered with 401.  The account has to exist and be `Active`, and only the portal owner may change the owner's own address.  Pass the address either in plain text as `email` or, as it arrives inside the confirmation link, encrypted as  `encEmail`; an empty or malformed address answers 400.  An address equal to the current one is accepted and changes nothing, while a new one is stored in lowercase  and marks the account `Activated`, because following the link proves the address works.  The answer is the profile with its new address.  The change is requested through `POST api/2.0/people/email`, which is what sends the link.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-user-email/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **UUID** | The ID of the account whose address is set, taken from the route. It has to match the account the  confirmation token was issued for, and the account has to be active. | 
 **changeEmailRequest** | [**ChangeEmailRequest**](ChangeEmailRequest.md) | The new address, in plain text or in the encrypted form the confirmation link carries. | 

### Return type

[**EmployeeFullWrapper**](EmployeeFullWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userid = 987 // UUID | The ID of the account whose address is set, taken from the route. It has to match the account the  confirmation token was issued for, and the account has to be active.
let changeEmailRequest = ChangeEmailRequest(email: "email_example", encEmail: "encEmail_example") // ChangeEmailRequest | The new address, in plain text or in the encrypted form the confirmation link carries.

// Change a user email
PeopleEmailAPIApi.changeUserEmail(userid: userid, changeEmailRequest: changeEmailRequest) { (response, error) in
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

# **sendEmailChangeInstructions**
```swift
    open class func sendEmailChangeInstructions(updateMemberRequestDto: UpdateMemberRequestDto? = nil, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Starts changing the email address of an account, and what it actually does depends on who calls it.  A caller acting on their own account only gets a confirmation letter sent to the new address, and the address  stays unchanged until that link is followed, which lands on `PUT api/2.0/people/{userid}/email`.  A DocSpace administrator acting on somebody else changes the address immediately instead: the account is  marked as not activated, every session of it is ended, and activation instructions are sent to the new  address - and passing the address the account already has is then rejected with 400.  A caller who is not an administrator may only address their own account, nobody but the owner may change the  owner's address, and only the owner may change the address of another DocSpace administrator.  The target has to be an account that is neither disabled nor a pending invitation, otherwise the operation  answers 404, and an address that already belongs to somebody answers 400.  The answer is a ready-to-display message naming the address the letter was sent to.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-email-change-instructions/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateMemberRequestDto** | [**UpdateMemberRequestDto**](UpdateMemberRequestDto.md) |  | [optional] 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateMemberRequestDto = UpdateMemberRequestDto(userId: "userId_example", disable: false, email: "email_example", isUser: true, firstName: "firstName_example", lastName: "lastName_example", department: [123], location: "location_example", comment: "comment_example", contacts: [Contact(type: "type_example", value: "value_example")], files: "files_example", spam: false) // UpdateMemberRequestDto |  (optional)

// Send instructions to change email
PeopleEmailAPIApi.sendEmailChangeInstructions(updateMemberRequestDto: updateMemberRequestDto) { (response, error) in
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

