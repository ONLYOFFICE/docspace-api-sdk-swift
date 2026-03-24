# SecurityAuditTrailDataAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAuditTrailReport**](SecurityAuditTrailDataAPI.md#createaudittrailreport) | **POST** /api/2.0/security/audit/events/report | Generate the audit trail report
[**getAuditEventsByFilter**](SecurityAuditTrailDataAPI.md#getauditeventsbyfilter) | **GET** /api/2.0/security/audit/events/filter | Get filtered audit trail data
[**getAuditSettings**](SecurityAuditTrailDataAPI.md#getauditsettings) | **GET** /api/2.0/security/audit/settings/lifetime | Get the audit trail settings
[**getAuditTrailMappers**](SecurityAuditTrailDataAPI.md#getaudittrailmappers) | **GET** /api/2.0/security/audit/mappers | Get audit trail mappers
[**getAuditTrailTypes**](SecurityAuditTrailDataAPI.md#getaudittrailtypes) | **GET** /api/2.0/security/audit/types | Get audit trail types
[**getLastAuditEvents**](SecurityAuditTrailDataAPI.md#getlastauditevents) | **GET** /api/2.0/security/audit/events/last | Get audit trail data
[**setAuditSettings**](SecurityAuditTrailDataAPI.md#setauditsettings) | **POST** /api/2.0/security/audit/settings/lifetime | Set the audit trail settings


# **createAuditTrailReport**
```swift
    open class func createAuditTrailReport(completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Generates the audit trail report.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-audit-trail-report/).

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


// Generate the audit trail report
SecurityAuditTrailDataAPIApi.createAuditTrailReport() { (response, error) in
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

# **getAuditEventsByFilter**
```swift
    open class func getAuditEventsByFilter(userId: UUID? = nil, moduleType: LocationType? = nil, actionType: ActionType? = nil, action: MessageAction? = nil, entryType: EntryType? = nil, target: String? = nil, from: ApiDateTime? = nil, to: ApiDateTime? = nil, count: Int? = nil, startIndex: Int? = nil, completion: @escaping (_ data: AuditEventArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of the audit events by the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-events-by-filter/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **UUID** | The ID of the user who triggered the audit event. | [optional] 
 **moduleType** | [**LocationType**](.md) | The location where the audit event occurred. | [optional] 
 **actionType** | [**ActionType**](.md) | The type of action performed in the audit event (e.g., Create, Update, Delete). | [optional] 
 **action** | [**MessageAction**](.md) | The specific action that occurred within the audit event. | [optional] 
 **entryType** | [**EntryType**](.md) | The type of audit entry (e.g., Folder, User, File). | [optional] 
 **target** | **String** | The target object affected by the audit event (e.g., document ID, user account). | [optional] 
 **from** | [**ApiDateTime**](.md) | The starting date and time for filtering audit events. | [optional] 
 **to** | [**ApiDateTime**](.md) | The ending date and time for filtering audit events. | [optional] 
 **count** | **Int** | The maximum number of audit event records to retrieve. | [optional] 
 **startIndex** | **Int** | The index of the first audit event record to retrieve in a paged query. | [optional] 

### Return type

[**AuditEventArrayWrapper**](AuditEventArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userId = 987 // UUID | The ID of the user who triggered the audit event. (optional)
let moduleType = LocationType() // LocationType | The location where the audit event occurred. (optional)
let actionType = ActionType() // ActionType | The type of action performed in the audit event (e.g., Create, Update, Delete). (optional)
let action = MessageAction() // MessageAction | The specific action that occurred within the audit event. (optional)
let entryType = EntryType() // EntryType | The type of audit entry (e.g., Folder, User, File). (optional)
let target = "target_example" // String | The target object affected by the audit event (e.g., document ID, user account). (optional)
let from = ApiDateTime(utcTime: Date(), timeZoneOffset: "timeZoneOffset_example") // ApiDateTime | The starting date and time for filtering audit events. (optional)
let to = ApiDateTime(utcTime: Date(), timeZoneOffset: "timeZoneOffset_example") // ApiDateTime | The ending date and time for filtering audit events. (optional)
let count = 987 // Int | The maximum number of audit event records to retrieve. (optional)
let startIndex = 987 // Int | The index of the first audit event record to retrieve in a paged query. (optional)

// Get filtered audit trail data
SecurityAuditTrailDataAPIApi.getAuditEventsByFilter(userId: userId, moduleType: moduleType, actionType: actionType, action: action, entryType: entryType, target: target, from: from, to: to, count: count, startIndex: startIndex) { (response, error) in
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

# **getAuditSettings**
```swift
    open class func getAuditSettings(completion: @escaping (_ data: TenantAuditSettingsWrapper?, _ error: Error?) -> Void)
```

Returns the audit trail settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**TenantAuditSettingsWrapper**](TenantAuditSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the audit trail settings
SecurityAuditTrailDataAPIApi.getAuditSettings() { (response, error) in
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

# **getAuditTrailMappers**
```swift
    open class func getAuditTrailMappers(productType: ProductType? = nil, moduleType: LocationType? = nil, completion: @escaping (_ data: ObjectWrapper?, _ error: Error?) -> Void)
```

Returns the mappers for the audit trail types.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-trail-mappers/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productType** | [**ProductType**](.md) | The type of product related to the audit trail. | [optional] 
 **moduleType** | [**LocationType**](.md) | The location associated with the audit trail. | [optional] 

### Return type

[**ObjectWrapper**](ObjectWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productType = ProductType() // ProductType | The type of product related to the audit trail. (optional)
let moduleType = LocationType() // LocationType | The location associated with the audit trail. (optional)

// Get audit trail mappers
SecurityAuditTrailDataAPIApi.getAuditTrailMappers(productType: productType, moduleType: moduleType) { (response, error) in
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

# **getAuditTrailTypes**
```swift
    open class func getAuditTrailTypes(completion: @escaping (_ data: ObjectWrapper?, _ error: Error?) -> Void)
```

Returns all the available audit trail types.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-trail-types/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**ObjectWrapper**](ObjectWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get audit trail types
SecurityAuditTrailDataAPIApi.getAuditTrailTypes() { (response, error) in
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

# **getLastAuditEvents**
```swift
    open class func getLastAuditEvents(completion: @escaping (_ data: AuditEventArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of the latest changes (creation, modification, deletion, etc.) made by users to the entities on the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-last-audit-events/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**AuditEventArrayWrapper**](AuditEventArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get audit trail data
SecurityAuditTrailDataAPIApi.getLastAuditEvents() { (response, error) in
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

# **setAuditSettings**
```swift
    open class func setAuditSettings(tenantAuditSettingsWrapper: TenantAuditSettingsWrapper? = nil, completion: @escaping (_ data: TenantAuditSettingsWrapper?, _ error: Error?) -> Void)
```

Sets the audit trail settings for the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-audit-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantAuditSettingsWrapper** | [**TenantAuditSettingsWrapper**](TenantAuditSettingsWrapper.md) |  | [optional] 

### Return type

[**TenantAuditSettingsWrapper**](TenantAuditSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tenantAuditSettingsWrapper = TenantAuditSettingsWrapper(settings: TenantAuditSettings(loginHistoryLifeTime: 123, auditTrailLifeTime: 123, lastModified: Date())) // TenantAuditSettingsWrapper |  (optional)

// Set the audit trail settings
SecurityAuditTrailDataAPIApi.setAuditSettings(tenantAuditSettingsWrapper: tenantAuditSettingsWrapper) { (response, error) in
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

