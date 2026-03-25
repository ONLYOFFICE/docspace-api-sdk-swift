# PeopleSearchAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAccountsEntriesWithFilesShared**](PeopleSearchAPI.md#getaccountsentrieswithfilesshared) | **GET** /api/2.0/accounts/file/{id}/search | Get account entries with file sharing settings
[**getAccountsEntriesWithFoldersShared**](PeopleSearchAPI.md#getaccountsentrieswithfoldersshared) | **GET** /api/2.0/accounts/folder/{id}/search | Get account entries with folder sharing settings
[**getAccountsEntriesWithRoomsShared**](PeopleSearchAPI.md#getaccountsentrieswithroomsshared) | **GET** /api/2.0/accounts/room/{id}/search | Get account entries
[**getSearch**](PeopleSearchAPI.md#getsearch) | **GET** /api/2.0/people/@search/{query} | Search users
[**getSimpleByFilter**](PeopleSearchAPI.md#getsimplebyfilter) | **GET** /api/2.0/people/simple/filter | Search users by extended filter
[**getUsersWithFilesShared**](PeopleSearchAPI.md#getuserswithfilesshared) | **GET** /api/2.0/people/file/{id} | Get users with file sharing settings
[**getUsersWithFoldersShared**](PeopleSearchAPI.md#getuserswithfoldersshared) | **GET** /api/2.0/people/folder/{id} | Get users with folder sharing settings
[**getUsersWithRoomShared**](PeopleSearchAPI.md#getuserswithroomshared) | **GET** /api/2.0/people/room/{id} | Get users with room sharing settings
[**searchUsersByExtendedFilter**](PeopleSearchAPI.md#searchusersbyextendedfilter) | **GET** /api/2.0/people/filter | Search users with detailed information by extended filter
[**searchUsersByQuery**](PeopleSearchAPI.md#searchusersbyquery) | **GET** /api/2.0/people/search | Search users (using query parameters)
[**searchUsersByStatus**](PeopleSearchAPI.md#searchusersbystatus) | **GET** /api/2.0/people/status/{status}/search | Search users by status filter


# **getAccountsEntriesWithFilesShared**
```swift
    open class func getAccountsEntriesWithFilesShared(id: Int, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, completion: @escaping (_ data: ObjectArrayWrapper?, _ error: Error?) -> Void)
```

Returns the account entries with their sharing settings for a file with the ID specified in request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-files-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The user ID. | 
 **employeeStatus** | [**EmployeeStatus**](.md) | The user status. | [optional] 
 **activationStatus** | [**EmployeeActivationStatus**](.md) | The user activation status. | [optional] 
 **excludeShared** | **Bool** | Specifies whether to exclude the account sharing settings from the response. | [optional] 
 **includeShared** | **Bool** | Specifies whether to include the account sharing settings in the response. | [optional] 
 **invitedByMe** | **Bool** | Specifies whether the user is invited by the current user or not. | [optional] 
 **inviterId** | **UUID** | The inviter ID. | [optional] 
 **area** | [**Area**](.md) | The area of the account entries. | [optional] 
 **employeeTypes** | [**[EmployeeType]**](EmployeeType.md) | The list of the user types. | [optional] 
 **count** | **Int** | The number of items to retrieve in a request. | [optional] 
 **startIndex** | **Int** | The starting index for the query results. | [optional] 
 **filterSeparator** | **String** | Specifies the separator used in filter expressions. | [optional] 
 **filterValue** | **String** | The text filter applied to the accounts search query. | [optional] 

### Return type

[**ObjectArrayWrapper**](ObjectArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The user ID.
let employeeStatus = EmployeeStatus() // EmployeeStatus | The user status. (optional)
let activationStatus = EmployeeActivationStatus() // EmployeeActivationStatus | The user activation status. (optional)
let excludeShared = false // Bool | Specifies whether to exclude the account sharing settings from the response. (optional)
let includeShared = false // Bool | Specifies whether to include the account sharing settings in the response. (optional)
let invitedByMe = false // Bool | Specifies whether the user is invited by the current user or not. (optional)
let inviterId = 987 // UUID | The inviter ID. (optional)
let area = Area() // Area | The area of the account entries. (optional)
let employeeTypes = [[EmployeeType()]] // [EmployeeType] | The list of the user types. (optional)
let count = 987 // Int | The number of items to retrieve in a request. (optional)
let startIndex = 987 // Int | The starting index for the query results. (optional)
let filterSeparator = "filterSeparator_example" // String | Specifies the separator used in filter expressions. (optional)
let filterValue = "filterValue_example" // String | The text filter applied to the accounts search query. (optional)

// Get account entries with file sharing settings
PeopleSearchAPIApi.getAccountsEntriesWithFilesShared(id: id, employeeStatus: employeeStatus, activationStatus: activationStatus, excludeShared: excludeShared, includeShared: includeShared, invitedByMe: invitedByMe, inviterId: inviterId, area: area, employeeTypes: employeeTypes, count: count, startIndex: startIndex, filterSeparator: filterSeparator, filterValue: filterValue) { (response, error) in
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

# **getAccountsEntriesWithFoldersShared**
```swift
    open class func getAccountsEntriesWithFoldersShared(id: Int, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, completion: @escaping (_ data: ObjectArrayWrapper?, _ error: Error?) -> Void)
```

Returns the account entries with their sharing settings in a folder with the ID specified in request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-folders-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The user ID. | 
 **employeeStatus** | [**EmployeeStatus**](.md) | The user status. | [optional] 
 **activationStatus** | [**EmployeeActivationStatus**](.md) | The user activation status. | [optional] 
 **excludeShared** | **Bool** | Specifies whether to exclude the account sharing settings from the response. | [optional] 
 **includeShared** | **Bool** | Specifies whether to include the account sharing settings in the response. | [optional] 
 **invitedByMe** | **Bool** | Specifies whether the user is invited by the current user or not. | [optional] 
 **inviterId** | **UUID** | The inviter ID. | [optional] 
 **area** | [**Area**](.md) | The area of the account entries. | [optional] 
 **employeeTypes** | [**[EmployeeType]**](EmployeeType.md) | The list of the user types. | [optional] 
 **count** | **Int** | The number of items to retrieve in a request. | [optional] 
 **startIndex** | **Int** | The starting index for the query results. | [optional] 
 **filterSeparator** | **String** | Specifies the separator used in filter expressions. | [optional] 
 **filterValue** | **String** | The text filter applied to the accounts search query. | [optional] 

### Return type

[**ObjectArrayWrapper**](ObjectArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The user ID.
let employeeStatus = EmployeeStatus() // EmployeeStatus | The user status. (optional)
let activationStatus = EmployeeActivationStatus() // EmployeeActivationStatus | The user activation status. (optional)
let excludeShared = false // Bool | Specifies whether to exclude the account sharing settings from the response. (optional)
let includeShared = false // Bool | Specifies whether to include the account sharing settings in the response. (optional)
let invitedByMe = false // Bool | Specifies whether the user is invited by the current user or not. (optional)
let inviterId = 987 // UUID | The inviter ID. (optional)
let area = Area() // Area | The area of the account entries. (optional)
let employeeTypes = [[EmployeeType()]] // [EmployeeType] | The list of the user types. (optional)
let count = 987 // Int | The number of items to retrieve in a request. (optional)
let startIndex = 987 // Int | The starting index for the query results. (optional)
let filterSeparator = "filterSeparator_example" // String | Specifies the separator used in filter expressions. (optional)
let filterValue = "filterValue_example" // String | The text filter applied to the accounts search query. (optional)

// Get account entries with folder sharing settings
PeopleSearchAPIApi.getAccountsEntriesWithFoldersShared(id: id, employeeStatus: employeeStatus, activationStatus: activationStatus, excludeShared: excludeShared, includeShared: includeShared, invitedByMe: invitedByMe, inviterId: inviterId, area: area, employeeTypes: employeeTypes, count: count, startIndex: startIndex, filterSeparator: filterSeparator, filterValue: filterValue) { (response, error) in
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

# **getAccountsEntriesWithRoomsShared**
```swift
    open class func getAccountsEntriesWithRoomsShared(id: Int, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, completion: @escaping (_ data: ObjectArrayWrapper?, _ error: Error?) -> Void)
```

Returns the account entries with their sharing settings in a room with the ID specified in request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-rooms-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The user ID. | 
 **employeeStatus** | [**EmployeeStatus**](.md) | The user status. | [optional] 
 **activationStatus** | [**EmployeeActivationStatus**](.md) | The user activation status. | [optional] 
 **excludeShared** | **Bool** | Specifies whether to exclude the account sharing settings from the response. | [optional] 
 **includeShared** | **Bool** | Specifies whether to include the account sharing settings in the response. | [optional] 
 **invitedByMe** | **Bool** | Specifies whether the user is invited by the current user or not. | [optional] 
 **inviterId** | **UUID** | The inviter ID. | [optional] 
 **area** | [**Area**](.md) | The area of the account entries. | [optional] 
 **employeeTypes** | [**[EmployeeType]**](EmployeeType.md) | The list of the user types. | [optional] 
 **count** | **Int** | The number of items to retrieve in a request. | [optional] 
 **startIndex** | **Int** | The starting index for the query results. | [optional] 
 **filterSeparator** | **String** | Specifies the separator used in filter expressions. | [optional] 
 **filterValue** | **String** | The text filter applied to the accounts search query. | [optional] 

### Return type

[**ObjectArrayWrapper**](ObjectArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The user ID.
let employeeStatus = EmployeeStatus() // EmployeeStatus | The user status. (optional)
let activationStatus = EmployeeActivationStatus() // EmployeeActivationStatus | The user activation status. (optional)
let excludeShared = false // Bool | Specifies whether to exclude the account sharing settings from the response. (optional)
let includeShared = false // Bool | Specifies whether to include the account sharing settings in the response. (optional)
let invitedByMe = false // Bool | Specifies whether the user is invited by the current user or not. (optional)
let inviterId = 987 // UUID | The inviter ID. (optional)
let area = Area() // Area | The area of the account entries. (optional)
let employeeTypes = [[EmployeeType()]] // [EmployeeType] | The list of the user types. (optional)
let count = 987 // Int | The number of items to retrieve in a request. (optional)
let startIndex = 987 // Int | The starting index for the query results. (optional)
let filterSeparator = "filterSeparator_example" // String | Specifies the separator used in filter expressions. (optional)
let filterValue = "filterValue_example" // String | The text filter applied to the accounts search query. (optional)

// Get account entries
PeopleSearchAPIApi.getAccountsEntriesWithRoomsShared(id: id, employeeStatus: employeeStatus, activationStatus: activationStatus, excludeShared: excludeShared, includeShared: includeShared, invitedByMe: invitedByMe, inviterId: inviterId, area: area, employeeTypes: employeeTypes, count: count, startIndex: startIndex, filterSeparator: filterSeparator, filterValue: filterValue) { (response, error) in
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

# **getSearch**
```swift
    open class func getSearch(query: String, filterBy: String? = nil, filterValue: String? = nil, completion: @escaping (_ data: EmployeeFullArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of users matching the search query.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-search/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String** | The search query. | 
 **filterBy** | **String** | Specifies a filter criteria for the user search query. | [optional] 
 **filterValue** | **String** | The value used for filtering users, allowing additional constraints for the query. | [optional] 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let query = "query_example" // String | The search query.
let filterBy = "filterBy_example" // String | Specifies a filter criteria for the user search query. (optional)
let filterValue = "filterValue_example" // String | The value used for filtering users, allowing additional constraints for the query. (optional)

// Search users
PeopleSearchAPIApi.getSearch(query: query, filterBy: filterBy, filterValue: filterValue) { (response, error) in
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

# **getSimpleByFilter**
```swift
    open class func getSimpleByFilter(employeeStatus: EmployeeStatus? = nil, groupId: UUID? = nil, activationStatus: EmployeeActivationStatus? = nil, employeeType: EmployeeType? = nil, employeeTypes: [EmployeeTypes_getSimpleByFilter]? = nil, isAdministrator: Bool? = nil, payments: Payments? = nil, accountLoginType: AccountLoginType? = nil, quotaFilter: QuotaFilter? = nil, withoutGroup: Bool? = nil, excludeGroup: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterSeparator: String? = nil, filterValue: String? = nil, completion: @escaping (_ data: EmployeeArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of users matching the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-simple-by-filter/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeStatus** | [**EmployeeStatus**](.md) | The user status. | [optional] 
 **groupId** | **UUID** | The group ID. | [optional] 
 **activationStatus** | [**EmployeeActivationStatus**](.md) | The user activation status. | [optional] 
 **employeeType** | [**EmployeeType**](.md) | The user type. | [optional] 
 **employeeTypes** | [**[Int]**](Int.md) | The list of user types. | [optional] 
 **isAdministrator** | **Bool** | Specifies if the user is an administrator or not. | [optional] 
 **payments** | [**Payments**](.md) | The user payment status. | [optional] 
 **accountLoginType** | [**AccountLoginType**](.md) | The account login type. | [optional] 
 **quotaFilter** | [**QuotaFilter**](.md) | The quota filter (All - 0, Default - 1, Custom - 2). | [optional] 
 **withoutGroup** | **Bool** | Specifies whether the user should be a member of a group or not. | [optional] 
 **excludeGroup** | **Bool** | Specifies whether the user should be a member of the group with the specified ID. | [optional] 
 **invitedByMe** | **Bool** | Specifies whether the user is invited by the current user or not. | [optional] 
 **inviterId** | **UUID** | The inviter ID. | [optional] 
 **area** | [**Area**](.md) | The filter area. | [optional] 
 **count** | **Int** | The maximum number of items to be retrieved in the response. | [optional] 
 **startIndex** | **Int** | The zero-based index of the first item to be retrieved in a filtered result set. | [optional] 
 **sortBy** | **String** | Specifies the property or field name by which the results should be sorted. | [optional] 
 **sortOrder** | [**SortOrder**](.md) | The order in which the results are sorted. | [optional] 
 **filterSeparator** | **String** | Represents the separator used to split filter criteria in query parameters. | [optional] 
 **filterValue** | **String** | The search text used to filter results based on user input. | [optional] 

### Return type

[**EmployeeArrayWrapper**](EmployeeArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let employeeStatus = EmployeeStatus() // EmployeeStatus | The user status. (optional)
let groupId = 987 // UUID | The group ID. (optional)
let activationStatus = EmployeeActivationStatus() // EmployeeActivationStatus | The user activation status. (optional)
let employeeType = EmployeeType() // EmployeeType | The user type. (optional)
let employeeTypes = [[123]] // [Int] | The list of user types. (optional)
let isAdministrator = false // Bool | Specifies if the user is an administrator or not. (optional)
let payments = Payments() // Payments | The user payment status. (optional)
let accountLoginType = AccountLoginType() // AccountLoginType | The account login type. (optional)
let quotaFilter = QuotaFilter() // QuotaFilter | The quota filter (All - 0, Default - 1, Custom - 2). (optional)
let withoutGroup = false // Bool | Specifies whether the user should be a member of a group or not. (optional)
let excludeGroup = false // Bool | Specifies whether the user should be a member of the group with the specified ID. (optional)
let invitedByMe = false // Bool | Specifies whether the user is invited by the current user or not. (optional)
let inviterId = 987 // UUID | The inviter ID. (optional)
let area = Area() // Area | The filter area. (optional)
let count = 987 // Int | The maximum number of items to be retrieved in the response. (optional)
let startIndex = 987 // Int | The zero-based index of the first item to be retrieved in a filtered result set. (optional)
let sortBy = "sortBy_example" // String | Specifies the property or field name by which the results should be sorted. (optional)
let sortOrder = SortOrder() // SortOrder | The order in which the results are sorted. (optional)
let filterSeparator = "filterSeparator_example" // String | Represents the separator used to split filter criteria in query parameters. (optional)
let filterValue = "filterValue_example" // String | The search text used to filter results based on user input. (optional)

// Search users by extended filter
PeopleSearchAPIApi.getSimpleByFilter(employeeStatus: employeeStatus, groupId: groupId, activationStatus: activationStatus, employeeType: employeeType, employeeTypes: employeeTypes, isAdministrator: isAdministrator, payments: payments, accountLoginType: accountLoginType, quotaFilter: quotaFilter, withoutGroup: withoutGroup, excludeGroup: excludeGroup, invitedByMe: invitedByMe, inviterId: inviterId, area: area, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterSeparator: filterSeparator, filterValue: filterValue) { (response, error) in
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

# **getUsersWithFilesShared**
```swift
    open class func getUsersWithFilesShared(id: Int, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, completion: @escaping (_ data: EmployeeFullArrayWrapper?, _ error: Error?) -> Void)
```

Returns the users with the sharing settings in a file with the ID specified in request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-files-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The user ID. | 
 **employeeStatus** | [**EmployeeStatus**](.md) | The user status. | [optional] 
 **activationStatus** | [**EmployeeActivationStatus**](.md) | The user activation status. | [optional] 
 **excludeShared** | **Bool** | Specifies whether to exclude the user sharing settings or not. | [optional] 
 **includeShared** | **Bool** | Specifies whether to include the user sharing settings or not. | [optional] 
 **invitedByMe** | **Bool** | Specifies whether the user was invited by the current user or not. | [optional] 
 **inviterId** | **UUID** | The inviter ID. | [optional] 
 **area** | [**Area**](.md) | The user area. | [optional] 
 **employeeTypes** | [**[EmployeeType]**](EmployeeType.md) | The list of user types. | [optional] 
 **count** | **Int** | The maximum number of users to be retrieved in the request. | [optional] 
 **startIndex** | **Int** | The zero-based index of the first record to retrieve in a paged query. | [optional] 
 **filterSeparator** | **String** | The character or string used to separate multiple filter values in a filtering query. | [optional] 
 **filterValue** | **String** | The filter text value used for searching or filtering user results. | [optional] 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The user ID.
let employeeStatus = EmployeeStatus() // EmployeeStatus | The user status. (optional)
let activationStatus = EmployeeActivationStatus() // EmployeeActivationStatus | The user activation status. (optional)
let excludeShared = false // Bool | Specifies whether to exclude the user sharing settings or not. (optional)
let includeShared = false // Bool | Specifies whether to include the user sharing settings or not. (optional)
let invitedByMe = false // Bool | Specifies whether the user was invited by the current user or not. (optional)
let inviterId = 987 // UUID | The inviter ID. (optional)
let area = Area() // Area | The user area. (optional)
let employeeTypes = [[EmployeeType()]] // [EmployeeType] | The list of user types. (optional)
let count = 987 // Int | The maximum number of users to be retrieved in the request. (optional)
let startIndex = 987 // Int | The zero-based index of the first record to retrieve in a paged query. (optional)
let filterSeparator = "filterSeparator_example" // String | The character or string used to separate multiple filter values in a filtering query. (optional)
let filterValue = "filterValue_example" // String | The filter text value used for searching or filtering user results. (optional)

// Get users with file sharing settings
PeopleSearchAPIApi.getUsersWithFilesShared(id: id, employeeStatus: employeeStatus, activationStatus: activationStatus, excludeShared: excludeShared, includeShared: includeShared, invitedByMe: invitedByMe, inviterId: inviterId, area: area, employeeTypes: employeeTypes, count: count, startIndex: startIndex, filterSeparator: filterSeparator, filterValue: filterValue) { (response, error) in
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

# **getUsersWithFoldersShared**
```swift
    open class func getUsersWithFoldersShared(id: Int, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, completion: @escaping (_ data: EmployeeFullArrayWrapper?, _ error: Error?) -> Void)
```

Returns the users with the sharing settings in a folder with the ID specified in request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-folders-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The user ID. | 
 **employeeStatus** | [**EmployeeStatus**](.md) | The user status. | [optional] 
 **activationStatus** | [**EmployeeActivationStatus**](.md) | The user activation status. | [optional] 
 **excludeShared** | **Bool** | Specifies whether to exclude the user sharing settings or not. | [optional] 
 **includeShared** | **Bool** | Specifies whether to include the user sharing settings or not. | [optional] 
 **invitedByMe** | **Bool** | Specifies whether the user was invited by the current user or not. | [optional] 
 **inviterId** | **UUID** | The inviter ID. | [optional] 
 **area** | [**Area**](.md) | The user area. | [optional] 
 **employeeTypes** | [**[EmployeeType]**](EmployeeType.md) | The list of user types. | [optional] 
 **count** | **Int** | The maximum number of users to be retrieved in the request. | [optional] 
 **startIndex** | **Int** | The zero-based index of the first record to retrieve in a paged query. | [optional] 
 **filterSeparator** | **String** | The character or string used to separate multiple filter values in a filtering query. | [optional] 
 **filterValue** | **String** | The filter text value used for searching or filtering user results. | [optional] 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The user ID.
let employeeStatus = EmployeeStatus() // EmployeeStatus | The user status. (optional)
let activationStatus = EmployeeActivationStatus() // EmployeeActivationStatus | The user activation status. (optional)
let excludeShared = false // Bool | Specifies whether to exclude the user sharing settings or not. (optional)
let includeShared = false // Bool | Specifies whether to include the user sharing settings or not. (optional)
let invitedByMe = false // Bool | Specifies whether the user was invited by the current user or not. (optional)
let inviterId = 987 // UUID | The inviter ID. (optional)
let area = Area() // Area | The user area. (optional)
let employeeTypes = [[EmployeeType()]] // [EmployeeType] | The list of user types. (optional)
let count = 987 // Int | The maximum number of users to be retrieved in the request. (optional)
let startIndex = 987 // Int | The zero-based index of the first record to retrieve in a paged query. (optional)
let filterSeparator = "filterSeparator_example" // String | The character or string used to separate multiple filter values in a filtering query. (optional)
let filterValue = "filterValue_example" // String | The filter text value used for searching or filtering user results. (optional)

// Get users with folder sharing settings
PeopleSearchAPIApi.getUsersWithFoldersShared(id: id, employeeStatus: employeeStatus, activationStatus: activationStatus, excludeShared: excludeShared, includeShared: includeShared, invitedByMe: invitedByMe, inviterId: inviterId, area: area, employeeTypes: employeeTypes, count: count, startIndex: startIndex, filterSeparator: filterSeparator, filterValue: filterValue) { (response, error) in
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

# **getUsersWithRoomShared**
```swift
    open class func getUsersWithRoomShared(id: Int, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, completion: @escaping (_ data: EmployeeFullArrayWrapper?, _ error: Error?) -> Void)
```

Returns the users with the sharing settings in a room with the ID specified in request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-room-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The user ID. | 
 **employeeStatus** | [**EmployeeStatus**](.md) | The user status. | [optional] 
 **activationStatus** | [**EmployeeActivationStatus**](.md) | The user activation status. | [optional] 
 **excludeShared** | **Bool** | Specifies whether to exclude the user sharing settings or not. | [optional] 
 **includeShared** | **Bool** | Specifies whether to include the user sharing settings or not. | [optional] 
 **invitedByMe** | **Bool** | Specifies whether the user was invited by the current user or not. | [optional] 
 **inviterId** | **UUID** | The inviter ID. | [optional] 
 **area** | [**Area**](.md) | The user area. | [optional] 
 **employeeTypes** | [**[EmployeeType]**](EmployeeType.md) | The list of user types. | [optional] 
 **count** | **Int** | The maximum number of users to be retrieved in the request. | [optional] 
 **startIndex** | **Int** | The zero-based index of the first record to retrieve in a paged query. | [optional] 
 **filterSeparator** | **String** | The character or string used to separate multiple filter values in a filtering query. | [optional] 
 **filterValue** | **String** | The filter text value used for searching or filtering user results. | [optional] 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The user ID.
let employeeStatus = EmployeeStatus() // EmployeeStatus | The user status. (optional)
let activationStatus = EmployeeActivationStatus() // EmployeeActivationStatus | The user activation status. (optional)
let excludeShared = false // Bool | Specifies whether to exclude the user sharing settings or not. (optional)
let includeShared = false // Bool | Specifies whether to include the user sharing settings or not. (optional)
let invitedByMe = false // Bool | Specifies whether the user was invited by the current user or not. (optional)
let inviterId = 987 // UUID | The inviter ID. (optional)
let area = Area() // Area | The user area. (optional)
let employeeTypes = [[EmployeeType()]] // [EmployeeType] | The list of user types. (optional)
let count = 987 // Int | The maximum number of users to be retrieved in the request. (optional)
let startIndex = 987 // Int | The zero-based index of the first record to retrieve in a paged query. (optional)
let filterSeparator = "filterSeparator_example" // String | The character or string used to separate multiple filter values in a filtering query. (optional)
let filterValue = "filterValue_example" // String | The filter text value used for searching or filtering user results. (optional)

// Get users with room sharing settings
PeopleSearchAPIApi.getUsersWithRoomShared(id: id, employeeStatus: employeeStatus, activationStatus: activationStatus, excludeShared: excludeShared, includeShared: includeShared, invitedByMe: invitedByMe, inviterId: inviterId, area: area, employeeTypes: employeeTypes, count: count, startIndex: startIndex, filterSeparator: filterSeparator, filterValue: filterValue) { (response, error) in
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

# **searchUsersByExtendedFilter**
```swift
    open class func searchUsersByExtendedFilter(employeeStatus: EmployeeStatus? = nil, groupId: UUID? = nil, activationStatus: EmployeeActivationStatus? = nil, employeeType: EmployeeType? = nil, employeeTypes: [EmployeeTypes_searchUsersByExtendedFilter]? = nil, isAdministrator: Bool? = nil, payments: Payments? = nil, accountLoginType: AccountLoginType? = nil, quotaFilter: QuotaFilter? = nil, withoutGroup: Bool? = nil, excludeGroup: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: String? = nil, sortOrder: SortOrder? = nil, filterSeparator: String? = nil, filterValue: String? = nil, completion: @escaping (_ data: EmployeeFullArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of users with full information about them matching the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/search-users-by-extended-filter/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeStatus** | [**EmployeeStatus**](.md) | The user status. | [optional] 
 **groupId** | **UUID** | The group ID. | [optional] 
 **activationStatus** | [**EmployeeActivationStatus**](.md) | The user activation status. | [optional] 
 **employeeType** | [**EmployeeType**](.md) | The user type. | [optional] 
 **employeeTypes** | [**[Int]**](Int.md) | The list of user types. | [optional] 
 **isAdministrator** | **Bool** | Specifies if the user is an administrator or not. | [optional] 
 **payments** | [**Payments**](.md) | The user payment status. | [optional] 
 **accountLoginType** | [**AccountLoginType**](.md) | The account login type. | [optional] 
 **quotaFilter** | [**QuotaFilter**](.md) | The quota filter (All - 0, Default - 1, Custom - 2). | [optional] 
 **withoutGroup** | **Bool** | Specifies whether the user should be a member of a group or not. | [optional] 
 **excludeGroup** | **Bool** | Specifies whether the user should be a member of the group with the specified ID. | [optional] 
 **invitedByMe** | **Bool** | Specifies whether the user is invited by the current user or not. | [optional] 
 **inviterId** | **UUID** | The inviter ID. | [optional] 
 **area** | [**Area**](.md) | The filter area. | [optional] 
 **count** | **Int** | The maximum number of items to be retrieved in the response. | [optional] 
 **startIndex** | **Int** | The zero-based index of the first item to be retrieved in a filtered result set. | [optional] 
 **sortBy** | **String** | Specifies the property or field name by which the results should be sorted. | [optional] 
 **sortOrder** | [**SortOrder**](.md) | The order in which the results are sorted. | [optional] 
 **filterSeparator** | **String** | Represents the separator used to split filter criteria in query parameters. | [optional] 
 **filterValue** | **String** | The search text used to filter results based on user input. | [optional] 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let employeeStatus = EmployeeStatus() // EmployeeStatus | The user status. (optional)
let groupId = 987 // UUID | The group ID. (optional)
let activationStatus = EmployeeActivationStatus() // EmployeeActivationStatus | The user activation status. (optional)
let employeeType = EmployeeType() // EmployeeType | The user type. (optional)
let employeeTypes = [[123]] // [Int] | The list of user types. (optional)
let isAdministrator = false // Bool | Specifies if the user is an administrator or not. (optional)
let payments = Payments() // Payments | The user payment status. (optional)
let accountLoginType = AccountLoginType() // AccountLoginType | The account login type. (optional)
let quotaFilter = QuotaFilter() // QuotaFilter | The quota filter (All - 0, Default - 1, Custom - 2). (optional)
let withoutGroup = false // Bool | Specifies whether the user should be a member of a group or not. (optional)
let excludeGroup = false // Bool | Specifies whether the user should be a member of the group with the specified ID. (optional)
let invitedByMe = false // Bool | Specifies whether the user is invited by the current user or not. (optional)
let inviterId = 987 // UUID | The inviter ID. (optional)
let area = Area() // Area | The filter area. (optional)
let count = 987 // Int | The maximum number of items to be retrieved in the response. (optional)
let startIndex = 987 // Int | The zero-based index of the first item to be retrieved in a filtered result set. (optional)
let sortBy = "sortBy_example" // String | Specifies the property or field name by which the results should be sorted. (optional)
let sortOrder = SortOrder() // SortOrder | The order in which the results are sorted. (optional)
let filterSeparator = "filterSeparator_example" // String | Represents the separator used to split filter criteria in query parameters. (optional)
let filterValue = "filterValue_example" // String | The search text used to filter results based on user input. (optional)

// Search users with detailed information by extended filter
PeopleSearchAPIApi.searchUsersByExtendedFilter(employeeStatus: employeeStatus, groupId: groupId, activationStatus: activationStatus, employeeType: employeeType, employeeTypes: employeeTypes, isAdministrator: isAdministrator, payments: payments, accountLoginType: accountLoginType, quotaFilter: quotaFilter, withoutGroup: withoutGroup, excludeGroup: excludeGroup, invitedByMe: invitedByMe, inviterId: inviterId, area: area, count: count, startIndex: startIndex, sortBy: sortBy, sortOrder: sortOrder, filterSeparator: filterSeparator, filterValue: filterValue) { (response, error) in
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

# **searchUsersByQuery**
```swift
    open class func searchUsersByQuery(query: String? = nil, completion: @escaping (_ data: EmployeeArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of users matching the search query. This method uses the query parameters.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/search-users-by-query/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String** | The search query. | [optional] 

### Return type

[**EmployeeArrayWrapper**](EmployeeArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let query = "query_example" // String | The search query. (optional)

// Search users (using query parameters)
PeopleSearchAPIApi.searchUsersByQuery(query: query) { (response, error) in
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

# **searchUsersByStatus**
```swift
    open class func searchUsersByStatus(status: EmployeeStatus, query: String? = nil, filterBy: String? = nil, filterValue: String? = nil, completion: @escaping (_ data: EmployeeFullArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of users matching the status filter and search query.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/search-users-by-status/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**EmployeeStatus**](.md) | The user status. | 
 **query** | **String** | The advanced search query. | [optional] 
 **filterBy** | **String** | Specifies the criteria used to filter search results in advanced queries. | [optional] 
 **filterValue** | **String** | The value used to filter the search query. | [optional] 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let status = EmployeeStatus() // EmployeeStatus | The user status.
let query = "query_example" // String | The advanced search query. (optional)
let filterBy = "filterBy_example" // String | Specifies the criteria used to filter search results in advanced queries. (optional)
let filterValue = "filterValue_example" // String | The value used to filter the search query. (optional)

// Search users by status filter
PeopleSearchAPIApi.searchUsersByStatus(status: status, query: query, filterBy: filterBy, filterValue: filterValue) { (response, error) in
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

