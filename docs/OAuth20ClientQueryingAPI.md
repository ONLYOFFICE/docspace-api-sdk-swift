# OAuth20ClientQueryingAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getClient**](OAuth20ClientQueryingAPI.md#getclient) | **GET** /api/2.0/clients/{clientId} | Get client details
[**getClientInfo**](OAuth20ClientQueryingAPI.md#getclientinfo) | **GET** /api/2.0/clients/{clientId}/info | Get detailed client information
[**getClients**](OAuth20ClientQueryingAPI.md#getclients) | **GET** /api/2.0/clients | Get clients
[**getClientsInfo**](OAuth20ClientQueryingAPI.md#getclientsinfo) | **GET** /api/2.0/clients/info | Get detailed information of clients
[**getConsents**](OAuth20ClientQueryingAPI.md#getconsents) | **GET** /api/2.0/clients/consents | Get user consents
[**getPublicClientInfo**](OAuth20ClientQueryingAPI.md#getpublicclientinfo) | **GET** /api/2.0/clients/{clientId}/public/info | Get public client information


# **getClient**
```swift
    open class func getClient(clientId: String, completion: @escaping (_ data: ClientResponse?, _ error: Error?) -> Void)
```

Retrieves detailed information about a specific OAuth2 client including its name, description, redirect URIs, and scopes.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-client/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String** | The client identifier. | 

### Return type

[**ClientResponse**](ClientResponse.md)

### Authorization

[asc_auth_key](../README.md#asc_auth_key)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String | The client identifier.

// Get client details
OAuth20ClientQueryingAPIApi.getClient(clientId: clientId) { (response, error) in
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

# **getClientInfo**
```swift
    open class func getClientInfo(clientId: String, completion: @escaping (_ data: ClientInfoResponse?, _ error: Error?) -> Void)
```

Retrieves the detailed information for a client with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-client-info/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String** | The client identifier. | 

### Return type

[**ClientInfoResponse**](ClientInfoResponse.md)

### Authorization

[asc_auth_key](../README.md#asc_auth_key)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String | The client identifier.

// Get detailed client information
OAuth20ClientQueryingAPIApi.getClientInfo(clientId: clientId) { (response, error) in
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

# **getClients**
```swift
    open class func getClients(limit: Int, lastClientId: String? = nil, lastCreatedOn: Date? = nil, completion: @escaping (_ data: PageableResponse?, _ error: Error?) -> Void)
```

Retrieves a paginated list of OAuth2 clients. The results can be paginated using the 'limit' parameter and the last seen client ID or creation date.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-clients/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Int** | The maximum number of results returned per page. | 
 **lastClientId** | **String** | The ID of the last retrieved client. | [optional] 
 **lastCreatedOn** | **Date** | The creation date of the last retrieved client. | [optional] 

### Return type

[**PageableResponse**](PageableResponse.md)

### Authorization

[asc_auth_key](../README.md#asc_auth_key)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let limit = 987 // Int | The maximum number of results returned per page.
let lastClientId = "lastClientId_example" // String | The ID of the last retrieved client. (optional)
let lastCreatedOn = Date() // Date | The creation date of the last retrieved client. (optional)

// Get clients
OAuth20ClientQueryingAPIApi.getClients(limit: limit, lastClientId: lastClientId, lastCreatedOn: lastCreatedOn) { (response, error) in
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

# **getClientsInfo**
```swift
    open class func getClientsInfo(limit: Int, lastClientId: String? = nil, lastCreatedOn: Date? = nil, completion: @escaping (_ data: PageableResponseClientInfoResponse?, _ error: Error?) -> Void)
```

Retrieves a paginated list of information for all clients.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-clients-info/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Int** | The maximum number of results returned per page. | 
 **lastClientId** | **String** | The identifier of the last retrieved client. | [optional] 
 **lastCreatedOn** | **Date** | The creation date of the last retrieved client. | [optional] 

### Return type

[**PageableResponseClientInfoResponse**](PageableResponseClientInfoResponse.md)

### Authorization

[asc_auth_key](../README.md#asc_auth_key)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let limit = 987 // Int | The maximum number of results returned per page.
let lastClientId = "lastClientId_example" // String | The identifier of the last retrieved client. (optional)
let lastCreatedOn = Date() // Date | The creation date of the last retrieved client. (optional)

// Get detailed information of clients
OAuth20ClientQueryingAPIApi.getClientsInfo(limit: limit, lastClientId: lastClientId, lastCreatedOn: lastCreatedOn) { (response, error) in
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

# **getConsents**
```swift
    open class func getConsents(limit: Int, lastModifiedOn: Date? = nil, completion: @escaping (_ data: PageableModificationResponse?, _ error: Error?) -> Void)
```

Retrieves a paginated list of user consents.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-consents/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Int** | The maximum number of results returned per page. | 
 **lastModifiedOn** | **Date** | The date when the user consent was last modified. | [optional] 

### Return type

[**PageableModificationResponse**](PageableModificationResponse.md)

### Authorization

[asc_auth_key](../README.md#asc_auth_key)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let limit = 987 // Int | The maximum number of results returned per page.
let lastModifiedOn = Date() // Date | The date when the user consent was last modified. (optional)

// Get user consents
OAuth20ClientQueryingAPIApi.getConsents(limit: limit, lastModifiedOn: lastModifiedOn) { (response, error) in
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

# **getPublicClientInfo**
```swift
    open class func getPublicClientInfo(clientId: String, completion: @escaping (_ data: ClientInfoResponse?, _ error: Error?) -> Void)
```

Returns the public information for a client with the ID secified din the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-public-client-info/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String** | The client identifier. | 

### Return type

[**ClientInfoResponse**](ClientInfoResponse.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String | The client identifier.

// Get public client information
OAuth20ClientQueryingAPIApi.getPublicClientInfo(clientId: clientId) { (response, error) in
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

