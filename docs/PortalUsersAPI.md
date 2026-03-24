# PortalUsersAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getInvitationLink**](PortalUsersAPI.md#getinvitationlink) | **GET** /api/2.0/portal/users/invite/{employeeType} | Get an invitation link
[**getPortalUsersCount**](PortalUsersAPI.md#getportaluserscount) | **GET** /api/2.0/portal/userscount | Get a number of portal users
[**getUserById**](PortalUsersAPI.md#getuserbyid) | **GET** /api/2.0/portal/users/{userID} | Get a user by ID
[**markGiftMessageAsRead**](PortalUsersAPI.md#markgiftmessageasread) | **POST** /api/2.0/portal/present/mark | Mark a gift message as read
[**sendCongratulations**](PortalUsersAPI.md#sendcongratulations) | **POST** /api/2.0/portal/sendcongratulations | Send congratulations


# **getInvitationLink**
```swift
    open class func getInvitationLink(employeeType: EmployeeType, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Returns an invitation link for joining the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-invitation-link/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeType** | [**EmployeeType**](.md) | The type of employee role for the invitation link (All, RoomAdmin, Guest, DocSpaceAdmin, User). | 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let employeeType = EmployeeType() // EmployeeType | The type of employee role for the invitation link (All, RoomAdmin, Guest, DocSpaceAdmin, User).

// Get an invitation link
PortalUsersAPIApi.getInvitationLink(employeeType: employeeType) { (response, error) in
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

# **getPortalUsersCount**
```swift
    open class func getPortalUsersCount(completion: @escaping (_ data: Int64Wrapper?, _ error: Error?) -> Void)
```

Returns a number of portal users.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-users-count/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**Int64Wrapper**](Int64Wrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get a number of portal users
PortalUsersAPIApi.getPortalUsersCount() { (response, error) in
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

# **getUserById**
```swift
    open class func getUserById(userID: UUID, completion: @escaping (_ data: UserInfoWrapper?, _ error: Error?) -> Void)
```

Returns a user with the ID specified in the request from the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-by-id/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userID** | **UUID** | The user ID extracted from the route parameters. | 

### Return type

[**UserInfoWrapper**](UserInfoWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userID = 987 // UUID | The user ID extracted from the route parameters.

// Get a user by ID
PortalUsersAPIApi.getUserById(userID: userID) { (response, error) in
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

# **markGiftMessageAsRead**
```swift
    open class func markGiftMessageAsRead(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Marks a gift message as read.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/mark-gift-message-as-read/).

### Parameters
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Mark a gift message as read
PortalUsersAPIApi.markGiftMessageAsRead() { (response, error) in
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendCongratulations**
```swift
    open class func sendCongratulations(userid: UUID, key: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Sends congratulations to the user after registering a portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-congratulations/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **UUID** | The user ID to receive the congratulatory message. | 
 **key** | **String** | The template identifier or email configuration key. | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userid = 987 // UUID | The user ID to receive the congratulatory message.
let key = "key_example" // String | The template identifier or email configuration key.

// Send congratulations
PortalUsersAPIApi.sendCongratulations(userid: userid, key: key) { (response, error) in
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

