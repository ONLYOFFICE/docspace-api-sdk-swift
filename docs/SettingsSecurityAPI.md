# SettingsSecurityAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEnabledModules**](SettingsSecurityAPI.md#getenabledmodules) | **GET** /api/2.0/settings/security/modules | Get the enabled modules
[**getIsProductAdministrator**](SettingsSecurityAPI.md#getisproductadministrator) | **GET** /api/2.0/settings/security/administrator | Check a product administrator
[**getPasswordSettings**](SettingsSecurityAPI.md#getpasswordsettings) | **GET** /api/2.0/settings/security/password | Get the password settings
[**getProductAdministrators**](SettingsSecurityAPI.md#getproductadministrators) | **GET** /api/2.0/settings/security/administrator/{productid} | Get the product administrators
[**getWebItemSecurityInfo**](SettingsSecurityAPI.md#getwebitemsecurityinfo) | **GET** /api/2.0/settings/security/{id} | Get the module availability
[**getWebItemSettingsSecurityInfo**](SettingsSecurityAPI.md#getwebitemsettingssecurityinfo) | **GET** /api/2.0/settings/security | Get the security settings
[**setAccessToWebItems**](SettingsSecurityAPI.md#setaccesstowebitems) | **PUT** /api/2.0/settings/security/access | Set the security settings to modules
[**setProductAdministrator**](SettingsSecurityAPI.md#setproductadministrator) | **PUT** /api/2.0/settings/security/administrator | Set a product administrator
[**setWebItemSecurity**](SettingsSecurityAPI.md#setwebitemsecurity) | **PUT** /api/2.0/settings/security | Set the module security settings
[**updatePasswordSettings**](SettingsSecurityAPI.md#updatepasswordsettings) | **PUT** /api/2.0/settings/security/password | Set the password settings


# **getEnabledModules**
```swift
    open class func getEnabledModules(completion: @escaping (_ data: ObjectWrapper?, _ error: Error?) -> Void)
```

Returns a list of all the enabled modules.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-enabled-modules/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**ObjectWrapper**](ObjectWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the enabled modules
SettingsSecurityAPIApi.getEnabledModules() { (response, error) in
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

# **getIsProductAdministrator**
```swift
    open class func getIsProductAdministrator(productid: UUID, userid: UUID, completion: @escaping (_ data: ProductAdministratorWrapper?, _ error: Error?) -> Void)
```

Checks if the selected user is an administrator of a product with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-product-administrator/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productid** | **UUID** | The ID of the product extracted from the query parameters. | 
 **userid** | **UUID** | The user ID extracted from the query parameters. | 

### Return type

[**ProductAdministratorWrapper**](ProductAdministratorWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productid = 987 // UUID | The ID of the product extracted from the query parameters.
let userid = 987 // UUID | The user ID extracted from the query parameters.

// Check a product administrator
SettingsSecurityAPIApi.getIsProductAdministrator(productid: productid, userid: userid) { (response, error) in
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

# **getPasswordSettings**
```swift
    open class func getPasswordSettings(completion: @escaping (_ data: PasswordSettingsWrapper?, _ error: Error?) -> Void)
```

Returns the portal password settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-password-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**PasswordSettingsWrapper**](PasswordSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the password settings
SettingsSecurityAPIApi.getPasswordSettings() { (response, error) in
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

# **getProductAdministrators**
```swift
    open class func getProductAdministrators(productid: UUID, completion: @escaping (_ data: EmployeeArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of all the administrators of a product with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-product-administrators/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productid** | **UUID** | The ID of the product extracted from the route parameters. | 

### Return type

[**EmployeeArrayWrapper**](EmployeeArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productid = 987 // UUID | The ID of the product extracted from the route parameters.

// Get the product administrators
SettingsSecurityAPIApi.getProductAdministrators(productid: productid) { (response, error) in
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

# **getWebItemSecurityInfo**
```swift
    open class func getWebItemSecurityInfo(id: UUID, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Returns the availability of the module with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-item-security-info/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | The ID extracted from the route parameters. | 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | The ID extracted from the route parameters.

// Get the module availability
SettingsSecurityAPIApi.getWebItemSecurityInfo(id: id) { (response, error) in
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

# **getWebItemSettingsSecurityInfo**
```swift
    open class func getWebItemSettingsSecurityInfo(ids: [String]? = nil, completion: @escaping (_ data: SecurityArrayWrapper?, _ error: Error?) -> Void)
```

Returns the security settings for the modules specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-item-settings-security-info/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**[String]**](String.md) | The list of module identifiers for which to retrieve the security settings. | [optional] 

### Return type

[**SecurityArrayWrapper**](SecurityArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ids = ["inner_example"] // [String] | The list of module identifiers for which to retrieve the security settings. (optional)

// Get the security settings
SettingsSecurityAPIApi.getWebItemSettingsSecurityInfo(ids: ids) { (response, error) in
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

# **setAccessToWebItems**
```swift
    open class func setAccessToWebItems(webItemsSecurityRequestsDto: WebItemsSecurityRequestsDto? = nil, completion: @escaping (_ data: SecurityArrayWrapper?, _ error: Error?) -> Void)
```

Sets the security settings to the modules with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-access-to-web-items/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webItemsSecurityRequestsDto** | [**WebItemsSecurityRequestsDto**](WebItemsSecurityRequestsDto.md) |  | [optional] 

### Return type

[**SecurityArrayWrapper**](SecurityArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let webItemsSecurityRequestsDto = WebItemsSecurityRequestsDto(items: [ItemKeyValuePairStringBoolean(key: "key_example", value: false)]) // WebItemsSecurityRequestsDto |  (optional)

// Set the security settings to modules
SettingsSecurityAPIApi.setAccessToWebItems(webItemsSecurityRequestsDto: webItemsSecurityRequestsDto) { (response, error) in
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

# **setProductAdministrator**
```swift
    open class func setProductAdministrator(securityRequestsDto: SecurityRequestsDto? = nil, completion: @escaping (_ data: ProductAdministratorWrapper?, _ error: Error?) -> Void)
```

Sets the selected user as an administrator of a product with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-product-administrator/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **securityRequestsDto** | [**SecurityRequestsDto**](SecurityRequestsDto.md) |  | [optional] 

### Return type

[**ProductAdministratorWrapper**](ProductAdministratorWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let securityRequestsDto = SecurityRequestsDto(productId: 123, userId: 123, administrator: true) // SecurityRequestsDto |  (optional)

// Set a product administrator
SettingsSecurityAPIApi.setProductAdministrator(securityRequestsDto: securityRequestsDto) { (response, error) in
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

# **setWebItemSecurity**
```swift
    open class func setWebItemSecurity(webItemSecurityRequestsDto: WebItemSecurityRequestsDto? = nil, completion: @escaping (_ data: SecurityArrayWrapper?, _ error: Error?) -> Void)
```

Sets the security settings to the module with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-web-item-security/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webItemSecurityRequestsDto** | [**WebItemSecurityRequestsDto**](WebItemSecurityRequestsDto.md) |  | [optional] 

### Return type

[**SecurityArrayWrapper**](SecurityArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let webItemSecurityRequestsDto = WebItemSecurityRequestsDto(id: "id_example", enabled: true, subjects: [123]) // WebItemSecurityRequestsDto |  (optional)

// Set the module security settings
SettingsSecurityAPIApi.setWebItemSecurity(webItemSecurityRequestsDto: webItemSecurityRequestsDto) { (response, error) in
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

# **updatePasswordSettings**
```swift
    open class func updatePasswordSettings(passwordSettingsRequestsDto: PasswordSettingsRequestsDto? = nil, completion: @escaping (_ data: PasswordSettingsWrapper?, _ error: Error?) -> Void)
```

Sets the portal password settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-password-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **passwordSettingsRequestsDto** | [**PasswordSettingsRequestsDto**](PasswordSettingsRequestsDto.md) |  | [optional] 

### Return type

[**PasswordSettingsWrapper**](PasswordSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let passwordSettingsRequestsDto = PasswordSettingsRequestsDto(minLength: 123, upperCase: true, digits: true, specSymbols: true) // PasswordSettingsRequestsDto |  (optional)

// Set the password settings
SettingsSecurityAPIApi.updatePasswordSettings(passwordSettingsRequestsDto: passwordSettingsRequestsDto) { (response, error) in
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

