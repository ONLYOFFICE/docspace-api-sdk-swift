# OAuth20ClientQueryingAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getClient**](OAuth20ClientQueryingAPI.md#getclient) | **GET** /api/2.0/clients/{clientId} | Get client details
[**getClientInfo**](OAuth20ClientQueryingAPI.md#getclientinfo) | **GET** /api/2.0/clients/{clientId}/info | Retrieves detailed information for a specific client
[**getClients**](OAuth20ClientQueryingAPI.md#getclients) | **GET** /api/2.0/clients | List clients
[**getClientsInfo**](OAuth20ClientQueryingAPI.md#getclientsinfo) | **GET** /api/2.0/clients/info | Retrieves a pageable list of client information
[**getConsents**](OAuth20ClientQueryingAPI.md#getconsents) | **GET** /api/2.0/clients/consents | Retrieves a pageable list of consents
[**getPublicClientInfo**](OAuth20ClientQueryingAPI.md#getpublicclientinfo) | **GET** /api/2.0/clients/{clientId}/public/info | Handles the GET request for public client information


# **getClient**
```swift
    open class func getClient(clientId: String, completion: @escaping (_ data: ClientResponse?, _ error: Error?) -> Void)
```

Retrieves detailed information about a specific OAuth2 client including its name, description, redirect URIs, and scopes.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-client/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String** | ID of the client to retrieve | 

### Return type

[**ClientResponse**](ClientResponse.md)

### Authorization

[x-signature](../README.md#x-signature)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String | ID of the client to retrieve

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
 **clientId** | **String** | ID of the client to retrieve | 

### Return type

[**ClientInfoResponse**](ClientInfoResponse.md)

### Authorization

[x-signature](../README.md#x-signature)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String | ID of the client to retrieve

// Retrieves detailed information for a specific client
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

Retrieves a paginated list of OAuth2 clients. The results can be paginated using the limit parameter and last seen client ID/creation date.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-clients/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Int** | Pagination limit | [default to 30]
 **lastClientId** | **String** | ID of the last retrieved client | [optional] 
 **lastCreatedOn** | **Date** | Date of the last retrieved client | [optional] 

### Return type

[**PageableResponse**](PageableResponse.md)

### Authorization

[x-signature](../README.md#x-signature)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let limit = 987 // Int | Pagination limit (default to 30)
let lastClientId = "lastClientId_example" // String | ID of the last retrieved client (optional)
let lastCreatedOn = Date() // Date | Date of the last retrieved client (optional)

// List clients
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
 **limit** | **Int** | Pagination limit | 
 **lastClientId** | **String** | ID of the last retrieved client | [optional] 
 **lastCreatedOn** | **Date** | Date of the last retrieved client | [optional] 

### Return type

[**PageableResponseClientInfoResponse**](PageableResponseClientInfoResponse.md)

### Authorization

[x-signature](../README.md#x-signature)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let limit = 987 // Int | Pagination limit
let lastClientId = "lastClientId_example" // String | ID of the last retrieved client (optional)
let lastCreatedOn = Date() // Date | Date of the last retrieved client (optional)

// Retrieves a pageable list of client information
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
 **limit** | **Int** | Pagination limit | 
 **lastModifiedOn** | **Date** | Date of the last retrieved consent | [optional] 

### Return type

[**PageableModificationResponse**](PageableModificationResponse.md)

### Authorization

[x-signature](../README.md#x-signature)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let limit = 987 // Int | Pagination limit
let lastModifiedOn = Date() // Date | Date of the last retrieved consent (optional)

// Retrieves a pageable list of consents
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



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-public-client-info/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String** | ID of the client to retrieve | 

### Return type

[**ClientInfoResponse**](ClientInfoResponse.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String | ID of the client to retrieve

// Handles the GET request for public client information
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

