# SecurityLoginHistoryAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLoginHistoryReport**](SecurityLoginHistoryAPI.md#createloginhistoryreport) | **POST** /api/2.0/security/audit/login/report | Generate the login history report
[**getLastLoginEvents**](SecurityLoginHistoryAPI.md#getlastloginevents) | **GET** /api/2.0/security/audit/login/last | Get login history
[**getLoginEventsByFilter**](SecurityLoginHistoryAPI.md#getlogineventsbyfilter) | **GET** /api/2.0/security/audit/login/filter | Get filtered login events


# **createLoginHistoryReport**
```swift
    open class func createLoginHistoryReport(completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Generates the login history report.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-login-history-report/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Generate the login history report
SecurityLoginHistoryAPIApi.createLoginHistoryReport() { (response, error) in
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

# **getLastLoginEvents**
```swift
    open class func getLastLoginEvents(completion: @escaping (_ data: LoginEventArrayWrapper?, _ error: Error?) -> Void)
```

Returns all the latest user login activity, including successful logins and error logs.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-last-login-events/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**LoginEventArrayWrapper**](LoginEventArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get login history
SecurityLoginHistoryAPIApi.getLastLoginEvents() { (response, error) in
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

# **getLoginEventsByFilter**
```swift
    open class func getLoginEventsByFilter(userId: UUID? = nil, action: MessageAction? = nil, from: ApiDateTime? = nil, to: ApiDateTime? = nil, count: Int? = nil, startIndex: Int? = nil, completion: @escaping (_ data: LoginEventArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of the login events by the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-login-events-by-filter/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **UUID** | The ID of the user whose login events are being queried. | [optional] 
 **action** | [**MessageAction**](.md) | The login-related action to filter events by. | [optional] 
 **from** | [**ApiDateTime**](.md) | The starting date and time for filtering login events. | [optional] 
 **to** | [**ApiDateTime**](.md) | The ending date and time for filtering login events. | [optional] 
 **count** | **Int** | The number of login events to retrieve in the query. | [optional] 
 **startIndex** | **Int** | The starting index for fetching a subset of login events from the query results. | [optional] 

### Return type

[**LoginEventArrayWrapper**](LoginEventArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userId = 987 // UUID | The ID of the user whose login events are being queried. (optional)
let action = MessageAction() // MessageAction | The login-related action to filter events by. (optional)
let from = ApiDateTime(utcTime: Date(), timeZoneOffset: "timeZoneOffset_example") // ApiDateTime | The starting date and time for filtering login events. (optional)
let to = ApiDateTime(utcTime: Date(), timeZoneOffset: "timeZoneOffset_example") // ApiDateTime | The ending date and time for filtering login events. (optional)
let count = 987 // Int | The number of login events to retrieve in the query. (optional)
let startIndex = 987 // Int | The starting index for fetching a subset of login events from the query results. (optional)

// Get filtered login events
SecurityLoginHistoryAPIApi.getLoginEventsByFilter(userId: userId, action: action, from: from, to: to, count: count, startIndex: startIndex) { (response, error) in
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

