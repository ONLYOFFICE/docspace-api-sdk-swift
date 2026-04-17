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

Sets a new email to the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-user-email/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **UUID** | The user ID. | 
 **changeEmailRequest** | [**ChangeEmailRequest**](ChangeEmailRequest.md) | The request parameters for updating a user email. | 

### Return type

[**EmployeeFullWrapper**](EmployeeFullWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userid = 987 // UUID | The user ID.
let changeEmailRequest = ChangeEmailRequest(email: "email_example", encEmail: "encEmail_example") // ChangeEmailRequest | The request parameters for updating a user email.

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

Sends a message to the user email with the instructions to change the email address connected to the portal.

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

