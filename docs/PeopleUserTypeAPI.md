# PeopleUserTypeAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUserTypeUpdateProgress**](PeopleUserTypeAPI.md#getusertypeupdateprogress) | **GET** /api/2.0/people/type/progress/{userid} | Get the user type change progress
[**startUserTypeUpdate**](PeopleUserTypeAPI.md#startusertypeupdate) | **POST** /api/2.0/people/type | Start updating user type
[**terminateUserTypeUpdate**](PeopleUserTypeAPI.md#terminateusertypeupdate) | **PUT** /api/2.0/people/type/terminate | Terminate updating user type
[**updateUserType**](PeopleUserTypeAPI.md#updateusertype) | **PUT** /api/2.0/people/type/{type} | Change a user type


# **getUserTypeUpdateProgress**
```swift
    open class func getUserTypeUpdateProgress(userid: UUID, completion: @escaping (_ data: TaskProgressResponseWrapper?, _ error: Error?) -> Void)
```

Returns the current state of the user type change queued for the user with the ID specified in the request.  A conversion must have been queued by `POST api/2.0/people/type` first: when nothing is queued for that user  the operation answers 200 with an empty body.  The caller needs the permission to add and remove users.  The call is read-only and is the polling operation of this flow - repeat it until `isCompleted` is true,  reading `percentage` for the 0 to 100 progress and `error` for the message left by a failed job.  Use `PUT api/2.0/people/type/terminate` to cancel a conversion that is still running.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-type-update-progress/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **UUID** | The ID of the user the operation applies to, taken from the route. For a progress operation it has to be the  same ID that was passed when the job was started. | 

### Return type

[**TaskProgressResponseWrapper**](TaskProgressResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userid = 987 // UUID | The ID of the user the operation applies to, taken from the route. For a progress operation it has to be the  same ID that was passed when the job was started.

// Get the user type change progress
PeopleUserTypeAPIApi.getUserTypeUpdateProgress(userid: userid) { (response, error) in
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

# **startUserTypeUpdate**
```swift
    open class func startUserTypeUpdate(startUpdateUserTypeDto: StartUpdateUserTypeDto? = nil, completion: @escaping (_ data: TaskProgressResponseWrapper?, _ error: Error?) -> Void)
```

Queues an asynchronous job that converts one account to `Guest` or `User` and, in the same job, hands the  rooms and the shared files of that account over to another administrator.  Only `Guest` and `User` are accepted here, because they are the types that cannot own rooms; for any other  type use `PUT api/2.0/people/type/{type}`, which converts immediately and transfers nothing.  The caller needs the permission to add and remove users of the requested type, has to be the portal owner to  convert a DocSpace administrator, and converting to `Guest` also requires the portal to allow inviting guests.  The account being converted has to be active and cannot be the caller, and the recipient - `reassignUserId`,  or the caller when it is omitted - has to be an active room admin or DocSpace admin other than that account.  The conversion does not finish within this call: poll `GET api/2.0/people/type/progress/{userid}` with the  converted user ID until `isCompleted` is true, and cancel it through `PUT api/2.0/people/type/terminate`.  A failure inside the running job is reported in the `error` field of the progress, not as a status code here.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-user-type-update/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startUpdateUserTypeDto** | [**StartUpdateUserTypeDto**](StartUpdateUserTypeDto.md) |  | [optional] 

### Return type

[**TaskProgressResponseWrapper**](TaskProgressResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let startUpdateUserTypeDto = StartUpdateUserTypeDto(type: EmployeeType(), userId: 123, reassignUserId: 123) // StartUpdateUserTypeDto |  (optional)

// Start updating user type
PeopleUserTypeAPIApi.startUserTypeUpdate(startUpdateUserTypeDto: startUpdateUserTypeDto) { (response, error) in
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

# **terminateUserTypeUpdate**
```swift
    open class func terminateUserTypeUpdate(terminateRequestDto: TerminateRequestDto? = nil, completion: @escaping (_ data: TaskProgressResponseWrapper?, _ error: Error?) -> Void)
```

Cancels the user type change queued for the user with the ID specified in the request.  The caller needs the permission to add and remove users.  The operation is idempotent: when nothing is queued for that user it answers 200 with an empty body, and  repeating it on an already cancelled job changes nothing.  Cancelling removes the job from the queue and does not undo the type change or the transfers it has already  made, and a cancelled job cannot be resumed - start a new one through `POST api/2.0/people/type`.  The returned progress reports `status` as `Canceled` and `isCompleted` as true.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-user-type-update/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **terminateRequestDto** | [**TerminateRequestDto**](TerminateRequestDto.md) |  | [optional] 

### Return type

[**TaskProgressResponseWrapper**](TaskProgressResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let terminateRequestDto = TerminateRequestDto(userId: 123) // TerminateRequestDto |  (optional)

// Terminate updating user type
PeopleUserTypeAPIApi.terminateUserTypeUpdate(terminateRequestDto: terminateRequestDto) { (response, error) in
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

# **updateUserType**
```swift
    open class func updateUserType(type: EmployeeType, updateMembersRequestDto: UpdateMembersRequestDto, completion: @escaping (_ data: EmployeeFullArrayWrapper?, _ error: Error?) -> Void)
```

Changes the type of the existing portal users listed in `userIds` to the type given in the route, in one call.  The caller needs the permission to add and remove users of the requested type, cannot change their own type or  the type of the portal owner, and cannot use this operation at all while being a guest; changing somebody to  `Guest` additionally requires the portal to allow inviting guests.  Every listed account has to be visible to the caller and must not be disabled.  The change is applied immediately: each converted user gets a notification email and raises a `UserUpdated`  webhook, and the accounts are processed one by one, so a rejection in the middle leaves the users before it  already converted - re-read them before retrying.  The answer streams the converted users with their detailed information, in the order they were processed.  Converting somebody to a paid type takes a paid seat, so the operation answers 402 when the tariff or the  paid-user quota does not allow one more.  This operation only moves the type and leaves the rooms and the shared files of the account where they are -  to hand them over to another admin in the same step, use `POST api/2.0/people/type` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-type/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | [**EmployeeType**](.md) | The type to convert the listed accounts to, taken from the route: `User`, `Guest`, `RoomAdmin` or  `DocSpaceAdmin`. `RoomAdmin` and `DocSpaceAdmin` take a paid seat. | 
 **updateMembersRequestDto** | [**UpdateMembersRequestDto**](UpdateMembersRequestDto.md) | The accounts to convert. Only `userIds` is read by this operation; `resendAll` belongs to the invitation  operations and is ignored here. | 

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let type = EmployeeType() // EmployeeType | The type to convert the listed accounts to, taken from the route: `User`, `Guest`, `RoomAdmin` or  `DocSpaceAdmin`. `RoomAdmin` and `DocSpaceAdmin` take a paid seat.
let updateMembersRequestDto = UpdateMembersRequestDto(userIds: [123], resendAll: false) // UpdateMembersRequestDto | The accounts to convert. Only `userIds` is read by this operation; `resendAll` belongs to the invitation  operations and is ignored here.

// Change a user type
PeopleUserTypeAPIApi.updateUserType(type: type, updateMembersRequestDto: updateMembersRequestDto) { (response, error) in
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

