# PeopleSearchAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAccountsEntriesWithFilesShared**](PeopleSearchAPI.md#getaccountsentrieswithfilesshared) | **GET** /api/2.0/accounts/file/{id}/search | Search accounts for a file
[**getAccountsEntriesWithFilesShared**](PeopleSearchAPI.md#getaccountsentrieswithfilesshared-third-party-storage) | **GET** /api/2.0/accounts/file/{id}/search | Search accounts for a file (third-party storage)
[**getAccountsEntriesWithFoldersShared**](PeopleSearchAPI.md#getaccountsentrieswithfoldersshared) | **GET** /api/2.0/accounts/folder/{id}/search | Search accounts for a folder
[**getAccountsEntriesWithFoldersShared**](PeopleSearchAPI.md#getaccountsentrieswithfoldersshared-third-party-storage) | **GET** /api/2.0/accounts/folder/{id}/search | Search accounts for a folder (third-party storage)
[**getAccountsEntriesWithRoomsShared**](PeopleSearchAPI.md#getaccountsentrieswithroomsshared) | **GET** /api/2.0/accounts/room/{id}/search | Search accounts for a room
[**getAccountsEntriesWithRoomsShared**](PeopleSearchAPI.md#getaccountsentrieswithroomsshared-third-party-storage) | **GET** /api/2.0/accounts/room/{id}/search | Search accounts for a room (third-party storage)
[**getSearch**](PeopleSearchAPI.md#getsearch) | **GET** /api/2.0/people/@search/{query} | Search users
[**getSimpleByFilter**](PeopleSearchAPI.md#getsimplebyfilter) | **GET** /api/2.0/people/simple/filter | Filter users in brief
[**getUsersWithFilesShared**](PeopleSearchAPI.md#getuserswithfilesshared) | **GET** /api/2.0/people/file/{id} | Search users for a file
[**getUsersWithFilesShared**](PeopleSearchAPI.md#getuserswithfilesshared-third-party-storage) | **GET** /api/2.0/people/file/{id} | Search users for a file (third-party storage)
[**getUsersWithFoldersShared**](PeopleSearchAPI.md#getuserswithfoldersshared) | **GET** /api/2.0/people/folder/{id} | Search users for a folder
[**getUsersWithFoldersShared**](PeopleSearchAPI.md#getuserswithfoldersshared-third-party-storage) | **GET** /api/2.0/people/folder/{id} | Search users for a folder (third-party storage)
[**getUsersWithRoomShared**](PeopleSearchAPI.md#getuserswithroomshared) | **GET** /api/2.0/people/room/{id} | Search users for a room
[**getUsersWithRoomShared**](PeopleSearchAPI.md#getuserswithroomshared-third-party-storage) | **GET** /api/2.0/people/room/{id} | Search users for a room (third-party storage)
[**searchUsersByExtendedFilter**](PeopleSearchAPI.md#searchusersbyextendedfilter) | **GET** /api/2.0/people/filter | Filter users in detail
[**searchUsersByQuery**](PeopleSearchAPI.md#searchusersbyquery) | **GET** /api/2.0/people/search | Search users by query
[**searchUsersByStatus**](PeopleSearchAPI.md#searchusersbystatus) | **GET** /api/2.0/people/status/{status}/search | Search users by status filter


# **getAccountsEntriesWithFilesShared**
```swift
    open class func getAccountsEntriesWithFilesShared(id: Int, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, completion: @escaping (_ data: IAccountEntryArrayWrapper?, _ error: Error?) -> Void)
```

Searches the portal users and groups that can be given access to the file with the ID given in the route, and  reports for each of them whether it already has access to that file.  The caller has to be allowed to manage the access of that file, and the ID has to belong to an existing file,  so the operation answers 403 for a file the caller cannot share and 404 for an ID that matches nothing.  The search is read-only and needs `filterValue`: while it is empty the operation returns an empty list and a  total of 0 instead of every account, so it cannot be used to enumerate the portal.  `filterValue` is matched case-insensitively against the first name, the last name and the email; without  `filterSeparator` it is split on spaces and every term has to match, and with a separator it is split on that  separator and any term may match.  Matching groups are streamed first and users after them, both paged together by `count` and `startIndex`,  while the number of matches is reported in the total count of the response.  Pass `excludeShared` to keep only the accounts that have no access yet, `includeShared` to keep only those  that already have it, and neither to get both kinds with the `shared` field telling them apart.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-files-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage. | 
 **employeeStatus** | [**EmployeeStatus**](.md) | Keeps only the users in the given account state: `Active` for a working account, `Terminated` for a disabled  one and `Pending` for one that has not accepted its invitation yet. Omit it to search every state. | [optional] 
 **activationStatus** | [**EmployeeActivationStatus**](.md) | Keeps only the users whose activation is in the given state: `NotActivated` for an account that has never  been activated, `Activated` for one that completed the activation, `Pending` for one whose invitation is  still open, and `AutoGenerated` for an account created by the portal itself. Omit it to search every state. | [optional] 
 **excludeShared** | **Bool** | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when adding new  members. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. | [optional] 
 **includeShared** | **Bool** | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when  `excludeShared` is also set. | [optional] 
 **invitedByMe** | **Bool** | Keeps only the users invited by the caller when true, and only the users invited by somebody else when false.  Omit it to search regardless of who sent the invitation. | [optional] 
 **inviterId** | **UUID** | Keeps only the users invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] 
 **area** | [**Area**](.md) | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. | [optional] 
 **employeeTypes** | [**[EmployeeType]**](EmployeeType.md) | Keeps only the users of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. | [optional] 
 **count** | **Int** | The size of the page, counting groups and users together. It defaults to 100, which is also the largest value  the operation accepts. | [optional] 
 **startIndex** | **Int** | The number of matches to skip before the page starts, counted over the groups and users together. It defaults  to 0, and the total number of matches is reported in the total count of the response. | [optional] 
 **filterSeparator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. | [optional] 
 **filterValue** | **String** | The text to search for, matched case-insensitively against the first name, the last name and the email. It is  required in practice: while it is empty the search returns nothing at all rather than every account. | [optional] 

### Return type

[**IAccountEntryArrayWrapper**](IAccountEntryArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
let employeeStatus = EmployeeStatus() // EmployeeStatus | Keeps only the users in the given account state: `Active` for a working account, `Terminated` for a disabled  one and `Pending` for one that has not accepted its invitation yet. Omit it to search every state. (optional)
let activationStatus = EmployeeActivationStatus() // EmployeeActivationStatus | Keeps only the users whose activation is in the given state: `NotActivated` for an account that has never  been activated, `Activated` for one that completed the activation, `Pending` for one whose invitation is  still open, and `AutoGenerated` for an account created by the portal itself. Omit it to search every state. (optional)
let excludeShared = false // Bool | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when adding new  members. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. (optional)
let includeShared = false // Bool | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when  `excludeShared` is also set. (optional)
let invitedByMe = false // Bool | Keeps only the users invited by the caller when true, and only the users invited by somebody else when false.  Omit it to search regardless of who sent the invitation. (optional)
let inviterId = 987 // UUID | Keeps only the users invited by the account with this ID. Omit it to search regardless of who sent the  invitation. (optional)
let area = Area() // Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. (optional)
let employeeTypes = [EmployeeType()] // [EmployeeType] | Keeps only the users of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. (optional)
let count = 987 // Int | The size of the page, counting groups and users together. It defaults to 100, which is also the largest value  the operation accepts. (optional)
let startIndex = 987 // Int | The number of matches to skip before the page starts, counted over the groups and users together. It defaults  to 0, and the total number of matches is reported in the total count of the response. (optional)
let filterSeparator = "filterSeparator_example" // String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. (optional)
let filterValue = "filterValue_example" // String | The text to search for, matched case-insensitively against the first name, the last name and the email. It is  required in practice: while it is empty the search returns nothing at all rather than every account. (optional)

// Search accounts for a file
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

# **getAccountsEntriesWithFilesShared** (third-party storage)
```swift
    open class func getAccountsEntriesWithFilesShared(id: String, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, completion: @escaping (_ data: IAccountEntryArrayWrapper?, _ error: Error?) -> Void)
```

Searches the portal users and groups that can be given access to the file with the ID given in the route, and  reports for each of them whether it already has access to that file.  The caller has to be allowed to manage the access of that file, and the ID has to belong to an existing file,  so the operation answers 403 for a file the caller cannot share and 404 for an ID that matches nothing.  The search is read-only and needs `filterValue`: while it is empty the operation returns an empty list and a  total of 0 instead of every account, so it cannot be used to enumerate the portal.  `filterValue` is matched case-insensitively against the first name, the last name and the email; without  `filterSeparator` it is split on spaces and every term has to match, and with a separator it is split on that  separator and any term may match.  Matching groups are streamed first and users after them, both paged together by `count` and `startIndex`,  while the number of matches is reported in the total count of the response.  Pass `excludeShared` to keep only the accounts that have no access yet, `includeShared` to keep only those  that already have it, and neither to get both kinds with the `shared` field telling them apart.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-files-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage. | 
 **employeeStatus** | [**EmployeeStatus**](.md) | Keeps only the users in the given account state: `Active` for a working account, `Terminated` for a disabled  one and `Pending` for one that has not accepted its invitation yet. Omit it to search every state. | [optional] 
 **activationStatus** | [**EmployeeActivationStatus**](.md) | Keeps only the users whose activation is in the given state: `NotActivated` for an account that has never  been activated, `Activated` for one that completed the activation, `Pending` for one whose invitation is  still open, and `AutoGenerated` for an account created by the portal itself. Omit it to search every state. | [optional] 
 **excludeShared** | **Bool** | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when adding new  members. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. | [optional] 
 **includeShared** | **Bool** | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when  `excludeShared` is also set. | [optional] 
 **invitedByMe** | **Bool** | Keeps only the users invited by the caller when true, and only the users invited by somebody else when false.  Omit it to search regardless of who sent the invitation. | [optional] 
 **inviterId** | **UUID** | Keeps only the users invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] 
 **area** | [**Area**](.md) | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. | [optional] 
 **employeeTypes** | [**[EmployeeType]**](EmployeeType.md) | Keeps only the users of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. | [optional] 
 **count** | **Int** | The size of the page, counting groups and users together. It defaults to 100, which is also the largest value  the operation accepts. | [optional] 
 **startIndex** | **Int** | The number of matches to skip before the page starts, counted over the groups and users together. It defaults  to 0, and the total number of matches is reported in the total count of the response. | [optional] 
 **filterSeparator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. | [optional] 
 **filterValue** | **String** | The text to search for, matched case-insensitively against the first name, the last name and the email. It is  required in practice: while it is empty the search returns nothing at all rather than every account. | [optional] 

### Return type

[**IAccountEntryArrayWrapper**](IAccountEntryArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
let employeeStatus = EmployeeStatus() // EmployeeStatus | Keeps only the users in the given account state: `Active` for a working account, `Terminated` for a disabled  one and `Pending` for one that has not accepted its invitation yet. Omit it to search every state. (optional)
let activationStatus = EmployeeActivationStatus() // EmployeeActivationStatus | Keeps only the users whose activation is in the given state: `NotActivated` for an account that has never  been activated, `Activated` for one that completed the activation, `Pending` for one whose invitation is  still open, and `AutoGenerated` for an account created by the portal itself. Omit it to search every state. (optional)
let excludeShared = false // Bool | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when adding new  members. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. (optional)
let includeShared = false // Bool | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when  `excludeShared` is also set. (optional)
let invitedByMe = false // Bool | Keeps only the users invited by the caller when true, and only the users invited by somebody else when false.  Omit it to search regardless of who sent the invitation. (optional)
let inviterId = 987 // UUID | Keeps only the users invited by the account with this ID. Omit it to search regardless of who sent the  invitation. (optional)
let area = Area() // Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. (optional)
let employeeTypes = [EmployeeType()] // [EmployeeType] | Keeps only the users of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. (optional)
let count = 987 // Int | The size of the page, counting groups and users together. It defaults to 100, which is also the largest value  the operation accepts. (optional)
let startIndex = 987 // Int | The number of matches to skip before the page starts, counted over the groups and users together. It defaults  to 0, and the total number of matches is reported in the total count of the response. (optional)
let filterSeparator = "filterSeparator_example" // String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. (optional)
let filterValue = "filterValue_example" // String | The text to search for, matched case-insensitively against the first name, the last name and the email. It is  required in practice: while it is empty the search returns nothing at all rather than every account. (optional)

// Search accounts for a file (third-party storage)
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
    open class func getAccountsEntriesWithFoldersShared(id: Int, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, completion: @escaping (_ data: IAccountEntryArrayWrapper?, _ error: Error?) -> Void)
```

Searches the portal users and groups that can be given access to the folder with the ID given in the route,  and reports for each of them whether it already has access to that folder.  The caller has to be allowed to manage the access of that folder, and the ID has to belong to an existing  folder, so the operation answers 403 for a folder the caller cannot share and 404 for an ID that matches  nothing.  The search is read-only and needs `filterValue`: while it is empty the operation returns an empty list and a  total of 0 instead of every account, so it cannot be used to enumerate the portal.  `filterValue` is matched case-insensitively against the first name, the last name and the email; without  `filterSeparator` it is split on spaces and every term has to match, and with a separator it is split on that  separator and any term may match.  Matching groups are streamed first and users after them, both paged together by `count` and `startIndex`,  while the number of matches is reported in the total count of the response.  Pass `excludeShared` to keep only the accounts that have no access yet, `includeShared` to keep only those  that already have it, and neither to get both kinds with the `shared` field telling them apart.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-folders-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage. | 
 **employeeStatus** | [**EmployeeStatus**](.md) | Keeps only the users in the given account state: `Active` for a working account, `Terminated` for a disabled  one and `Pending` for one that has not accepted its invitation yet. Omit it to search every state. | [optional] 
 **activationStatus** | [**EmployeeActivationStatus**](.md) | Keeps only the users whose activation is in the given state: `NotActivated` for an account that has never  been activated, `Activated` for one that completed the activation, `Pending` for one whose invitation is  still open, and `AutoGenerated` for an account created by the portal itself. Omit it to search every state. | [optional] 
 **excludeShared** | **Bool** | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when adding new  members. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. | [optional] 
 **includeShared** | **Bool** | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when  `excludeShared` is also set. | [optional] 
 **invitedByMe** | **Bool** | Keeps only the users invited by the caller when true, and only the users invited by somebody else when false.  Omit it to search regardless of who sent the invitation. | [optional] 
 **inviterId** | **UUID** | Keeps only the users invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] 
 **area** | [**Area**](.md) | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. | [optional] 
 **employeeTypes** | [**[EmployeeType]**](EmployeeType.md) | Keeps only the users of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. | [optional] 
 **count** | **Int** | The size of the page, counting groups and users together. It defaults to 100, which is also the largest value  the operation accepts. | [optional] 
 **startIndex** | **Int** | The number of matches to skip before the page starts, counted over the groups and users together. It defaults  to 0, and the total number of matches is reported in the total count of the response. | [optional] 
 **filterSeparator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. | [optional] 
 **filterValue** | **String** | The text to search for, matched case-insensitively against the first name, the last name and the email. It is  required in practice: while it is empty the search returns nothing at all rather than every account. | [optional] 

### Return type

[**IAccountEntryArrayWrapper**](IAccountEntryArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
let employeeStatus = EmployeeStatus() // EmployeeStatus | Keeps only the users in the given account state: `Active` for a working account, `Terminated` for a disabled  one and `Pending` for one that has not accepted its invitation yet. Omit it to search every state. (optional)
let activationStatus = EmployeeActivationStatus() // EmployeeActivationStatus | Keeps only the users whose activation is in the given state: `NotActivated` for an account that has never  been activated, `Activated` for one that completed the activation, `Pending` for one whose invitation is  still open, and `AutoGenerated` for an account created by the portal itself. Omit it to search every state. (optional)
let excludeShared = false // Bool | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when adding new  members. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. (optional)
let includeShared = false // Bool | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when  `excludeShared` is also set. (optional)
let invitedByMe = false // Bool | Keeps only the users invited by the caller when true, and only the users invited by somebody else when false.  Omit it to search regardless of who sent the invitation. (optional)
let inviterId = 987 // UUID | Keeps only the users invited by the account with this ID. Omit it to search regardless of who sent the  invitation. (optional)
let area = Area() // Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. (optional)
let employeeTypes = [EmployeeType()] // [EmployeeType] | Keeps only the users of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. (optional)
let count = 987 // Int | The size of the page, counting groups and users together. It defaults to 100, which is also the largest value  the operation accepts. (optional)
let startIndex = 987 // Int | The number of matches to skip before the page starts, counted over the groups and users together. It defaults  to 0, and the total number of matches is reported in the total count of the response. (optional)
let filterSeparator = "filterSeparator_example" // String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. (optional)
let filterValue = "filterValue_example" // String | The text to search for, matched case-insensitively against the first name, the last name and the email. It is  required in practice: while it is empty the search returns nothing at all rather than every account. (optional)

// Search accounts for a folder
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

# **getAccountsEntriesWithFoldersShared** (third-party storage)
```swift
    open class func getAccountsEntriesWithFoldersShared(id: String, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, completion: @escaping (_ data: IAccountEntryArrayWrapper?, _ error: Error?) -> Void)
```

Searches the portal users and groups that can be given access to the folder with the ID given in the route,  and reports for each of them whether it already has access to that folder.  The caller has to be allowed to manage the access of that folder, and the ID has to belong to an existing  folder, so the operation answers 403 for a folder the caller cannot share and 404 for an ID that matches  nothing.  The search is read-only and needs `filterValue`: while it is empty the operation returns an empty list and a  total of 0 instead of every account, so it cannot be used to enumerate the portal.  `filterValue` is matched case-insensitively against the first name, the last name and the email; without  `filterSeparator` it is split on spaces and every term has to match, and with a separator it is split on that  separator and any term may match.  Matching groups are streamed first and users after them, both paged together by `count` and `startIndex`,  while the number of matches is reported in the total count of the response.  Pass `excludeShared` to keep only the accounts that have no access yet, `includeShared` to keep only those  that already have it, and neither to get both kinds with the `shared` field telling them apart.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-folders-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage. | 
 **employeeStatus** | [**EmployeeStatus**](.md) | Keeps only the users in the given account state: `Active` for a working account, `Terminated` for a disabled  one and `Pending` for one that has not accepted its invitation yet. Omit it to search every state. | [optional] 
 **activationStatus** | [**EmployeeActivationStatus**](.md) | Keeps only the users whose activation is in the given state: `NotActivated` for an account that has never  been activated, `Activated` for one that completed the activation, `Pending` for one whose invitation is  still open, and `AutoGenerated` for an account created by the portal itself. Omit it to search every state. | [optional] 
 **excludeShared** | **Bool** | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when adding new  members. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. | [optional] 
 **includeShared** | **Bool** | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when  `excludeShared` is also set. | [optional] 
 **invitedByMe** | **Bool** | Keeps only the users invited by the caller when true, and only the users invited by somebody else when false.  Omit it to search regardless of who sent the invitation. | [optional] 
 **inviterId** | **UUID** | Keeps only the users invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] 
 **area** | [**Area**](.md) | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. | [optional] 
 **employeeTypes** | [**[EmployeeType]**](EmployeeType.md) | Keeps only the users of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. | [optional] 
 **count** | **Int** | The size of the page, counting groups and users together. It defaults to 100, which is also the largest value  the operation accepts. | [optional] 
 **startIndex** | **Int** | The number of matches to skip before the page starts, counted over the groups and users together. It defaults  to 0, and the total number of matches is reported in the total count of the response. | [optional] 
 **filterSeparator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. | [optional] 
 **filterValue** | **String** | The text to search for, matched case-insensitively against the first name, the last name and the email. It is  required in practice: while it is empty the search returns nothing at all rather than every account. | [optional] 

### Return type

[**IAccountEntryArrayWrapper**](IAccountEntryArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
let employeeStatus = EmployeeStatus() // EmployeeStatus | Keeps only the users in the given account state: `Active` for a working account, `Terminated` for a disabled  one and `Pending` for one that has not accepted its invitation yet. Omit it to search every state. (optional)
let activationStatus = EmployeeActivationStatus() // EmployeeActivationStatus | Keeps only the users whose activation is in the given state: `NotActivated` for an account that has never  been activated, `Activated` for one that completed the activation, `Pending` for one whose invitation is  still open, and `AutoGenerated` for an account created by the portal itself. Omit it to search every state. (optional)
let excludeShared = false // Bool | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when adding new  members. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. (optional)
let includeShared = false // Bool | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when  `excludeShared` is also set. (optional)
let invitedByMe = false // Bool | Keeps only the users invited by the caller when true, and only the users invited by somebody else when false.  Omit it to search regardless of who sent the invitation. (optional)
let inviterId = 987 // UUID | Keeps only the users invited by the account with this ID. Omit it to search regardless of who sent the  invitation. (optional)
let area = Area() // Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. (optional)
let employeeTypes = [EmployeeType()] // [EmployeeType] | Keeps only the users of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. (optional)
let count = 987 // Int | The size of the page, counting groups and users together. It defaults to 100, which is also the largest value  the operation accepts. (optional)
let startIndex = 987 // Int | The number of matches to skip before the page starts, counted over the groups and users together. It defaults  to 0, and the total number of matches is reported in the total count of the response. (optional)
let filterSeparator = "filterSeparator_example" // String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. (optional)
let filterValue = "filterValue_example" // String | The text to search for, matched case-insensitively against the first name, the last name and the email. It is  required in practice: while it is empty the search returns nothing at all rather than every account. (optional)

// Search accounts for a folder (third-party storage)
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
    open class func getAccountsEntriesWithRoomsShared(id: Int, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, completion: @escaping (_ data: IAccountEntryArrayWrapper?, _ error: Error?) -> Void)
```

Searches the portal users and groups that can be given access to the room with the ID given in the route, and  reports for each of them whether it already has access to that room.  The caller has to be allowed to manage the access of that room, and the ID has to belong to an existing room,  so the operation answers 403 for a room the caller cannot share and 404 for an ID that matches nothing.  The search is read-only and needs `filterValue`: while it is empty the operation returns an empty list and a  total of 0 instead of every account, so it cannot be used to enumerate the portal.  `filterValue` is matched case-insensitively against the first name, the last name and the email; without  `filterSeparator` it is split on spaces and every term has to match, and with a separator it is split on that  separator and any term may match.  Matching groups are streamed first and users after them, both paged together by `count` and `startIndex`,  while the number of matches is reported in the total count of the response.  Pass `excludeShared` to keep only the accounts that have no access yet, `includeShared` to keep only those  that already have it, and neither to get both kinds with the `shared` field telling them apart.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-rooms-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage. | 
 **employeeStatus** | [**EmployeeStatus**](.md) | Keeps only the users in the given account state: `Active` for a working account, `Terminated` for a disabled  one and `Pending` for one that has not accepted its invitation yet. Omit it to search every state. | [optional] 
 **activationStatus** | [**EmployeeActivationStatus**](.md) | Keeps only the users whose activation is in the given state: `NotActivated` for an account that has never  been activated, `Activated` for one that completed the activation, `Pending` for one whose invitation is  still open, and `AutoGenerated` for an account created by the portal itself. Omit it to search every state. | [optional] 
 **excludeShared** | **Bool** | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when adding new  members. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. | [optional] 
 **includeShared** | **Bool** | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when  `excludeShared` is also set. | [optional] 
 **invitedByMe** | **Bool** | Keeps only the users invited by the caller when true, and only the users invited by somebody else when false.  Omit it to search regardless of who sent the invitation. | [optional] 
 **inviterId** | **UUID** | Keeps only the users invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] 
 **area** | [**Area**](.md) | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. | [optional] 
 **employeeTypes** | [**[EmployeeType]**](EmployeeType.md) | Keeps only the users of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. | [optional] 
 **count** | **Int** | The size of the page, counting groups and users together. It defaults to 100, which is also the largest value  the operation accepts. | [optional] 
 **startIndex** | **Int** | The number of matches to skip before the page starts, counted over the groups and users together. It defaults  to 0, and the total number of matches is reported in the total count of the response. | [optional] 
 **filterSeparator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. | [optional] 
 **filterValue** | **String** | The text to search for, matched case-insensitively against the first name, the last name and the email. It is  required in practice: while it is empty the search returns nothing at all rather than every account. | [optional] 

### Return type

[**IAccountEntryArrayWrapper**](IAccountEntryArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
let employeeStatus = EmployeeStatus() // EmployeeStatus | Keeps only the users in the given account state: `Active` for a working account, `Terminated` for a disabled  one and `Pending` for one that has not accepted its invitation yet. Omit it to search every state. (optional)
let activationStatus = EmployeeActivationStatus() // EmployeeActivationStatus | Keeps only the users whose activation is in the given state: `NotActivated` for an account that has never  been activated, `Activated` for one that completed the activation, `Pending` for one whose invitation is  still open, and `AutoGenerated` for an account created by the portal itself. Omit it to search every state. (optional)
let excludeShared = false // Bool | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when adding new  members. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. (optional)
let includeShared = false // Bool | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when  `excludeShared` is also set. (optional)
let invitedByMe = false // Bool | Keeps only the users invited by the caller when true, and only the users invited by somebody else when false.  Omit it to search regardless of who sent the invitation. (optional)
let inviterId = 987 // UUID | Keeps only the users invited by the account with this ID. Omit it to search regardless of who sent the  invitation. (optional)
let area = Area() // Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. (optional)
let employeeTypes = [EmployeeType()] // [EmployeeType] | Keeps only the users of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. (optional)
let count = 987 // Int | The size of the page, counting groups and users together. It defaults to 100, which is also the largest value  the operation accepts. (optional)
let startIndex = 987 // Int | The number of matches to skip before the page starts, counted over the groups and users together. It defaults  to 0, and the total number of matches is reported in the total count of the response. (optional)
let filterSeparator = "filterSeparator_example" // String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. (optional)
let filterValue = "filterValue_example" // String | The text to search for, matched case-insensitively against the first name, the last name and the email. It is  required in practice: while it is empty the search returns nothing at all rather than every account. (optional)

// Search accounts for a room
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

# **getAccountsEntriesWithRoomsShared** (third-party storage)
```swift
    open class func getAccountsEntriesWithRoomsShared(id: String, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, completion: @escaping (_ data: IAccountEntryArrayWrapper?, _ error: Error?) -> Void)
```

Searches the portal users and groups that can be given access to the room with the ID given in the route, and  reports for each of them whether it already has access to that room.  The caller has to be allowed to manage the access of that room, and the ID has to belong to an existing room,  so the operation answers 403 for a room the caller cannot share and 404 for an ID that matches nothing.  The search is read-only and needs `filterValue`: while it is empty the operation returns an empty list and a  total of 0 instead of every account, so it cannot be used to enumerate the portal.  `filterValue` is matched case-insensitively against the first name, the last name and the email; without  `filterSeparator` it is split on spaces and every term has to match, and with a separator it is split on that  separator and any term may match.  Matching groups are streamed first and users after them, both paged together by `count` and `startIndex`,  while the number of matches is reported in the total count of the response.  Pass `excludeShared` to keep only the accounts that have no access yet, `includeShared` to keep only those  that already have it, and neither to get both kinds with the `shared` field telling them apart.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-rooms-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage. | 
 **employeeStatus** | [**EmployeeStatus**](.md) | Keeps only the users in the given account state: `Active` for a working account, `Terminated` for a disabled  one and `Pending` for one that has not accepted its invitation yet. Omit it to search every state. | [optional] 
 **activationStatus** | [**EmployeeActivationStatus**](.md) | Keeps only the users whose activation is in the given state: `NotActivated` for an account that has never  been activated, `Activated` for one that completed the activation, `Pending` for one whose invitation is  still open, and `AutoGenerated` for an account created by the portal itself. Omit it to search every state. | [optional] 
 **excludeShared** | **Bool** | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when adding new  members. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. | [optional] 
 **includeShared** | **Bool** | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when  `excludeShared` is also set. | [optional] 
 **invitedByMe** | **Bool** | Keeps only the users invited by the caller when true, and only the users invited by somebody else when false.  Omit it to search regardless of who sent the invitation. | [optional] 
 **inviterId** | **UUID** | Keeps only the users invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] 
 **area** | [**Area**](.md) | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. | [optional] 
 **employeeTypes** | [**[EmployeeType]**](EmployeeType.md) | Keeps only the users of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. | [optional] 
 **count** | **Int** | The size of the page, counting groups and users together. It defaults to 100, which is also the largest value  the operation accepts. | [optional] 
 **startIndex** | **Int** | The number of matches to skip before the page starts, counted over the groups and users together. It defaults  to 0, and the total number of matches is reported in the total count of the response. | [optional] 
 **filterSeparator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. | [optional] 
 **filterValue** | **String** | The text to search for, matched case-insensitively against the first name, the last name and the email. It is  required in practice: while it is empty the search returns nothing at all rather than every account. | [optional] 

### Return type

[**IAccountEntryArrayWrapper**](IAccountEntryArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
let employeeStatus = EmployeeStatus() // EmployeeStatus | Keeps only the users in the given account state: `Active` for a working account, `Terminated` for a disabled  one and `Pending` for one that has not accepted its invitation yet. Omit it to search every state. (optional)
let activationStatus = EmployeeActivationStatus() // EmployeeActivationStatus | Keeps only the users whose activation is in the given state: `NotActivated` for an account that has never  been activated, `Activated` for one that completed the activation, `Pending` for one whose invitation is  still open, and `AutoGenerated` for an account created by the portal itself. Omit it to search every state. (optional)
let excludeShared = false // Bool | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when adding new  members. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. (optional)
let includeShared = false // Bool | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when  `excludeShared` is also set. (optional)
let invitedByMe = false // Bool | Keeps only the users invited by the caller when true, and only the users invited by somebody else when false.  Omit it to search regardless of who sent the invitation. (optional)
let inviterId = 987 // UUID | Keeps only the users invited by the account with this ID. Omit it to search regardless of who sent the  invitation. (optional)
let area = Area() // Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. (optional)
let employeeTypes = [EmployeeType()] // [EmployeeType] | Keeps only the users of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. (optional)
let count = 987 // Int | The size of the page, counting groups and users together. It defaults to 100, which is also the largest value  the operation accepts. (optional)
let startIndex = 987 // Int | The number of matches to skip before the page starts, counted over the groups and users together. It defaults  to 0, and the total number of matches is reported in the total count of the response. (optional)
let filterSeparator = "filterSeparator_example" // String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. (optional)
let filterValue = "filterValue_example" // String | The text to search for, matched case-insensitively against the first name, the last name and the email. It is  required in practice: while it is empty the search returns nothing at all rather than every account. (optional)

// Search accounts for a room (third-party storage)
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

Searches the active accounts of the portal by a term taken from the path, and is the same search as  `GET api/2.0/people/search`, which takes the term in the query string instead.  Only a DocSpace administrator may call it; every other account, including a room admin, gets 403.  Only accounts with the `Active` status are searched, so a pending invitation and a disabled account are never  found - use `GET api/2.0/people/filter` to search across states.  The call is read-only and is not paged: every match is streamed, without a total.  `filterBy` set to `group` turns `text` into a group ID and keeps only the members of that group, so `text`  then has to be a valid identifier.  The answer holds full profiles.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-search/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String** | The term to look for, taken from the route. Only accounts with the `Active` status are searched. | 
 **filterBy** | **String** | The only recognised value is `group`, which turns `filterValue` into a group ID and keeps only the members of  that group. Any other value, and omitting the field, applies no group filter. | [optional] 
 **filterValue** | **String** | The group ID to keep the members of, used only when `filterBy` is `group`. It has to be a valid identifier -  a group name is not accepted. | [optional] 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let query = "query_example" // String | The term to look for, taken from the route. Only accounts with the `Active` status are searched.
let filterBy = "filterBy_example" // String | The only recognised value is `group`, which turns `filterValue` into a group ID and keeps only the members of  that group. Any other value, and omitting the field, applies no group filter. (optional)
let filterValue = "filterValue_example" // String | The group ID to keep the members of, used only when `filterBy` is `group`. It has to be a valid identifier -  a group name is not accepted. (optional)

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

Returns a page of portal accounts selected by the full set of account filters, with the short profile of each  of them - the identifying fields, the avatar and the display name, without the contacts, the groups or the  quota.  The caller has to be a room admin, a DocSpace admin or a People module admin; a member or a guest gets 403.  The call is read-only, paged by `count` and `startIndex`, ordered by `sortBy` and `sortOrder`, and reports  the number of matches in the total count of the response.  It accepts exactly the same filters as `GET api/2.0/people/filter` and differs only in how much of each  profile comes back, so prefer this one for pickers, mentions and any list that shows names, and switch to the  other only when the full profile is needed.  Filters combine as conditions that all have to hold, and the same interactions apply: `withoutGroup` makes  `groupId` irrelevant, `employeeType` wins over `employeeTypes`, and `area` cancels the type filters that  contradict it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-simple-by-filter/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeStatus** | [**EmployeeStatus**](.md) | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state. | [optional] 
 **groupId** | **UUID** | Keeps only the members of this group, or excludes them when `excludeGroup` is true. It is ignored when  `withoutGroup` is set. | [optional] 
 **activationStatus** | [**EmployeeActivationStatus**](.md) | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state. | [optional] 
 **employeeType** | [**EmployeeType**](.md) | Keeps only the accounts of this single type: `DocSpaceAdmin`, `RoomAdmin`, `User` or `Guest`. When it is  sent it wins over `employeeTypes`, and a type that contradicts `area` is dropped. | [optional] 
 **employeeTypes** | [**[Int]**](Int.md) | Keeps the accounts of any of the listed types, combined as alternatives. It is ignored when `employeeType`  is also sent. | [optional] 
 **isAdministrator** | **Bool** | Set it to true to keep only the DocSpace administrators and the module administrators. Setting it to false  is the same as omitting it and does not exclude administrators. | [optional] 
 **payments** | [**Payments**](.md) | Keeps only the accounts that take a paid seat when `Paid`, or only the guests and members that do not when  `Free`. Omit it to search both. | [optional] 
 **accountLoginType** | [**AccountLoginType**](.md) | Keeps only the accounts that sign in this way: `SSO`, `LDAP`, or `Standart` for an ordinary portal  password. Omit it to search all of them. | [optional] 
 **quotaFilter** | [**QuotaFilter**](.md) | Keeps only the accounts whose storage quota is the portal default when `Default`, or set individually when  `Custom`. `All`, which is the same as omitting the field, searches both. | [optional] 
 **withoutGroup** | **Bool** | Set it to true to keep only the accounts that belong to no group at all, which makes `groupId` and  `excludeGroup` irrelevant. | [optional] 
 **excludeGroup** | **Bool** | Inverts `groupId`: with true the members of that group are left out instead of being the only ones kept. It  has no effect without `groupId`. | [optional] 
 **invitedByMe** | **Bool** | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation. | [optional] 
 **inviterId** | **UUID** | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] 
 **area** | [**Area**](.md) | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only. It also cancels the type filters that contradict  it. | [optional] 
 **count** | **Int** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] 
 **startIndex** | **Int** | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. | [optional] 
 **sortBy** | **String** | What to order the accounts by, compared without regard to case: `FirstName`, `LastName`, `DisplayName`,  `Type`, `Email`, `Department`, `UsedSpace`, `CreatedBy` or `RegistrationDate`. | [optional] 
 **sortOrder** | [**SortOrder**](.md) | The direction of the ordering: `Ascending`, which is the default, or `Descending`. | [optional] 
 **filterSeparator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split  the value on spaces instead, in which case every term has to match. | [optional] 
 **filterValue** | **String** | The text to match against the first name, the last name and the email, case-insensitively. Omit it to apply  no text filter at all. | [optional] 

### Return type

[**EmployeeArrayWrapper**](EmployeeArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let employeeStatus = EmployeeStatus() // EmployeeStatus | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state. (optional)
let groupId = 987 // UUID | Keeps only the members of this group, or excludes them when `excludeGroup` is true. It is ignored when  `withoutGroup` is set. (optional)
let activationStatus = EmployeeActivationStatus() // EmployeeActivationStatus | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state. (optional)
let employeeType = EmployeeType() // EmployeeType | Keeps only the accounts of this single type: `DocSpaceAdmin`, `RoomAdmin`, `User` or `Guest`. When it is  sent it wins over `employeeTypes`, and a type that contradicts `area` is dropped. (optional)
let employeeTypes = [123] // [Int] | Keeps the accounts of any of the listed types, combined as alternatives. It is ignored when `employeeType`  is also sent. (optional)
let isAdministrator = false // Bool | Set it to true to keep only the DocSpace administrators and the module administrators. Setting it to false  is the same as omitting it and does not exclude administrators. (optional)
let payments = Payments() // Payments | Keeps only the accounts that take a paid seat when `Paid`, or only the guests and members that do not when  `Free`. Omit it to search both. (optional)
let accountLoginType = AccountLoginType() // AccountLoginType | Keeps only the accounts that sign in this way: `SSO`, `LDAP`, or `Standart` for an ordinary portal  password. Omit it to search all of them. (optional)
let quotaFilter = QuotaFilter() // QuotaFilter | Keeps only the accounts whose storage quota is the portal default when `Default`, or set individually when  `Custom`. `All`, which is the same as omitting the field, searches both. (optional)
let withoutGroup = false // Bool | Set it to true to keep only the accounts that belong to no group at all, which makes `groupId` and  `excludeGroup` irrelevant. (optional)
let excludeGroup = false // Bool | Inverts `groupId`: with true the members of that group are left out instead of being the only ones kept. It  has no effect without `groupId`. (optional)
let invitedByMe = false // Bool | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation. (optional)
let inviterId = 987 // UUID | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation. (optional)
let area = Area() // Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only. It also cancels the type filters that contradict  it. (optional)
let count = 987 // Int | The size of the page. It defaults to 100, which is also the largest value the operation accepts. (optional)
let startIndex = 987 // Int | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. (optional)
let sortBy = "sortBy_example" // String | What to order the accounts by, compared without regard to case: `FirstName`, `LastName`, `DisplayName`,  `Type`, `Email`, `Department`, `UsedSpace`, `CreatedBy` or `RegistrationDate`. (optional)
let sortOrder = SortOrder() // SortOrder | The direction of the ordering: `Ascending`, which is the default, or `Descending`. (optional)
let filterSeparator = "filterSeparator_example" // String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split  the value on spaces instead, in which case every term has to match. (optional)
let filterValue = "filterValue_example" // String | The text to match against the first name, the last name and the email, case-insensitively. Omit it to apply  no text filter at all. (optional)

// Filter users in brief
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

Returns the accounts that are relevant to the file with the ID given in the route, and reports for each of  them whether it already has access to that file.  The caller only needs read access to the file, not the right to manage its access, but a guest may not call  it at all; an ID that matches no file answers 404.  The call is read-only, works without a filter - leaving `filterValue` empty returns every matching account  rather than nothing - and is paged by `count` and `startIndex`, with the number of matches in the total count  of the response.  Pass `excludeShared` to keep only the accounts that have no access yet, `includeShared` to keep only those  that already have it, and neither to get both kinds with the `shared` field telling them apart.  A DocSpace administrator additionally sees the guests that are not related to the caller.  To search users and groups together, or to build an access dialog that needs the right to manage sharing, use  `GET api/2.0/accounts/file/{id}/search` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-files-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The ID of the room, folder or file the search is run against, taken from the route. It is an integer for an  entry stored in DocSpace and a provider-specific string for an entry in a connected third-party storage. | 
 **employeeStatus** | [**EmployeeStatus**](.md) | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state. | [optional] 
 **activationStatus** | [**EmployeeActivationStatus**](.md) | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state. | [optional] 
 **excludeShared** | **Bool** | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when granting  access. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. | [optional] 
 **includeShared** | **Bool** | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when `excludeShared`  is also set. | [optional] 
 **invitedByMe** | **Bool** | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation. | [optional] 
 **inviterId** | **UUID** | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] 
 **area** | [**Area**](.md) | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. | [optional] 
 **employeeTypes** | [**[EmployeeType]**](EmployeeType.md) | Keeps only the accounts of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. | [optional] 
 **count** | **Int** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] 
 **startIndex** | **Int** | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. | [optional] 
 **filterSeparator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. | [optional] 
 **filterValue** | **String** | The text to match against the first name, the last name and the email, case-insensitively. Omit it to get  every account the caller may offer access to. | [optional] 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The ID of the room, folder or file the search is run against, taken from the route. It is an integer for an  entry stored in DocSpace and a provider-specific string for an entry in a connected third-party storage.
let employeeStatus = EmployeeStatus() // EmployeeStatus | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state. (optional)
let activationStatus = EmployeeActivationStatus() // EmployeeActivationStatus | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state. (optional)
let excludeShared = false // Bool | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when granting  access. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. (optional)
let includeShared = false // Bool | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when `excludeShared`  is also set. (optional)
let invitedByMe = false // Bool | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation. (optional)
let inviterId = 987 // UUID | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation. (optional)
let area = Area() // Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. (optional)
let employeeTypes = [EmployeeType()] // [EmployeeType] | Keeps only the accounts of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. (optional)
let count = 987 // Int | The size of the page. It defaults to 100, which is also the largest value the operation accepts. (optional)
let startIndex = 987 // Int | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. (optional)
let filterSeparator = "filterSeparator_example" // String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. (optional)
let filterValue = "filterValue_example" // String | The text to match against the first name, the last name and the email, case-insensitively. Omit it to get  every account the caller may offer access to. (optional)

// Search users for a file
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

# **getUsersWithFilesShared** (third-party storage)
```swift
    open class func getUsersWithFilesShared(id: String, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, completion: @escaping (_ data: EmployeeFullArrayWrapper?, _ error: Error?) -> Void)
```

Returns the accounts that are relevant to the file with the ID given in the route, and reports for each of  them whether it already has access to that file.  The caller only needs read access to the file, not the right to manage its access, but a guest may not call  it at all; an ID that matches no file answers 404.  The call is read-only, works without a filter - leaving `filterValue` empty returns every matching account  rather than nothing - and is paged by `count` and `startIndex`, with the number of matches in the total count  of the response.  Pass `excludeShared` to keep only the accounts that have no access yet, `includeShared` to keep only those  that already have it, and neither to get both kinds with the `shared` field telling them apart.  A DocSpace administrator additionally sees the guests that are not related to the caller.  To search users and groups together, or to build an access dialog that needs the right to manage sharing, use  `GET api/2.0/accounts/file/{id}/search` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-files-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The ID of the room, folder or file the search is run against, taken from the route. It is an integer for an  entry stored in DocSpace and a provider-specific string for an entry in a connected third-party storage. | 
 **employeeStatus** | [**EmployeeStatus**](.md) | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state. | [optional] 
 **activationStatus** | [**EmployeeActivationStatus**](.md) | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state. | [optional] 
 **excludeShared** | **Bool** | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when granting  access. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. | [optional] 
 **includeShared** | **Bool** | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when `excludeShared`  is also set. | [optional] 
 **invitedByMe** | **Bool** | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation. | [optional] 
 **inviterId** | **UUID** | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] 
 **area** | [**Area**](.md) | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. | [optional] 
 **employeeTypes** | [**[EmployeeType]**](EmployeeType.md) | Keeps only the accounts of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. | [optional] 
 **count** | **Int** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] 
 **startIndex** | **Int** | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. | [optional] 
 **filterSeparator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. | [optional] 
 **filterValue** | **String** | The text to match against the first name, the last name and the email, case-insensitively. Omit it to get  every account the caller may offer access to. | [optional] 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the room, folder or file the search is run against, taken from the route. It is an integer for an  entry stored in DocSpace and a provider-specific string for an entry in a connected third-party storage.
let employeeStatus = EmployeeStatus() // EmployeeStatus | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state. (optional)
let activationStatus = EmployeeActivationStatus() // EmployeeActivationStatus | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state. (optional)
let excludeShared = false // Bool | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when granting  access. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. (optional)
let includeShared = false // Bool | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when `excludeShared`  is also set. (optional)
let invitedByMe = false // Bool | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation. (optional)
let inviterId = 987 // UUID | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation. (optional)
let area = Area() // Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. (optional)
let employeeTypes = [EmployeeType()] // [EmployeeType] | Keeps only the accounts of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. (optional)
let count = 987 // Int | The size of the page. It defaults to 100, which is also the largest value the operation accepts. (optional)
let startIndex = 987 // Int | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. (optional)
let filterSeparator = "filterSeparator_example" // String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. (optional)
let filterValue = "filterValue_example" // String | The text to match against the first name, the last name and the email, case-insensitively. Omit it to get  every account the caller may offer access to. (optional)

// Search users for a file (third-party storage)
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

Returns the accounts that are relevant to the folder with the ID given in the route, and reports for each of  them whether it already has access to that folder.  The caller only needs read access to the folder, not the right to manage its access, but a guest may not call  it at all; an ID that matches no folder answers 404.  The call is read-only, works without a filter - leaving `filterValue` empty returns every matching account  rather than nothing - and is paged by `count` and `startIndex`, with the number of matches in the total count  of the response.  Pass `excludeShared` to keep only the accounts that have no access yet, `includeShared` to keep only those  that already have it, and neither to get both kinds with the `shared` field telling them apart.  A DocSpace administrator additionally sees the guests that are not related to the caller.  To search users and groups together, or to build an access dialog that needs the right to manage sharing, use  `GET api/2.0/accounts/folder/{id}/search` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-folders-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The ID of the room, folder or file the search is run against, taken from the route. It is an integer for an  entry stored in DocSpace and a provider-specific string for an entry in a connected third-party storage. | 
 **employeeStatus** | [**EmployeeStatus**](.md) | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state. | [optional] 
 **activationStatus** | [**EmployeeActivationStatus**](.md) | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state. | [optional] 
 **excludeShared** | **Bool** | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when granting  access. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. | [optional] 
 **includeShared** | **Bool** | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when `excludeShared`  is also set. | [optional] 
 **invitedByMe** | **Bool** | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation. | [optional] 
 **inviterId** | **UUID** | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] 
 **area** | [**Area**](.md) | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. | [optional] 
 **employeeTypes** | [**[EmployeeType]**](EmployeeType.md) | Keeps only the accounts of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. | [optional] 
 **count** | **Int** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] 
 **startIndex** | **Int** | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. | [optional] 
 **filterSeparator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. | [optional] 
 **filterValue** | **String** | The text to match against the first name, the last name and the email, case-insensitively. Omit it to get  every account the caller may offer access to. | [optional] 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The ID of the room, folder or file the search is run against, taken from the route. It is an integer for an  entry stored in DocSpace and a provider-specific string for an entry in a connected third-party storage.
let employeeStatus = EmployeeStatus() // EmployeeStatus | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state. (optional)
let activationStatus = EmployeeActivationStatus() // EmployeeActivationStatus | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state. (optional)
let excludeShared = false // Bool | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when granting  access. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. (optional)
let includeShared = false // Bool | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when `excludeShared`  is also set. (optional)
let invitedByMe = false // Bool | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation. (optional)
let inviterId = 987 // UUID | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation. (optional)
let area = Area() // Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. (optional)
let employeeTypes = [EmployeeType()] // [EmployeeType] | Keeps only the accounts of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. (optional)
let count = 987 // Int | The size of the page. It defaults to 100, which is also the largest value the operation accepts. (optional)
let startIndex = 987 // Int | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. (optional)
let filterSeparator = "filterSeparator_example" // String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. (optional)
let filterValue = "filterValue_example" // String | The text to match against the first name, the last name and the email, case-insensitively. Omit it to get  every account the caller may offer access to. (optional)

// Search users for a folder
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

# **getUsersWithFoldersShared** (third-party storage)
```swift
    open class func getUsersWithFoldersShared(id: String, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, completion: @escaping (_ data: EmployeeFullArrayWrapper?, _ error: Error?) -> Void)
```

Returns the accounts that are relevant to the folder with the ID given in the route, and reports for each of  them whether it already has access to that folder.  The caller only needs read access to the folder, not the right to manage its access, but a guest may not call  it at all; an ID that matches no folder answers 404.  The call is read-only, works without a filter - leaving `filterValue` empty returns every matching account  rather than nothing - and is paged by `count` and `startIndex`, with the number of matches in the total count  of the response.  Pass `excludeShared` to keep only the accounts that have no access yet, `includeShared` to keep only those  that already have it, and neither to get both kinds with the `shared` field telling them apart.  A DocSpace administrator additionally sees the guests that are not related to the caller.  To search users and groups together, or to build an access dialog that needs the right to manage sharing, use  `GET api/2.0/accounts/folder/{id}/search` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-folders-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The ID of the room, folder or file the search is run against, taken from the route. It is an integer for an  entry stored in DocSpace and a provider-specific string for an entry in a connected third-party storage. | 
 **employeeStatus** | [**EmployeeStatus**](.md) | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state. | [optional] 
 **activationStatus** | [**EmployeeActivationStatus**](.md) | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state. | [optional] 
 **excludeShared** | **Bool** | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when granting  access. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. | [optional] 
 **includeShared** | **Bool** | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when `excludeShared`  is also set. | [optional] 
 **invitedByMe** | **Bool** | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation. | [optional] 
 **inviterId** | **UUID** | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] 
 **area** | [**Area**](.md) | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. | [optional] 
 **employeeTypes** | [**[EmployeeType]**](EmployeeType.md) | Keeps only the accounts of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. | [optional] 
 **count** | **Int** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] 
 **startIndex** | **Int** | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. | [optional] 
 **filterSeparator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. | [optional] 
 **filterValue** | **String** | The text to match against the first name, the last name and the email, case-insensitively. Omit it to get  every account the caller may offer access to. | [optional] 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the room, folder or file the search is run against, taken from the route. It is an integer for an  entry stored in DocSpace and a provider-specific string for an entry in a connected third-party storage.
let employeeStatus = EmployeeStatus() // EmployeeStatus | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state. (optional)
let activationStatus = EmployeeActivationStatus() // EmployeeActivationStatus | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state. (optional)
let excludeShared = false // Bool | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when granting  access. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. (optional)
let includeShared = false // Bool | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when `excludeShared`  is also set. (optional)
let invitedByMe = false // Bool | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation. (optional)
let inviterId = 987 // UUID | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation. (optional)
let area = Area() // Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. (optional)
let employeeTypes = [EmployeeType()] // [EmployeeType] | Keeps only the accounts of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. (optional)
let count = 987 // Int | The size of the page. It defaults to 100, which is also the largest value the operation accepts. (optional)
let startIndex = 987 // Int | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. (optional)
let filterSeparator = "filterSeparator_example" // String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. (optional)
let filterValue = "filterValue_example" // String | The text to match against the first name, the last name and the email, case-insensitively. Omit it to get  every account the caller may offer access to. (optional)

// Search users for a folder (third-party storage)
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

Returns the accounts that are relevant to the room with the ID given in the route, and reports for each of  them whether it already has access to that room.  The caller only needs read access to the room, not the right to manage its access, but a guest may not call  it at all; an ID that matches no room answers 404.  The call is read-only, works without a filter - leaving `filterValue` empty returns every matching account  rather than nothing - and is paged by `count` and `startIndex`, with the number of matches in the total count  of the response.  Pass `excludeShared` to keep only the accounts that have no access yet, `includeShared` to keep only those  that already have it, and neither to get both kinds with the `shared` field telling them apart.  A DocSpace administrator additionally sees the guests that are not related to the caller.  To search users and groups together, or to build an access dialog that needs the right to manage sharing, use  `GET api/2.0/accounts/room/{id}/search` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-room-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The ID of the room, folder or file the search is run against, taken from the route. It is an integer for an  entry stored in DocSpace and a provider-specific string for an entry in a connected third-party storage. | 
 **employeeStatus** | [**EmployeeStatus**](.md) | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state. | [optional] 
 **activationStatus** | [**EmployeeActivationStatus**](.md) | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state. | [optional] 
 **excludeShared** | **Bool** | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when granting  access. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. | [optional] 
 **includeShared** | **Bool** | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when `excludeShared`  is also set. | [optional] 
 **invitedByMe** | **Bool** | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation. | [optional] 
 **inviterId** | **UUID** | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] 
 **area** | [**Area**](.md) | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. | [optional] 
 **employeeTypes** | [**[EmployeeType]**](EmployeeType.md) | Keeps only the accounts of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. | [optional] 
 **count** | **Int** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] 
 **startIndex** | **Int** | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. | [optional] 
 **filterSeparator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. | [optional] 
 **filterValue** | **String** | The text to match against the first name, the last name and the email, case-insensitively. Omit it to get  every account the caller may offer access to. | [optional] 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The ID of the room, folder or file the search is run against, taken from the route. It is an integer for an  entry stored in DocSpace and a provider-specific string for an entry in a connected third-party storage.
let employeeStatus = EmployeeStatus() // EmployeeStatus | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state. (optional)
let activationStatus = EmployeeActivationStatus() // EmployeeActivationStatus | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state. (optional)
let excludeShared = false // Bool | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when granting  access. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. (optional)
let includeShared = false // Bool | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when `excludeShared`  is also set. (optional)
let invitedByMe = false // Bool | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation. (optional)
let inviterId = 987 // UUID | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation. (optional)
let area = Area() // Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. (optional)
let employeeTypes = [EmployeeType()] // [EmployeeType] | Keeps only the accounts of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. (optional)
let count = 987 // Int | The size of the page. It defaults to 100, which is also the largest value the operation accepts. (optional)
let startIndex = 987 // Int | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. (optional)
let filterSeparator = "filterSeparator_example" // String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. (optional)
let filterValue = "filterValue_example" // String | The text to match against the first name, the last name and the email, case-insensitively. Omit it to get  every account the caller may offer access to. (optional)

// Search users for a room
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

# **getUsersWithRoomShared** (third-party storage)
```swift
    open class func getUsersWithRoomShared(id: String, employeeStatus: EmployeeStatus? = nil, activationStatus: EmployeeActivationStatus? = nil, excludeShared: Bool? = nil, includeShared: Bool? = nil, invitedByMe: Bool? = nil, inviterId: UUID? = nil, area: Area? = nil, employeeTypes: [EmployeeType]? = nil, count: Int? = nil, startIndex: Int? = nil, filterSeparator: String? = nil, filterValue: String? = nil, completion: @escaping (_ data: EmployeeFullArrayWrapper?, _ error: Error?) -> Void)
```

Returns the accounts that are relevant to the room with the ID given in the route, and reports for each of  them whether it already has access to that room.  The caller only needs read access to the room, not the right to manage its access, but a guest may not call  it at all; an ID that matches no room answers 404.  The call is read-only, works without a filter - leaving `filterValue` empty returns every matching account  rather than nothing - and is paged by `count` and `startIndex`, with the number of matches in the total count  of the response.  Pass `excludeShared` to keep only the accounts that have no access yet, `includeShared` to keep only those  that already have it, and neither to get both kinds with the `shared` field telling them apart.  A DocSpace administrator additionally sees the guests that are not related to the caller.  To search users and groups together, or to build an access dialog that needs the right to manage sharing, use  `GET api/2.0/accounts/room/{id}/search` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-room-shared/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | The ID of the room, folder or file the search is run against, taken from the route. It is an integer for an  entry stored in DocSpace and a provider-specific string for an entry in a connected third-party storage. | 
 **employeeStatus** | [**EmployeeStatus**](.md) | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state. | [optional] 
 **activationStatus** | [**EmployeeActivationStatus**](.md) | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state. | [optional] 
 **excludeShared** | **Bool** | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when granting  access. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. | [optional] 
 **includeShared** | **Bool** | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when `excludeShared`  is also set. | [optional] 
 **invitedByMe** | **Bool** | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation. | [optional] 
 **inviterId** | **UUID** | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] 
 **area** | [**Area**](.md) | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. | [optional] 
 **employeeTypes** | [**[EmployeeType]**](EmployeeType.md) | Keeps only the accounts of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. | [optional] 
 **count** | **Int** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] 
 **startIndex** | **Int** | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. | [optional] 
 **filterSeparator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. | [optional] 
 **filterValue** | **String** | The text to match against the first name, the last name and the email, case-insensitively. Omit it to get  every account the caller may offer access to. | [optional] 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the room, folder or file the search is run against, taken from the route. It is an integer for an  entry stored in DocSpace and a provider-specific string for an entry in a connected third-party storage.
let employeeStatus = EmployeeStatus() // EmployeeStatus | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state. (optional)
let activationStatus = EmployeeActivationStatus() // EmployeeActivationStatus | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state. (optional)
let excludeShared = false // Bool | Keeps only the accounts that do not have access to the entry yet, which is the set to offer when granting  access. It takes precedence over `includeShared`, and every returned entry has `shared` set to false. (optional)
let includeShared = false // Bool | Keeps only the accounts that already have access to the entry, which is the set to offer when changing or  revoking access. Every returned entry has `shared` set to true, and the flag is ignored when `excludeShared`  is also set. (optional)
let invitedByMe = false // Bool | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation. (optional)
let inviterId = 987 // UUID | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation. (optional)
let area = Area() // Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only - and for a caller who is not a DocSpace  administrator, only the guests that caller is related to. (optional)
let employeeTypes = [EmployeeType()] // [EmployeeType] | Keeps only the accounts of the listed types, combined as alternatives. An empty list, which is the default,  searches every type. (optional)
let count = 987 // Int | The size of the page. It defaults to 100, which is also the largest value the operation accepts. (optional)
let startIndex = 987 // Int | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. (optional)
let filterSeparator = "filterSeparator_example" // String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split the  value on spaces instead, in which case every term has to match. (optional)
let filterValue = "filterValue_example" // String | The text to match against the first name, the last name and the email, case-insensitively. Omit it to get  every account the caller may offer access to. (optional)

// Search users for a room (third-party storage)
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

Returns a page of portal accounts selected by the full set of account filters, with the complete profile of  each of them.  The caller has to be a room admin, a DocSpace admin or a People module admin; a member or a guest gets 403,  and a DocSpace admin additionally sees the accounts an ordinary admin does not.  The call is read-only, paged by `count` and `startIndex`, ordered by `sortBy` and `sortOrder`, and reports  the number of matches in the total count of the response.  Filters combine as conditions that all have to hold, with three interactions worth knowing: `withoutGroup`  makes `groupId` irrelevant, `employeeType` wins over `employeeTypes` when both are sent, and `area` set to  `Guests` or `People` cancels the type filters that contradict it.  `GET api/2.0/people/simple/filter` accepts exactly the same filters and returns the short profile instead, so  use that one for pickers and lists and this one when the full profile is really needed.  It is available on an unpaid portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/search-users-by-extended-filter/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeStatus** | [**EmployeeStatus**](.md) | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state. | [optional] 
 **groupId** | **UUID** | Keeps only the members of this group, or excludes them when `excludeGroup` is true. It is ignored when  `withoutGroup` is set. | [optional] 
 **activationStatus** | [**EmployeeActivationStatus**](.md) | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state. | [optional] 
 **employeeType** | [**EmployeeType**](.md) | Keeps only the accounts of this single type: `DocSpaceAdmin`, `RoomAdmin`, `User` or `Guest`. When it is  sent it wins over `employeeTypes`, and a type that contradicts `area` is dropped. | [optional] 
 **employeeTypes** | [**[Int]**](Int.md) | Keeps the accounts of any of the listed types, combined as alternatives. It is ignored when `employeeType`  is also sent. | [optional] 
 **isAdministrator** | **Bool** | Set it to true to keep only the DocSpace administrators and the module administrators. Setting it to false  is the same as omitting it and does not exclude administrators. | [optional] 
 **payments** | [**Payments**](.md) | Keeps only the accounts that take a paid seat when `Paid`, or only the guests and members that do not when  `Free`. Omit it to search both. | [optional] 
 **accountLoginType** | [**AccountLoginType**](.md) | Keeps only the accounts that sign in this way: `SSO`, `LDAP`, or `Standart` for an ordinary portal  password. Omit it to search all of them. | [optional] 
 **quotaFilter** | [**QuotaFilter**](.md) | Keeps only the accounts whose storage quota is the portal default when `Default`, or set individually when  `Custom`. `All`, which is the same as omitting the field, searches both. | [optional] 
 **withoutGroup** | **Bool** | Set it to true to keep only the accounts that belong to no group at all, which makes `groupId` and  `excludeGroup` irrelevant. | [optional] 
 **excludeGroup** | **Bool** | Inverts `groupId`: with true the members of that group are left out instead of being the only ones kept. It  has no effect without `groupId`. | [optional] 
 **invitedByMe** | **Bool** | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation. | [optional] 
 **inviterId** | **UUID** | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation. | [optional] 
 **area** | [**Area**](.md) | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only. It also cancels the type filters that contradict  it. | [optional] 
 **count** | **Int** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] 
 **startIndex** | **Int** | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. | [optional] 
 **sortBy** | **String** | What to order the accounts by, compared without regard to case: `FirstName`, `LastName`, `DisplayName`,  `Type`, `Email`, `Department`, `UsedSpace`, `CreatedBy` or `RegistrationDate`. | [optional] 
 **sortOrder** | [**SortOrder**](.md) | The direction of the ordering: `Ascending`, which is the default, or `Descending`. | [optional] 
 **filterSeparator** | **String** | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split  the value on spaces instead, in which case every term has to match. | [optional] 
 **filterValue** | **String** | The text to match against the first name, the last name and the email, case-insensitively. Omit it to apply  no text filter at all. | [optional] 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let employeeStatus = EmployeeStatus() // EmployeeStatus | Keeps only the accounts in the given state: `Active` for working accounts, `Terminated` for disabled ones  and `Pending` for open invitations. Omit it to search every state. (optional)
let groupId = 987 // UUID | Keeps only the members of this group, or excludes them when `excludeGroup` is true. It is ignored when  `withoutGroup` is set. (optional)
let activationStatus = EmployeeActivationStatus() // EmployeeActivationStatus | Keeps only the accounts whose activation is in the given state: `NotActivated`, `Activated`, `Pending` or  `AutoGenerated`. Omit it to search every state. (optional)
let employeeType = EmployeeType() // EmployeeType | Keeps only the accounts of this single type: `DocSpaceAdmin`, `RoomAdmin`, `User` or `Guest`. When it is  sent it wins over `employeeTypes`, and a type that contradicts `area` is dropped. (optional)
let employeeTypes = [123] // [Int] | Keeps the accounts of any of the listed types, combined as alternatives. It is ignored when `employeeType`  is also sent. (optional)
let isAdministrator = false // Bool | Set it to true to keep only the DocSpace administrators and the module administrators. Setting it to false  is the same as omitting it and does not exclude administrators. (optional)
let payments = Payments() // Payments | Keeps only the accounts that take a paid seat when `Paid`, or only the guests and members that do not when  `Free`. Omit it to search both. (optional)
let accountLoginType = AccountLoginType() // AccountLoginType | Keeps only the accounts that sign in this way: `SSO`, `LDAP`, or `Standart` for an ordinary portal  password. Omit it to search all of them. (optional)
let quotaFilter = QuotaFilter() // QuotaFilter | Keeps only the accounts whose storage quota is the portal default when `Default`, or set individually when  `Custom`. `All`, which is the same as omitting the field, searches both. (optional)
let withoutGroup = false // Bool | Set it to true to keep only the accounts that belong to no group at all, which makes `groupId` and  `excludeGroup` irrelevant. (optional)
let excludeGroup = false // Bool | Inverts `groupId`: with true the members of that group are left out instead of being the only ones kept. It  has no effect without `groupId`. (optional)
let invitedByMe = false // Bool | Keeps only the accounts invited by the caller when true, and only those invited by somebody else when  false. Omit it to search regardless of who sent the invitation. (optional)
let inviterId = 987 // UUID | Keeps only the accounts invited by the account with this ID. Omit it to search regardless of who sent the  invitation. (optional)
let area = Area() // Area | The part of the portal to search in: `All`, the default, searches members and guests together, `People`  leaves the guests out, and `Guests` returns guests only. It also cancels the type filters that contradict  it. (optional)
let count = 987 // Int | The size of the page. It defaults to 100, which is also the largest value the operation accepts. (optional)
let startIndex = 987 // Int | The number of matches to skip before the page starts. It defaults to 0, and the total number of matches is  reported in the total count of the response. (optional)
let sortBy = "sortBy_example" // String | What to order the accounts by, compared without regard to case: `FirstName`, `LastName`, `DisplayName`,  `Type`, `Email`, `Department`, `UsedSpace`, `CreatedBy` or `RegistrationDate`. (optional)
let sortOrder = SortOrder() // SortOrder | The direction of the ordering: `Ascending`, which is the default, or `Descending`. (optional)
let filterSeparator = "filterSeparator_example" // String | The character that splits `filterValue` into several terms, of which any one may match. Omit it to split  the value on spaces instead, in which case every term has to match. (optional)
let filterValue = "filterValue_example" // String | The text to match against the first name, the last name and the email, case-insensitively. Omit it to apply  no text filter at all. (optional)

// Filter users in detail
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
    open class func searchUsersByQuery(query: String? = nil, completion: @escaping (_ data: EmployeeFullArrayWrapper?, _ error: Error?) -> Void)
```

Searches the active accounts of the portal by a term passed in the query string, and is the same search as  `GET api/2.0/people/@search/{query}`, which takes the term in the path instead.  Only a DocSpace administrator may call it; every other account, including a room admin, gets 403.  Only accounts with the `Active` status are searched, so a pending invitation and a disabled account are never  found - use `GET api/2.0/people/filter` to search across states.  The call is read-only and is not paged: every match is streamed, without a total.  It takes the search term and nothing else - the group filter of  `GET api/2.0/people/@search/{query}` is not reachable here, because the handler forwards only `query` - so  use that operation when the result has to be narrowed to one group.  The answer holds full profiles, because the handler passes the request on to the operation that builds the  complete profile.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/search-users-by-query/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String** | The term to look for. Only accounts with the `Active` status are searched, and this is the only parameter the  operation reads. | [optional] 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let query = "query_example" // String | The term to look for. Only accounts with the `Active` status are searched, and this is the only parameter the  operation reads. (optional)

// Search users by query
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

Searches the accounts that are in one particular state - the status is taken from the route - and whose name,  user name, email or contacts contain the search term.  Only a DocSpace administrator may call it; every other account, including a room admin, gets 403.  The call is read-only and is not paged: it matches in memory over every account of that status and streams  all of them, so it is meant for administrative lookups rather than for a user-facing list - use  `GET api/2.0/people/filter` when a page and a total are needed.  The term is matched as a case-insensitive substring and is required; `filterBy` set to `group` turns `text`  into a group ID and keeps only the members of that group, so `text` then has to be a valid identifier.  The answer holds full profiles, in no particular order.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/search-users-by-status/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**EmployeeStatus**](.md) | The account state to search in, taken from the route: `Active` for working accounts, `Terminated` for  disabled ones, `Pending` for open invitations, or `All` for every state. | 
 **query** | **String** | The term to look for, matched as a case-insensitive substring of the first name, the last name, the user  name, the email and the contacts. It is required in practice, because the search cannot run without it. | [optional] 
 **filterBy** | **String** | The only recognised value is `group`, which turns `filterValue` into a group ID and keeps only the members of  that group. Any other value, and omitting the field, applies no group filter. | [optional] 
 **filterValue** | **String** | The group ID to keep the members of, used only when `filterBy` is `group`. It has to be a valid identifier -  a group name is not accepted. | [optional] 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let status = EmployeeStatus() // EmployeeStatus | The account state to search in, taken from the route: `Active` for working accounts, `Terminated` for  disabled ones, `Pending` for open invitations, or `All` for every state.
let query = "query_example" // String | The term to look for, matched as a case-insensitive substring of the first name, the last name, the user  name, the email and the contacts. It is required in practice, because the search cannot run without it. (optional)
let filterBy = "filterBy_example" // String | The only recognised value is `group`, which turns `filterValue` into a group ID and keeps only the members of  that group. Any other value, and omitting the field, applies no group filter. (optional)
let filterValue = "filterValue_example" // String | The group ID to keep the members of, used only when `filterBy` is `group`. It has to be a valid identifier -  a group name is not accepted. (optional)

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

