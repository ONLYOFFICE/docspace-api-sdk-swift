# SettingsAuthorizationAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAuthServices**](SettingsAuthorizationAPI.md#getauthservices) | **GET** /api/2.0/settings/authservice | Get the authorization services
[**saveAuthKeys**](SettingsAuthorizationAPI.md#saveauthkeys) | **POST** /api/2.0/settings/authservice | Save the authorization keys
[**testExternalDatabaseConnection**](SettingsAuthorizationAPI.md#testexternaldatabaseconnection) | **POST** /api/2.0/settings/authservice/externaldb/test | Test external database connection


# **getAuthServices**
```swift
    open class func getAuthServices(completion: @escaping (_ data: AuthServiceRequestsArrayWrapper?, _ error: Error?) -> Void)
```

Returns the authorization services.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-auth-services/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**AuthServiceRequestsArrayWrapper**](AuthServiceRequestsArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the authorization services
SettingsAuthorizationAPIApi.getAuthServices() { (response, error) in
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

# **saveAuthKeys**
```swift
    open class func saveAuthKeys(authServiceRequestsDto: AuthServiceRequestsDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Saves the authorization keys.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-auth-keys/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authServiceRequestsDto** | [**AuthServiceRequestsDto**](AuthServiceRequestsDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authServiceRequestsDto = AuthServiceRequestsDto(name: "name_example", title: "title_example", description: "description_example", instruction: "instruction_example", canSet: true, paid: false, props: [AuthKey(name: "name_example", value: "value_example", title: "title_example", type: "type_example", options: ["options_example"], dependsOn: "dependsOn_example", dependsOnValue: "dependsOnValue_example")]) // AuthServiceRequestsDto |  (optional)

// Save the authorization keys
SettingsAuthorizationAPIApi.saveAuthKeys(authServiceRequestsDto: authServiceRequestsDto) { (response, error) in
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

# **testExternalDatabaseConnection**
```swift
    open class func testExternalDatabaseConnection(externalDatabaseSettings: ExternalDatabaseSettings? = nil, completion: @escaping (_ data: ConnectionTestResultWrapper?, _ error: Error?) -> Void)
```

Tests an external database connection with the provided settings without saving them.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/test-external-database-connection/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **externalDatabaseSettings** | [**ExternalDatabaseSettings**](ExternalDatabaseSettings.md) |  | [optional] 

### Return type

[**ConnectionTestResultWrapper**](ConnectionTestResultWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let externalDatabaseSettings = ExternalDatabaseSettings(databaseType: "databaseType_example", databaseTypeEnum: ExternalDatabaseType(), dbHost: "dbHost_example", dbPort: 123, dbName: "dbName_example", dbUser: "dbUser_example", dbPassword: "dbPassword_example", dbSsl: false, sqliteFilePath: "sqliteFilePath_example") // ExternalDatabaseSettings |  (optional)

// Test external database connection
SettingsAuthorizationAPIApi.testExternalDatabaseConnection(externalDatabaseSettings: externalDatabaseSettings) { (response, error) in
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

