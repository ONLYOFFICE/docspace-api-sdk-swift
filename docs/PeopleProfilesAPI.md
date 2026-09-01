# PeopleProfilesAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMember**](PeopleProfilesAPI.md#addmember) | **POST** /api/2.0/people | Add a user
[**checkUserExistsByEmail**](PeopleProfilesAPI.md#checkuserexistsbyemail) | **GET** /api/2.0/people/exists | Check if a user exists by email
[**deleteMember**](PeopleProfilesAPI.md#deletemember) | **DELETE** /api/2.0/people/{userid} | Delete a user
[**deleteProfile**](PeopleProfilesAPI.md#deleteprofile) | **DELETE** /api/2.0/people/@self | Delete my profile
[**getAllProfiles**](PeopleProfilesAPI.md#getallprofiles) | **GET** /api/2.0/people | Get profiles
[**getClaims**](PeopleProfilesAPI.md#getclaims) | **GET** /api/2.0/people/tokendiagnostics | Get user claims
[**getProfileByEmail**](PeopleProfilesAPI.md#getprofilebyemail) | **GET** /api/2.0/people/email | Get a profile by user email
[**getProfileByUserId**](PeopleProfilesAPI.md#getprofilebyuserid) | **GET** /api/2.0/people/{userid} | Get a profile by user ID
[**getSelfProfile**](PeopleProfilesAPI.md#getselfprofile) | **GET** /api/2.0/people/@self | Get my profile
[**inviteUsers**](PeopleProfilesAPI.md#inviteusers) | **POST** /api/2.0/people/invite | Invite users
[**removeUsers**](PeopleProfilesAPI.md#removeusers) | **PUT** /api/2.0/people/delete | Delete users
[**resendUserInvites**](PeopleProfilesAPI.md#resenduserinvites) | **PUT** /api/2.0/people/invite | Resend activation emails
[**updateMember**](PeopleProfilesAPI.md#updatemember) | **PUT** /api/2.0/people/{userid} | Update a user
[**updateMemberCulture**](PeopleProfilesAPI.md#updatememberculture) | **PUT** /api/2.0/people/{userid}/culture | Update a user culture


# **addMember**
```swift
    open class func addMember(memberRequestDto: MemberRequestDto? = nil, completion: @escaping (_ data: EmployeeFullWrapper?, _ error: Error?) -> Void)
```

Adds a new portal user with the first name, last name, email address, and several optional parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-member/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **memberRequestDto** | [**MemberRequestDto**](MemberRequestDto.md) |  | [optional] 

### Return type

[**EmployeeFullWrapper**](EmployeeFullWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let memberRequestDto = MemberRequestDto(password: "password_example", passwordHash: "passwordHash_example", email: "email_example", type: EmployeeType(), isUser: true, firstName: "firstName_example", lastName: "lastName_example", department: [123], location: "location_example", comment: "comment_example", contacts: [Contact(type: "type_example", value: "value_example")], files: "files_example", fromInviteLink: false, key: "key_example", cultureName: "cultureName_example", target: 123, spam: false) // MemberRequestDto |  (optional)

// Add a user
PeopleProfilesAPIApi.addMember(memberRequestDto: memberRequestDto) { (response, error) in
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

# **checkUserExistsByEmail**
```swift
    open class func checkUserExistsByEmail(email: String? = nil, encemail: String? = nil, culture: String? = nil, completion: @escaping (_ data: UserExistsResponseWrapper?, _ error: Error?) -> Void)
```

Returns data indicating whether a user with the specified email exists on the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-user-exists-by-email/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String** | The user email address. | [optional] 
 **encemail** | **String** | The user encrypted email address. | [optional] 
 **culture** | **String** | Culture | [optional] 

### Return type

[**UserExistsResponseWrapper**](UserExistsResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let email = "email_example" // String | The user email address. (optional)
let encemail = "encemail_example" // String | The user encrypted email address. (optional)
let culture = "culture_example" // String | Culture (optional)

// Check if a user exists by email
PeopleProfilesAPIApi.checkUserExistsByEmail(email: email, encemail: encemail, culture: culture) { (response, error) in
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

# **deleteMember**
```swift
    open class func deleteMember(userid: String, completion: @escaping (_ data: EmployeeFullWrapper?, _ error: Error?) -> Void)
```

Deletes a user with the ID specified in the request from the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-member/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **String** | The user ID. | 

### Return type

[**EmployeeFullWrapper**](EmployeeFullWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userid = "userid_example" // String | The user ID.

// Delete a user
PeopleProfilesAPIApi.deleteMember(userid: userid) { (response, error) in
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

# **deleteProfile**
```swift
    open class func deleteProfile(completion: @escaping (_ data: EmployeeFullWrapper?, _ error: Error?) -> Void)
```

Deletes the current user profile.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-profile/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**EmployeeFullWrapper**](EmployeeFullWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Delete my profile
PeopleProfilesAPIApi.deleteProfile() { (response, error) in
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

# **getAllProfiles**
```swift
    open class func getAllProfiles(count: Int? = nil, startIndex: Int? = nil, filterBy: String? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterSeparator: String? = nil, filterValue: String? = nil, completion: @escaping (_ data: EmployeeFullArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of profiles for all the portal users.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-profiles/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **Int** | The maximum number of items to be retrieved in the response. | [optional] 
 **startIndex** | **Int** | The zero-based index of the first item to be retrieved in a filtered result set. | [optional] 
 **filterBy** | **String** | Specifies the filter criteria for user-related queries. | [optional] 
 **sortBy** | **String** | Specifies the property or field name by which the results should be sorted. | [optional] 
 **sortOrder** | [**SortOrder**](.md) | The order in which the results are sorted. | [optional] 
 **filterSeparator** | **String** | The character or string used to separate multiple filter values in a filtering query. | [optional] 
 **filterValue** | **String** | The text value used as an additional filter criterion for profiles retrieval. | [optional] 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let count = 987 // Int | The maximum number of items to be retrieved in the response. (optional)
let startIndex = 987 // Int | The zero-based index of the first item to be retrieved in a filtered result set. (optional)
let filterBy = "filterBy_example" // String | Specifies the filter criteria for user-related queries. (optional)
let sortBy = "sortBy_example" // String | Specifies the property or field name by which the results should be sorted. (optional)
let sortOrder = SortOrder() // SortOrder | The order in which the results are sorted. (optional)
let filterSeparator = "filterSeparator_example" // String | The character or string used to separate multiple filter values in a filtering query. (optional)
let filterValue = "filterValue_example" // String | The text value used as an additional filter criterion for profiles retrieval. (optional)

// Get profiles
PeopleProfilesAPIApi.getAllProfiles(count: count, startIndex: startIndex, filterBy: filterBy, sortBy: sortBy, sortOrder: sortOrder, filterSeparator: filterSeparator, filterValue: filterValue) { (response, error) in
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

# **getClaims**
```swift
    open class func getClaims(completion: @escaping (_ data: ObjectWrapper?, _ error: Error?) -> Void)
```

Returns the user claims.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-claims/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**ObjectWrapper**](ObjectWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get user claims
PeopleProfilesAPIApi.getClaims() { (response, error) in
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

# **getProfileByEmail**
```swift
    open class func getProfileByEmail(email: String? = nil, encemail: String? = nil, culture: String? = nil, completion: @escaping (_ data: EmployeeFullWrapper?, _ error: Error?) -> Void)
```

Returns the detailed information about a profile of the user with the email specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-profile-by-email/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String** | The user email address. | [optional] 
 **encemail** | **String** | The user encrypted email address. | [optional] 
 **culture** | **String** | Culture | [optional] 

### Return type

[**EmployeeFullWrapper**](EmployeeFullWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let email = "email_example" // String | The user email address. (optional)
let encemail = "encemail_example" // String | The user encrypted email address. (optional)
let culture = "culture_example" // String | Culture (optional)

// Get a profile by user email
PeopleProfilesAPIApi.getProfileByEmail(email: email, encemail: encemail, culture: culture) { (response, error) in
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

# **getProfileByUserId**
```swift
    open class func getProfileByUserId(userid: String, completion: @escaping (_ data: EmployeeFullWrapper?, _ error: Error?) -> Void)
```

Returns the detailed information about a profile of the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-profile-by-user-id/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **String** | The user ID. | 

### Return type

[**EmployeeFullWrapper**](EmployeeFullWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userid = "userid_example" // String | The user ID.

// Get a profile by user ID
PeopleProfilesAPIApi.getProfileByUserId(userid: userid) { (response, error) in
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

# **getSelfProfile**
```swift
    open class func getSelfProfile(completion: @escaping (_ data: EmployeeFullWrapper?, _ error: Error?) -> Void)
```

Returns the detailed information about the current user profile.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-self-profile/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**EmployeeFullWrapper**](EmployeeFullWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get my profile
PeopleProfilesAPIApi.getSelfProfile() { (response, error) in
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

# **inviteUsers**
```swift
    open class func inviteUsers(inviteUsersRequestDto: InviteUsersRequestDto? = nil, completion: @escaping (_ data: EmployeeArrayWrapper?, _ error: Error?) -> Void)
```

Invites users specified in the request to the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/invite-users/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteUsersRequestDto** | [**InviteUsersRequestDto**](InviteUsersRequestDto.md) |  | [optional] 

### Return type

[**EmployeeArrayWrapper**](EmployeeArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inviteUsersRequestDto = InviteUsersRequestDto(invitations: [UserInvitationRequestDto(email: "email_example", type: EmployeeType())], culture: "culture_example") // InviteUsersRequestDto |  (optional)

// Invite users
PeopleProfilesAPIApi.inviteUsers(inviteUsersRequestDto: inviteUsersRequestDto) { (response, error) in
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

# **removeUsers**
```swift
    open class func removeUsers(updateMembersRequestDto: UpdateMembersRequestDto? = nil, completion: @escaping (_ data: EmployeeFullArrayWrapper?, _ error: Error?) -> Void)
```

Deletes a list of the users with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-users/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateMembersRequestDto** | [**UpdateMembersRequestDto**](UpdateMembersRequestDto.md) |  | [optional] 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateMembersRequestDto = UpdateMembersRequestDto(userIds: [123], resendAll: false) // UpdateMembersRequestDto |  (optional)

// Delete users
PeopleProfilesAPIApi.removeUsers(updateMembersRequestDto: updateMembersRequestDto) { (response, error) in
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

# **resendUserInvites**
```swift
    open class func resendUserInvites(updateMembersRequestDto: UpdateMembersRequestDto? = nil, completion: @escaping (_ data: EmployeeFullArrayWrapper?, _ error: Error?) -> Void)
```

Resends emails to the users who have not activated their emails.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/resend-user-invites/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateMembersRequestDto** | [**UpdateMembersRequestDto**](UpdateMembersRequestDto.md) |  | [optional] 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateMembersRequestDto = UpdateMembersRequestDto(userIds: [123], resendAll: false) // UpdateMembersRequestDto |  (optional)

// Resend activation emails
PeopleProfilesAPIApi.resendUserInvites(updateMembersRequestDto: updateMembersRequestDto) { (response, error) in
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

# **updateMember**
```swift
    open class func updateMember(userid: String, updateMemberRequestDto: UpdateMemberRequestDto, completion: @escaping (_ data: EmployeeFullWrapper?, _ error: Error?) -> Void)
```

Updates the data for the selected portal user with the first name, last name, email address, and/or optional parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-member/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **String** | The user ID. | 
 **updateMemberRequestDto** | [**UpdateMemberRequestDto**](UpdateMemberRequestDto.md) | The request parameters for updating the user information. | 

### Return type

[**EmployeeFullWrapper**](EmployeeFullWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userid = "userid_example" // String | The user ID.
let updateMemberRequestDto = UpdateMemberRequestDto(userId: "userId_example", disable: false, email: "email_example", isUser: true, firstName: "firstName_example", lastName: "lastName_example", department: [123], location: "location_example", comment: "comment_example", contacts: [Contact(type: "type_example", value: "value_example")], files: "files_example", spam: false) // UpdateMemberRequestDto | The request parameters for updating the user information.

// Update a user
PeopleProfilesAPIApi.updateMember(userid: userid, updateMemberRequestDto: updateMemberRequestDto) { (response, error) in
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

# **updateMemberCulture**
```swift
    open class func updateMemberCulture(userid: String, culture: Culture? = nil, completion: @escaping (_ data: EmployeeFullWrapper?, _ error: Error?) -> Void)
```

Updates the user culture with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-member-culture/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **String** | The user ID. | 
 **culture** | [**Culture**](Culture.md) | The culture name parameters. | [optional] 

### Return type

[**EmployeeFullWrapper**](EmployeeFullWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userid = "userid_example" // String | The user ID.
let culture = Culture(cultureName: "cultureName_example") // Culture | The culture name parameters. (optional)

// Update a user culture
PeopleProfilesAPIApi.updateMemberCulture(userid: userid, culture: culture) { (response, error) in
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

