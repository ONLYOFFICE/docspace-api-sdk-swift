# SettingsWebhooksAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWebhook**](SettingsWebhooksAPI.md#createwebhook) | **POST** /api/2.0/settings/webhook | Create a webhook
[**enableWebhook**](SettingsWebhooksAPI.md#enablewebhook) | **PUT** /api/2.0/settings/webhook/enable | Enable a webhook
[**getTenantWebhooks**](SettingsWebhooksAPI.md#gettenantwebhooks) | **GET** /api/2.0/settings/webhook | Get webhooks
[**getWebhookTriggers**](SettingsWebhooksAPI.md#getwebhooktriggers) | **GET** /api/2.0/settings/webhook/triggers | Get webhook triggers
[**getWebhooksLogs**](SettingsWebhooksAPI.md#getwebhookslogs) | **GET** /api/2.0/settings/webhooks/log | Get webhook logs
[**removeWebhook**](SettingsWebhooksAPI.md#removewebhook) | **DELETE** /api/2.0/settings/webhook/{id} | Remove a webhook
[**retryWebhook**](SettingsWebhooksAPI.md#retrywebhook) | **PUT** /api/2.0/settings/webhook/{id}/retry | Retry a webhook
[**retryWebhooks**](SettingsWebhooksAPI.md#retrywebhooks) | **PUT** /api/2.0/settings/webhook/retry | Retry webhooks
[**updateWebhook**](SettingsWebhooksAPI.md#updatewebhook) | **PUT** /api/2.0/settings/webhook | Update a webhook


# **createWebhook**
```swift
    open class func createWebhook(createWebhooksConfigRequestsDto: CreateWebhooksConfigRequestsDto? = nil, completion: @escaping (_ data: WebhooksConfigWrapper?, _ error: Error?) -> Void)
```

Creates a new tenant webhook with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-webhook/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createWebhooksConfigRequestsDto** | [**CreateWebhooksConfigRequestsDto**](CreateWebhooksConfigRequestsDto.md) |  | [optional] 

### Return type

[**WebhooksConfigWrapper**](WebhooksConfigWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createWebhooksConfigRequestsDto = CreateWebhooksConfigRequestsDto(name: "name_example", uri: "uri_example", secretKey: "secretKey_example", enabled: true, ssl: true, triggers: WebhookTrigger(), targetId: "targetId_example") // CreateWebhooksConfigRequestsDto |  (optional)

// Create a webhook
SettingsWebhooksAPIApi.createWebhook(createWebhooksConfigRequestsDto: createWebhooksConfigRequestsDto) { (response, error) in
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

# **enableWebhook**
```swift
    open class func enableWebhook(updateWebhooksConfigRequestsDto: UpdateWebhooksConfigRequestsDto? = nil, completion: @escaping (_ data: WebhooksConfigWrapper?, _ error: Error?) -> Void)
```

Enables or disables a tenant webhook with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/enable-webhook/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateWebhooksConfigRequestsDto** | [**UpdateWebhooksConfigRequestsDto**](UpdateWebhooksConfigRequestsDto.md) |  | [optional] 

### Return type

[**WebhooksConfigWrapper**](WebhooksConfigWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateWebhooksConfigRequestsDto = UpdateWebhooksConfigRequestsDto(name: "name_example", uri: "uri_example", secretKey: "secretKey_example", enabled: true, ssl: true, triggers: WebhookTrigger(), targetId: "targetId_example", id: 123) // UpdateWebhooksConfigRequestsDto |  (optional)

// Enable a webhook
SettingsWebhooksAPIApi.enableWebhook(updateWebhooksConfigRequestsDto: updateWebhooksConfigRequestsDto) { (response, error) in
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

# **getTenantWebhooks**
```swift
    open class func getTenantWebhooks(completion: @escaping (_ data: WebhooksConfigWithStatusArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of the tenant webhooks.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-webhooks/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhooksConfigWithStatusArrayWrapper**](WebhooksConfigWithStatusArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get webhooks
SettingsWebhooksAPIApi.getTenantWebhooks() { (response, error) in
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

# **getWebhookTriggers**
```swift
    open class func getWebhookTriggers(completion: @escaping (_ data: GetWebhookTriggers200Response?, _ error: Error?) -> Void)
```

Returns a list of triggers for a webhook.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-webhook-triggers/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetWebhookTriggers200Response**](GetWebhookTriggers200Response.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get webhook triggers
SettingsWebhooksAPIApi.getWebhookTriggers() { (response, error) in
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

# **getWebhooksLogs**
```swift
    open class func getWebhooksLogs(deliveryFrom: Date? = nil, deliveryTo: Date? = nil, hookUri: String? = nil, configId: Int? = nil, eventId: Int? = nil, groupStatus: WebhookGroupStatus? = nil, userId: UUID? = nil, trigger: WebhookTrigger? = nil, count: Int? = nil, startIndex: Int? = nil, completion: @escaping (_ data: WebhooksLogArrayWrapper?, _ error: Error?) -> Void)
```

Returns the logs of the webhook activities.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-webhooks-logs/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryFrom** | **Date** | The delivery start time for filtering webhook logs. | [optional] 
 **deliveryTo** | **Date** | The delivery end time for filtering webhook logs. | [optional] 
 **hookUri** | **String** | The destination URL where webhooks are delivered. | [optional] 
 **configId** | **Int** | The webhook configuration identifier. | [optional] 
 **eventId** | **Int** | The unique identifier of the event that triggered the webhook. | [optional] 
 **groupStatus** | [**WebhookGroupStatus**](.md) | The status of the webhook delivery group. | [optional] 
 **userId** | **UUID** | The identifier of the user associated with the webhook event. | [optional] 
 **trigger** | [**WebhookTrigger**](.md) | The type of event that triggered the webhook. | [optional] 
 **count** | **Int** | The maximum number of webhook log records to return in the query response. | [optional] 
 **startIndex** | **Int** | Specifies the starting index for retrieving webhook logs.  Used for pagination in the webhook delivery log queries. | [optional] 

### Return type

[**WebhooksLogArrayWrapper**](WebhooksLogArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let deliveryFrom = Date() // Date | The delivery start time for filtering webhook logs. (optional)
let deliveryTo = Date() // Date | The delivery end time for filtering webhook logs. (optional)
let hookUri = "hookUri_example" // String | The destination URL where webhooks are delivered. (optional)
let configId = 987 // Int | The webhook configuration identifier. (optional)
let eventId = 987 // Int | The unique identifier of the event that triggered the webhook. (optional)
let groupStatus = WebhookGroupStatus() // WebhookGroupStatus | The status of the webhook delivery group. (optional)
let userId = 987 // UUID | The identifier of the user associated with the webhook event. (optional)
let trigger = WebhookTrigger() // WebhookTrigger | The type of event that triggered the webhook. (optional)
let count = 987 // Int | The maximum number of webhook log records to return in the query response. (optional)
let startIndex = 987 // Int | Specifies the starting index for retrieving webhook logs.  Used for pagination in the webhook delivery log queries. (optional)

// Get webhook logs
SettingsWebhooksAPIApi.getWebhooksLogs(deliveryFrom: deliveryFrom, deliveryTo: deliveryTo, hookUri: hookUri, configId: configId, eventId: eventId, groupStatus: groupStatus, userId: userId, trigger: trigger, count: count, startIndex: startIndex) { (response, error) in
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

# **removeWebhook**
```swift
    open class func removeWebhook(id: Int, completion: @escaping (_ data: WebhooksConfigWrapper?, _ error: Error?) -> Void)
```

Removes a tenant webhook with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-webhook/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The ID extracted from the route parameters. | 

### Return type

[**WebhooksConfigWrapper**](WebhooksConfigWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The ID extracted from the route parameters.

// Remove a webhook
SettingsWebhooksAPIApi.removeWebhook(id: id) { (response, error) in
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

# **retryWebhook**
```swift
    open class func retryWebhook(id: Int, completion: @escaping (_ data: WebhooksLogWrapper?, _ error: Error?) -> Void)
```

Retries a webhook with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/retry-webhook/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The ID extracted from the route parameters. | 

### Return type

[**WebhooksLogWrapper**](WebhooksLogWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The ID extracted from the route parameters.

// Retry a webhook
SettingsWebhooksAPIApi.retryWebhook(id: id) { (response, error) in
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

# **retryWebhooks**
```swift
    open class func retryWebhooks(webhookRetryRequestsDto: WebhookRetryRequestsDto? = nil, completion: @escaping (_ data: WebhooksLogArrayWrapper?, _ error: Error?) -> Void)
```

Retries all the webhooks with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/retry-webhooks/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookRetryRequestsDto** | [**WebhookRetryRequestsDto**](WebhookRetryRequestsDto.md) |  | [optional] 

### Return type

[**WebhooksLogArrayWrapper**](WebhooksLogArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let webhookRetryRequestsDto = WebhookRetryRequestsDto(ids: [123]) // WebhookRetryRequestsDto |  (optional)

// Retry webhooks
SettingsWebhooksAPIApi.retryWebhooks(webhookRetryRequestsDto: webhookRetryRequestsDto) { (response, error) in
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

# **updateWebhook**
```swift
    open class func updateWebhook(updateWebhooksConfigRequestsDto: UpdateWebhooksConfigRequestsDto? = nil, completion: @escaping (_ data: WebhooksConfigWrapper?, _ error: Error?) -> Void)
```

Updates a tenant webhook with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-webhook/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateWebhooksConfigRequestsDto** | [**UpdateWebhooksConfigRequestsDto**](UpdateWebhooksConfigRequestsDto.md) |  | [optional] 

### Return type

[**WebhooksConfigWrapper**](WebhooksConfigWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateWebhooksConfigRequestsDto = UpdateWebhooksConfigRequestsDto(name: "name_example", uri: "uri_example", secretKey: "secretKey_example", enabled: true, ssl: true, triggers: WebhookTrigger(), targetId: "targetId_example", id: 123) // UpdateWebhooksConfigRequestsDto |  (optional)

// Update a webhook
SettingsWebhooksAPIApi.updateWebhook(updateWebhooksConfigRequestsDto: updateWebhooksConfigRequestsDto) { (response, error) in
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

