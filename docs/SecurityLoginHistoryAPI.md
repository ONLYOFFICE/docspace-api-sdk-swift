# SecurityLoginHistoryAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLoginHistoryReport**](SecurityLoginHistoryAPI.md#createloginhistoryreport) | **POST** /api/2.0/security/audit/login/report | Start login history report
[**getLastLoginEvents**](SecurityLoginHistoryAPI.md#getlastloginevents) | **GET** /api/2.0/security/audit/login/last | Get recent login events
[**getLoginEventsByFilter**](SecurityLoginHistoryAPI.md#getlogineventsbyfilter) | **GET** /api/2.0/security/audit/login/filter | Get filtered login events
[**getLoginHistoryReport**](SecurityLoginHistoryAPI.md#getloginhistoryreport) | **GET** /api/2.0/security/audit/login/report | Get login history report status
[**terminateLoginHistoryReport**](SecurityLoginHistoryAPI.md#terminateloginhistoryreport) | **DELETE** /api/2.0/security/audit/login/report | Terminate login history report


# **createLoginHistoryReport**
```swift
    open class func createLoginHistoryReport(format: AuditReportFormat? = nil, from: Date? = nil, to: Date? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DocumentBuilderTaskWrapper
```

Queues a report of the portal's login history and returns the state of the background job that builds it. By  default the report covers the period reaching from now back by the login history lifetime that  `GET api/2.0/security/audit/settings/lifetime` reports; `from` and `to` narrow it, a `from` older than that  window is moved up to its start, a `to` in the future is moved back to now, and a period that ends before it  starts is answered with 400. No other filter of `GET api/2.0/security/audit/login/filter` applies here. The  caller needs the portal-settings right of a DocSpace administrator plus the audit option of the portal's pricing  plan, otherwise the call is answered with 402. The file is not ready when the response arrives - poll  `GET api/2.0/security/audit/login/report` until `isCompleted` is true, then take `resultFileUrl`, and treat a  non-empty `error` as a failed build. The finished file is saved to the caller's My documents section, as an XLSX  workbook by default or as CSV when `format=Csv`, and `resultFileId` identifies it in either format;  `resultFileUrl` opens it in the editor, except for a CSV file too large for the editor, which it downloads  instead. An XLSX report keeps only the most recent events, at most 200,000 by default and fewer when the events  are long, and its header says how many were left out; `format=Csv` exports every event of the period. One job  runs per caller and kind: calling again while the previous one is still building returns that job instead of  starting a second, and `DELETE api/2.0/security/audit/login/report` cancels it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-login-history-report/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | [**AuditReportFormat**](.md) | The format the report file is written in: a spreadsheet workbook, which is the default, or a comma-separated  text file. | [optional] 
 **from** | **Date** | The earliest moment a reported event may have been recorded at, read as a UTC instant. | [optional] 
 **to** | **Date** | The latest moment a reported event may have been recorded at, read as a UTC instant in the same way as `from`. | [optional] 

### Return type

[**DocumentBuilderTaskWrapper**](DocumentBuilderTaskWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let format = AuditReportFormat() // AuditReportFormat | The format the report file is written in: a spreadsheet workbook, which is the default, or a comma-separated  text file. (optional)
let from = Date() // Date | The earliest moment a reported event may have been recorded at, read as a UTC instant. (optional)
let to = Date() // Date | The latest moment a reported event may have been recorded at, read as a UTC instant in the same way as `from`. (optional)

// Start login history report
do {
    let response = try await SecurityLoginHistoryAPIApi.createLoginHistoryReport(format: format, from: from, to: to)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLastLoginEvents**
```swift
    open class func getLastLoginEvents(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> LoginEventArrayWrapper
```

Returns the twenty most recent login events of the whole portal - successful sign-ins, sign-outs and failed  attempts alike - as the short summary a settings page shows before anyone asks for the full history. The  caller needs the portal-settings right of a DocSpace administrator, and in a cloud installation the login  history and audit trail section must be enabled for the portal, otherwise the call is answered with 402. The  operation is read-only and takes no parameters: the number of events is fixed at twenty, nothing can be  filtered, and events are ordered newest first. `date` is given in the portal time zone, `actionText` is the  readable sentence describing the event with every substituted value shortened to fifty characters here, and  `country` and `city` are resolved from the IP address and stay empty when it cannot be located. An empty list  means the portal has recorded no login events yet. Use `GET api/2.0/security/audit/login/filter` to filter by  user, action or period and to page through the whole history.

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


// Get recent login events
do {
    let response = try await SecurityLoginHistoryAPIApi.getLastLoginEvents()
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLoginEventsByFilter**
```swift
    open class func getLoginEventsByFilter(userId: UUID? = nil, action: MessageAction? = nil, from: Date? = nil, to: Date? = nil, count: Int? = nil, startIndex: Int? = nil, fields: String? = nil, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> LoginEventArrayWrapper
```

Returns the portal's login events that match the filters in the query - by user, by login action and by period  - and is the operation behind the login history page. The caller needs the portal-settings right of a DocSpace  administrator plus the audit option of the portal's pricing plan; when that option is missing the filters are  silently ignored and the answer is the same twenty most recent events that  `GET api/2.0/security/audit/login/last` returns, and when the login history and audit trail section is  disabled altogether the call is answered with 402. Omit a filter to match everything. `from` and `to` are read  as UTC instants while `date` comes back in the portal time zone, `count` defaults to 100 and cannot exceed it,  `startIndex` skips matching events from the newest end, and the filters are applied before the page window, so  a full page means there may be more matching events beyond it. The operation is read-only; take the values  accepted by `action` from `GET api/2.0/security/audit/types`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-login-events-by-filter/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **UUID** | The user whose sign-in attempts are kept, given by portal user ID. Leave it at the empty GUID to keep the  events of every user. | [optional] 
 **action** | [**MessageAction**](.md) | The sign-in action recorded, spelled as `GET api/2.0/security/audit/types` lists it under `actions` - a  successful login, a failed one, a logout. The default value keeps every action. | [optional] 
 **from** | **Date** | The earliest moment an event may have been recorded at, read as a UTC instant. The `date` of the events that  come back is in the portal time zone instead, so the two do not line up on a portal that is not on UTC. | [optional] 
 **to** | **Date** | The latest moment an event may have been recorded at, read as a UTC instant in the same way as `from`. | [optional] 
 **count** | **Int** | How many events one page may hold. The maximum is also the default, so a client that wants shorter pages has  to ask for them. | [optional] 
 **startIndex** | **Int** | How many events to skip before the page begins, counting from the newest. It is applied to the log before  the filters, so a page can hold fewer events than `count` while older matches still exist. | [optional] 
 **fields** | **String** | A comma-separated list of the response fields to return. | [optional]

### Return type

[**LoginEventArrayWrapper**](LoginEventArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userId = 987 // UUID | The user whose sign-in attempts are kept, given by portal user ID. Leave it at the empty GUID to keep the  events of every user. (optional)
let action = MessageAction() // MessageAction | The sign-in action recorded, spelled as `GET api/2.0/security/audit/types` lists it under `actions` - a  successful login, a failed one, a logout. The default value keeps every action. (optional)
let from = Date() // Date | The earliest moment an event may have been recorded at, read as a UTC instant. The `date` of the events that  come back is in the portal time zone instead, so the two do not line up on a portal that is not on UTC. (optional)
let to = Date() // Date | The latest moment an event may have been recorded at, read as a UTC instant in the same way as `from`. (optional)
let count = 987 // Int | How many events one page may hold. The maximum is also the default, so a client that wants shorter pages has  to ask for them. (optional)
let startIndex = 987 // Int | How many events to skip before the page begins, counting from the newest. It is applied to the log before  the filters, so a page can hold fewer events than `count` while older matches still exist. (optional)

// Get filtered login events
do {
    let response = try await SecurityLoginHistoryAPIApi.getLoginEventsByFilter(userId: userId, action: action, from: from, to: to, count: count, startIndex: startIndex)
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLoginHistoryReport**
```swift
    open class func getLoginHistoryReport(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DocumentBuilderTaskWrapper
```

Returns the state of the login history report the calling user has started, and is the operation to poll after  `POST api/2.0/security/audit/login/report`. The caller needs the portal-settings right of a DocSpace  administrator plus the audit option of the portal's pricing plan, otherwise the call is answered with 402. Jobs  are kept per user and per report kind: this operation never shows another administrator's report, nor the audit  trail report, which has its own status at `GET api/2.0/security/audit/events/report`. The answer is empty when  no report of this kind is known for the caller; otherwise `percentage` grows towards 100, `isCompleted` turns  true when the build has ended, `error` carries the failure message when it ended badly, and `resultFileId`,  `resultFileName` and `resultFileUrl` point at the file saved to the caller's My documents section. The operation  is read-only and safe to poll every few seconds; a finished job is dropped as soon as the next report of this  kind is started.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-login-history-report/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**DocumentBuilderTaskWrapper**](DocumentBuilderTaskWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get login history report status
do {
    let response = try await SecurityLoginHistoryAPIApi.getLoginHistoryReport()
    dump(response)
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **terminateLoginHistoryReport**
```swift
    open class func terminateLoginHistoryReport(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse)
```

Cancels the login history report the calling user has running and drops it from the build queue. The caller  needs the portal-settings right of a DocSpace administrator plus the audit option of the portal's pricing  plan, otherwise the call is answered with 402. Cancellation is handed to the same background service that  builds the report, so a successful answer means the request was accepted rather than that the job has already  stopped: poll `GET api/2.0/security/audit/login/report` to watch it disappear. The operation returns no  content and touches only the caller's own login history report - the audit trail report is cancelled by  `DELETE api/2.0/security/audit/events/report`, and no report of another user can be reached from here. It is  idempotent: cancelling when nothing is running is not an error. A job stopped before it finished writing  leaves nothing in My documents, and a report cancelled by mistake has to be built again with  `POST api/2.0/security/audit/login/report`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-login-history-report/).

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


// Terminate login history report
do {
    try await SecurityLoginHistoryAPIApi.terminateLoginHistoryReport()
} catch {
    print(error)
}
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

