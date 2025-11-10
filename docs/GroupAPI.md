# GroupAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addGroup**](GroupAPI.md#addgroup) | **POST** /api/2.0/group | Add a new group
[**addMembersTo**](GroupAPI.md#addmembersto) | **PUT** /api/2.0/group/{id}/members | Add group members
[**deleteGroup**](GroupAPI.md#deletegroup) | **DELETE** /api/2.0/group/{id} | Delete a group
[**getGroup**](GroupAPI.md#getgroup) | **GET** /api/2.0/group/{id} | Get a group
[**getGroupByUserId**](GroupAPI.md#getgroupbyuserid) | **GET** /api/2.0/group/user/{userid} | Get user groups
[**getGroups**](GroupAPI.md#getgroups) | **GET** /api/2.0/group | Get groups
[**moveMembersTo**](GroupAPI.md#movemembersto) | **PUT** /api/2.0/group/{fromId}/members/{toId} | Move group members
[**removeMembersFrom**](GroupAPI.md#removemembersfrom) | **DELETE** /api/2.0/group/{id}/members | Remove group members
[**setGroupManager**](GroupAPI.md#setgroupmanager) | **PUT** /api/2.0/group/{id}/manager | Set a group manager
[**setMembersTo**](GroupAPI.md#setmembersto) | **POST** /api/2.0/group/{id}/members | Replace group members
[**updateGroup**](GroupAPI.md#updategroup) | **PUT** /api/2.0/group/{id} | Update a group


# **addGroup**
```swift
    open class func addGroup(groupRequestDto: GroupRequestDto? = nil, completion: @escaping (_ data: GroupWrapper?, _ error: Error?) -> Void)
```

Adds a new group with the group manager, name, and members specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-group/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupRequestDto** | [**GroupRequestDto**](GroupRequestDto.md) |  | [optional] 

### Return type

[**GroupWrapper**](GroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let groupRequestDto = GroupRequestDto(members: [123], groupManager: 123, groupName: "groupName_example") // GroupRequestDto |  (optional)

// Add a new group
GroupAPIApi.addGroup(groupRequestDto: groupRequestDto) { (response, error) in
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

# **addMembersTo**
```swift
    open class func addMembersTo(id: UUID, membersRequest: MembersRequest, completion: @escaping (_ data: GroupWrapper?, _ error: Error?) -> Void)
```

Adds new group members to the group with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-members-to/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | The group ID. | 
 **membersRequest** | [**MembersRequest**](MembersRequest.md) | The member request. | 

### Return type

[**GroupWrapper**](GroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | The group ID.
let membersRequest = MembersRequest(members: [123]) // MembersRequest | The member request.

// Add group members
GroupAPIApi.addMembersTo(id: id, membersRequest: membersRequest) { (response, error) in
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

# **deleteGroup**
```swift
    open class func deleteGroup(id: UUID, completion: @escaping (_ data: NoContentResultWrapper?, _ error: Error?) -> Void)
```

Deletes a group with the ID specified in the request from the list of groups on the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-group/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | The group ID. | 

### Return type

[**NoContentResultWrapper**](NoContentResultWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | The group ID.

// Delete a group
GroupAPIApi.deleteGroup(id: id) { (response, error) in
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

# **getGroup**
```swift
    open class func getGroup(id: UUID, includeMembers: Bool? = nil, completion: @escaping (_ data: GroupWrapper?, _ error: Error?) -> Void)
```

Returns the detailed information about the selected group.   **Note**: This method returns full group information.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-group/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | The group ID. | 
 **includeMembers** | **Bool** | Specifies whether to include the group members or not. | [optional] 

### Return type

[**GroupWrapper**](GroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | The group ID.
let includeMembers = true // Bool | Specifies whether to include the group members or not. (optional)

// Get a group
GroupAPIApi.getGroup(id: id, includeMembers: includeMembers) { (response, error) in
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

# **getGroupByUserId**
```swift
    open class func getGroupByUserId(userid: UUID, completion: @escaping (_ data: GroupSummaryArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of groups for the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-group-by-user-id/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **UUID** | The user ID. | 

### Return type

[**GroupSummaryArrayWrapper**](GroupSummaryArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userid = 987 // UUID | The user ID.

// Get user groups
GroupAPIApi.getGroupByUserId(userid: userid) { (response, error) in
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

# **getGroups**
```swift
    open class func getGroups(userId: UUID? = nil, manager: Bool? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterValue: String? = nil, completion: @escaping (_ data: GroupArrayWrapper?, _ error: Error?) -> Void)
```

Returns the general information about all the groups, such as group ID and group manager.   **Note**: This method returns partial group information.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **UUID** | The user ID. | [optional] 
 **manager** | **Bool** | Specifies if the user is a manager or not. | [optional] 
 **count** | **Int** | The number of records to retrieve. | [optional] 
 **startIndex** | **Int** | The starting index for paginated results. | [optional] 
 **sortBy** | **String** | Specifies the property used to sort the query results. | [optional] 
 **sortOrder** | [**SortOrder**](.md) | The order in which the results are sorted. | [optional] 
 **filterValue** | **String** | The text used for filtering or searching group data. | [optional] 

### Return type

[**GroupArrayWrapper**](GroupArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userId = 987 // UUID | The user ID. (optional)
let manager = true // Bool | Specifies if the user is a manager or not. (optional)
let count = 987 // Int | The number of records to retrieve. (optional)
let startIndex = 987 // Int | The starting index for paginated results. (optional)
let sortBy = "sortBy_example" // String | Specifies the property used to sort the query results. (optional)
let sortOrder = SortOrder() // SortOrder | The order in which the results are sorted. (optional)
let filterValue = "filterValue_example" // String | The text used for filtering or searching group data. (optional)

// Get groups
GroupAPIApi.getGroups(userId: userId, manager: manager, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterValue: filterValue) { (response, error) in
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

# **moveMembersTo**
```swift
    open class func moveMembersTo(fromId: UUID, toId: UUID, completion: @escaping (_ data: GroupWrapper?, _ error: Error?) -> Void)
```

Moves all the members from the selected group to another one specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/move-members-to/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromId** | **UUID** | The group ID to move from. | 
 **toId** | **UUID** | The group ID to move to. | 

### Return type

[**GroupWrapper**](GroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fromId = 987 // UUID | The group ID to move from.
let toId = 987 // UUID | The group ID to move to.

// Move group members
GroupAPIApi.moveMembersTo(fromId: fromId, toId: toId) { (response, error) in
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

# **removeMembersFrom**
```swift
    open class func removeMembersFrom(id: UUID, membersRequest: MembersRequest, completion: @escaping (_ data: GroupWrapper?, _ error: Error?) -> Void)
```

Removes the group members specified in the request from the selected group.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-members-from/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | The group ID. | 
 **membersRequest** | [**MembersRequest**](MembersRequest.md) | The member request. | 

### Return type

[**GroupWrapper**](GroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | The group ID.
let membersRequest = MembersRequest(members: [123]) // MembersRequest | The member request.

// Remove group members
GroupAPIApi.removeMembersFrom(id: id, membersRequest: membersRequest) { (response, error) in
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

# **setGroupManager**
```swift
    open class func setGroupManager(id: UUID, setManagerRequest: SetManagerRequest, completion: @escaping (_ data: GroupWrapper?, _ error: Error?) -> Void)
```

Sets a user with the ID specified in the request as a group manager.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-group-manager/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | The group ID. | 
 **setManagerRequest** | [**SetManagerRequest**](SetManagerRequest.md) | The request for setting a group manager. | 

### Return type

[**GroupWrapper**](GroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | The group ID.
let setManagerRequest = SetManagerRequest(userId: 123) // SetManagerRequest | The request for setting a group manager.

// Set a group manager
GroupAPIApi.setGroupManager(id: id, setManagerRequest: setManagerRequest) { (response, error) in
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

# **setMembersTo**
```swift
    open class func setMembersTo(id: UUID, membersRequest: MembersRequest, completion: @escaping (_ data: GroupWrapper?, _ error: Error?) -> Void)
```

Replaces the group members with those specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-members-to/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | The group ID. | 
 **membersRequest** | [**MembersRequest**](MembersRequest.md) | The member request. | 

### Return type

[**GroupWrapper**](GroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | The group ID.
let membersRequest = MembersRequest(members: [123]) // MembersRequest | The member request.

// Replace group members
GroupAPIApi.setMembersTo(id: id, membersRequest: membersRequest) { (response, error) in
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

# **updateGroup**
```swift
    open class func updateGroup(id: UUID, updateGroupRequest: UpdateGroupRequest, completion: @escaping (_ data: GroupWrapper?, _ error: Error?) -> Void)
```

Updates the existing group changing the group manager, name, and/or members.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-group/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | The group ID. | 
 **updateGroupRequest** | [**UpdateGroupRequest**](UpdateGroupRequest.md) | The request for updating a group. | 

### Return type

[**GroupWrapper**](GroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | The group ID.
let updateGroupRequest = UpdateGroupRequest(membersToAdd: [123], membersToRemove: [123], groupManager: 123, groupName: "groupName_example") // UpdateGroupRequest | The request for updating a group.

// Update a group
GroupAPIApi.updateGroup(id: id, updateGroupRequest: updateGroupRequest) { (response, error) in
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

