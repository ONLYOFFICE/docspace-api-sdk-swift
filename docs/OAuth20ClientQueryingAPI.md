# OAuth20ClientQueryingAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getClient**](OAuth20ClientQueryingAPI.md#getclient) | **GET** /api/2.0/oauth2/clients/{clientId} | Get client details
[**getClientInfo**](OAuth20ClientQueryingAPI.md#getclientinfo) | **GET** /api/2.0/oauth2/clients/{clientId}/info | Get client info
[**getClients**](OAuth20ClientQueryingAPI.md#getclients) | **GET** /api/2.0/oauth2/clients | List clients
[**getClientsInfo**](OAuth20ClientQueryingAPI.md#getclientsinfo) | **GET** /api/2.0/oauth2/clients/info | List client info
[**getConsents**](OAuth20ClientQueryingAPI.md#getconsents) | **GET** /api/2.0/oauth2/clients/consents | List user consents
[**getPublicClientInfo**](OAuth20ClientQueryingAPI.md#getpublicclientinfo) | **GET** /api/2.0/oauth2/clients/{clientId}/public/info | Get public client info


# **getClient**
```swift
    open class func getClient(clientId: String, completion: @escaping (_ data: ClientResponse?, _ error: Error?) -> Void)
```

Returns the whole stored record of one client: its name and description, its secret, scopes, redirect URIs, allowed origins, logout redirect URIs and audit fields. An administrator sees any client of the tenant, a plain user only the clients they created, and a guest none of them. Whatever the caller may not see is reported as 404 rather than 403, so absence and lack of access are deliberately indistinguishable, and an identifier that is not a valid client ID is reported the same way. The response is a single object, not a collection.

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

Retrieves the detailed information for a client with the ID specified in the request. It returns the consent-facing subset of the client - name, description, logo, the website, terms and policy URLs, authentication methods and scopes - and deliberately omits the secret, the redirect URIs and the allowed origins, which is what makes it safe to render on a consent screen. An administrator sees any client of the tenant, a plain user only the clients they created, and a guest none of them. A client the caller may not see is reported as 404, exactly like an unknown one.

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

// Get client info
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
    open class func getClients(limit: Int? = nil, lastClientId: String? = nil, lastCreatedOn: Date? = nil, completion: @escaping (_ data: PageableClientResponse?, _ error: Error?) -> Void)
```

Returns one page of the tenant's clients, newest first, each in the same full form as the single-client read. An administrator sees every client of the tenant, a plain user only the clients they created. Paging is keyset-based rather than offset-based: limit sets the page size, and last_client_id and last_created_on are carried over from the previous page to ask for the next one. The limit defaults to 30 and has to lie between 1 and 50; a value outside that range, or a last_created_on that cannot be parsed as a date, is rejected with 400.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-clients/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Int** | How many entries to return, between 1 and 50. Defaults to 30 when omitted. | [optional] [default to 30]
 **lastClientId** | **String** | ID of the last retrieved client | [optional] 
 **lastCreatedOn** | **Date** | Date of the last retrieved client | [optional] 

### Return type

[**PageableClientResponse**](PageableClientResponse.md)

### Authorization

[x-signature](../README.md#x-signature)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let limit = 987 // Int | How many entries to return, between 1 and 50. Defaults to 30 when omitted. (optional) (default to 30)
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
    open class func getClientsInfo(limit: Int, lastClientId: String? = nil, lastCreatedOn: Date? = nil, completion: @escaping (_ data: PageableClientInfoResponse?, _ error: Error?) -> Void)
```

Retrieves a paginated list of information for all clients, each in the same consent-facing form as the single-client info read. An administrator sees every client of the tenant, a plain user only the clients they created. Paging is keyset-based: limit sets the page size, and last_client_id and last_created_on are carried over from the previous page. Unlike the full client listing, limit has no default here - it has to be supplied on every call and has to lie between 1 and 50, and a missing or out-of-range value is rejected with 400.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-clients-info/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Int** | How many entries to return, between 1 and 50. It has no default and has to be sent on every call. | 
 **lastClientId** | **String** | ID of the last retrieved client | [optional] 
 **lastCreatedOn** | **Date** | Date of the last retrieved client | [optional] 

### Return type

[**PageableClientInfoResponse**](PageableClientInfoResponse.md)

### Authorization

[x-signature](../README.md#x-signature)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let limit = 987 // Int | How many entries to return, between 1 and 50. It has no default and has to be sent on every call.
let lastClientId = "lastClientId_example" // String | ID of the last retrieved client (optional)
let lastCreatedOn = Date() // Date | Date of the last retrieved client (optional)

// List client info
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

Retrieves a paginated list of user consents: the clients the calling user has authorized, each with the scopes granted, the moment the consent was last changed and the client's consent-facing details. It always reports the caller's own consents and nothing else - there is no role check on this endpoint, so guests may call it too, and no parameter widens it to another user. The consents are read from the authorization service over gRPC, so an authorization service that cannot be reached surfaces as 503. Paging is keyset-based on last_modified_on, and limit has no default: it has to be supplied on every call and has to lie between 1 and 50.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-consents/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Int** | How many entries to return, between 1 and 50. It has no default and has to be sent on every call. | 
 **lastModifiedOn** | **Date** | Date of the last retrieved consent | [optional] 

### Return type

[**PageableModificationResponse**](PageableModificationResponse.md)

### Authorization

[x-signature](../README.md#x-signature)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let limit = 987 // Int | How many entries to return, between 1 and 50. It has no default and has to be sent on every call.
let lastModifiedOn = Date() // Date | Date of the last retrieved consent (optional)

// List user consents
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

Returns the same consent-facing client information as the signed read, but without requiring a portal signature. It is meant for a login or consent page that has to render the client before the user is known, so it resolves the client by ID alone: there is no authentication, no tenant scoping and no creator check, and any caller who knows a client ID can read that client's public details. It still exposes no secret, no redirect URIs and no allowed origins. Being unauthenticated it is rate-limited on a separate, tighter budget than the signed endpoints. An unknown client ID, and an identifier that is not a client ID at all, are both reported as 404.

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

// Get public client info
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

