# PeopleGuestsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**approveGuestShareLink**](PeopleGuestsAPI.md#approveguestsharelink) | **POST** /api/2.0/people/guests/share/approve | Approve a guest sharing link
[**deleteGuests**](PeopleGuestsAPI.md#deleteguests) | **DELETE** /api/2.0/people/guests | Delete guests


# **approveGuestShareLink**
```swift
    open class func approveGuestShareLink(emailMemberRequestDto: EmailMemberRequestDto? = nil, completion: @escaping (_ data: EmployeeFullWrapper?, _ error: Error?) -> Void)
```

Approves a guest sharing link and returns the detailed information about a guest.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/approve-guest-share-link/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailMemberRequestDto** | [**EmailMemberRequestDto**](EmailMemberRequestDto.md) |  | [optional] 

### Return type

[**EmployeeFullWrapper**](EmployeeFullWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let emailMemberRequestDto = EmailMemberRequestDto(email: "email_example", recaptchaType: RecaptchaType(), recaptchaResponse: "recaptchaResponse_example") // EmailMemberRequestDto |  (optional)

// Approve a guest sharing link
PeopleGuestsAPIApi.approveGuestShareLink(emailMemberRequestDto: emailMemberRequestDto) { (response, error) in
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

# **deleteGuests**
```swift
    open class func deleteGuests(updateMembersRequestDto: UpdateMembersRequestDto? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Deletes guests from the list and excludes them from rooms to which they were invited.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-guests/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateMembersRequestDto** | [**UpdateMembersRequestDto**](UpdateMembersRequestDto.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateMembersRequestDto = UpdateMembersRequestDto(userIds: [123], resendAll: true) // UpdateMembersRequestDto |  (optional)

// Delete guests
PeopleGuestsAPIApi.deleteGuests(updateMembersRequestDto: updateMembersRequestDto) { (response, error) in
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

