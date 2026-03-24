# SettingsRebrandingAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAdditionalWhiteLabelSettings**](SettingsRebrandingAPI.md#deleteadditionalwhitelabelsettings) | **DELETE** /api/2.0/settings/rebranding/additional | Delete the additional white label settings
[**deleteCompanyWhiteLabelSettings**](SettingsRebrandingAPI.md#deletecompanywhitelabelsettings) | **DELETE** /api/2.0/settings/rebranding/company | Delete the company white label settings
[**getAdditionalWhiteLabelSettings**](SettingsRebrandingAPI.md#getadditionalwhitelabelsettings) | **GET** /api/2.0/settings/rebranding/additional | Get the additional white label settings
[**getCompanyWhiteLabelSettings**](SettingsRebrandingAPI.md#getcompanywhitelabelsettings) | **GET** /api/2.0/settings/rebranding/company | Get the company white label settings
[**getEnableWhitelabel**](SettingsRebrandingAPI.md#getenablewhitelabel) | **GET** /api/2.0/settings/enablewhitelabel | Check the white label availability
[**getIsDefaultWhiteLabelLogoText**](SettingsRebrandingAPI.md#getisdefaultwhitelabellogotext) | **GET** /api/2.0/settings/whitelabel/logotext/isdefault | Check the default white label logo text
[**getIsDefaultWhiteLabelLogos**](SettingsRebrandingAPI.md#getisdefaultwhitelabellogos) | **GET** /api/2.0/settings/whitelabel/logos/isdefault | Check the default white label logos
[**getLicensorData**](SettingsRebrandingAPI.md#getlicensordata) | **GET** /api/2.0/settings/companywhitelabel | Get the licensor data
[**getWhiteLabelLogoText**](SettingsRebrandingAPI.md#getwhitelabellogotext) | **GET** /api/2.0/settings/whitelabel/logotext | Get the white label logo text
[**getWhiteLabelLogos**](SettingsRebrandingAPI.md#getwhitelabellogos) | **GET** /api/2.0/settings/whitelabel/logos | Get the white label logos
[**restoreWhiteLabelLogoText**](SettingsRebrandingAPI.md#restorewhitelabellogotext) | **PUT** /api/2.0/settings/whitelabel/logotext/restore | Restore the white label logo text
[**restoreWhiteLabelLogos**](SettingsRebrandingAPI.md#restorewhitelabellogos) | **PUT** /api/2.0/settings/whitelabel/logos/restore | Restore the white label logos
[**saveAdditionalWhiteLabelSettings**](SettingsRebrandingAPI.md#saveadditionalwhitelabelsettings) | **POST** /api/2.0/settings/rebranding/additional | Save the additional white label settings
[**saveCompanyWhiteLabelSettings**](SettingsRebrandingAPI.md#savecompanywhitelabelsettings) | **POST** /api/2.0/settings/rebranding/company | Save the company white label settings
[**saveWhiteLabelLogoText**](SettingsRebrandingAPI.md#savewhitelabellogotext) | **POST** /api/2.0/settings/whitelabel/logotext/save | Save the white label logo text settings
[**saveWhiteLabelSettings**](SettingsRebrandingAPI.md#savewhitelabelsettings) | **POST** /api/2.0/settings/whitelabel/logos/save | Save the white label logos
[**saveWhiteLabelSettingsFromFiles**](SettingsRebrandingAPI.md#savewhitelabelsettingsfromfiles) | **POST** /api/2.0/settings/whitelabel/logos/savefromfiles | Save the white label logos from files


# **deleteAdditionalWhiteLabelSettings**
```swift
    open class func deleteAdditionalWhiteLabelSettings(completion: @escaping (_ data: AdditionalWhiteLabelSettingsWrapper?, _ error: Error?) -> Void)
```

Deletes the additional white label settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-additional-white-label-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**AdditionalWhiteLabelSettingsWrapper**](AdditionalWhiteLabelSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Delete the additional white label settings
SettingsRebrandingAPIApi.deleteAdditionalWhiteLabelSettings() { (response, error) in
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

# **deleteCompanyWhiteLabelSettings**
```swift
    open class func deleteCompanyWhiteLabelSettings(completion: @escaping (_ data: CompanyWhiteLabelSettingsWrapper?, _ error: Error?) -> Void)
```

Deletes the company white label settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-company-white-label-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**CompanyWhiteLabelSettingsWrapper**](CompanyWhiteLabelSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Delete the company white label settings
SettingsRebrandingAPIApi.deleteCompanyWhiteLabelSettings() { (response, error) in
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

# **getAdditionalWhiteLabelSettings**
```swift
    open class func getAdditionalWhiteLabelSettings(completion: @escaping (_ data: AdditionalWhiteLabelSettingsWrapper?, _ error: Error?) -> Void)
```

Returns the additional white label settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-additional-white-label-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**AdditionalWhiteLabelSettingsWrapper**](AdditionalWhiteLabelSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the additional white label settings
SettingsRebrandingAPIApi.getAdditionalWhiteLabelSettings() { (response, error) in
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

# **getCompanyWhiteLabelSettings**
```swift
    open class func getCompanyWhiteLabelSettings(completion: @escaping (_ data: CompanyWhiteLabelSettingsWrapper?, _ error: Error?) -> Void)
```

Returns the company white label settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-company-white-label-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**CompanyWhiteLabelSettingsWrapper**](CompanyWhiteLabelSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the company white label settings
SettingsRebrandingAPIApi.getCompanyWhiteLabelSettings() { (response, error) in
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

# **getEnableWhitelabel**
```swift
    open class func getEnableWhitelabel(completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Checks if the white label is enabled or not.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-enable-whitelabel/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Check the white label availability
SettingsRebrandingAPIApi.getEnableWhitelabel() { (response, error) in
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

# **getIsDefaultWhiteLabelLogoText**
```swift
    open class func getIsDefaultWhiteLabelLogoText(isDark: Bool? = nil, isDefault: Bool? = nil, completion: @escaping (_ data: IsDefaultWhiteLabelLogosWrapper?, _ error: Error?) -> Void)
```

Specifies if the white label logo text is default or not.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-default-white-label-logo-text/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **isDark** | **Bool** | Specifies if the white label logo is for the dark theme or not. | [optional] 
 **isDefault** | **Bool** | Specifies if the logo is for a default tenant or not. | [optional] 

### Return type

[**IsDefaultWhiteLabelLogosWrapper**](IsDefaultWhiteLabelLogosWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let isDark = true // Bool | Specifies if the white label logo is for the dark theme or not. (optional)
let isDefault = true // Bool | Specifies if the logo is for a default tenant or not. (optional)

// Check the default white label logo text
SettingsRebrandingAPIApi.getIsDefaultWhiteLabelLogoText(isDark: isDark, isDefault: isDefault) { (response, error) in
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

# **getIsDefaultWhiteLabelLogos**
```swift
    open class func getIsDefaultWhiteLabelLogos(isDark: Bool? = nil, isDefault: Bool? = nil, completion: @escaping (_ data: IsDefaultWhiteLabelLogosArrayWrapper?, _ error: Error?) -> Void)
```

Specifies if the white label logos are default or not.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-default-white-label-logos/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **isDark** | **Bool** | Specifies if the white label logo is for the dark theme or not. | [optional] 
 **isDefault** | **Bool** | Specifies if the logo is for a default tenant or not. | [optional] 

### Return type

[**IsDefaultWhiteLabelLogosArrayWrapper**](IsDefaultWhiteLabelLogosArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let isDark = true // Bool | Specifies if the white label logo is for the dark theme or not. (optional)
let isDefault = true // Bool | Specifies if the logo is for a default tenant or not. (optional)

// Check the default white label logos
SettingsRebrandingAPIApi.getIsDefaultWhiteLabelLogos(isDark: isDark, isDefault: isDefault) { (response, error) in
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

# **getLicensorData**
```swift
    open class func getLicensorData(completion: @escaping (_ data: CompanyWhiteLabelSettingsArrayWrapper?, _ error: Error?) -> Void)
```

Returns the licensor data.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-licensor-data/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**CompanyWhiteLabelSettingsArrayWrapper**](CompanyWhiteLabelSettingsArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the licensor data
SettingsRebrandingAPIApi.getLicensorData() { (response, error) in
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

# **getWhiteLabelLogoText**
```swift
    open class func getWhiteLabelLogoText(isDark: Bool? = nil, isDefault: Bool? = nil, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Returns the white label logo text.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-white-label-logo-text/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **isDark** | **Bool** | Specifies if the white label logo is for the dark theme or not. | [optional] 
 **isDefault** | **Bool** | Specifies if the logo is for a default tenant or not. | [optional] 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let isDark = true // Bool | Specifies if the white label logo is for the dark theme or not. (optional)
let isDefault = true // Bool | Specifies if the logo is for a default tenant or not. (optional)

// Get the white label logo text
SettingsRebrandingAPIApi.getWhiteLabelLogoText(isDark: isDark, isDefault: isDefault) { (response, error) in
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

# **getWhiteLabelLogos**
```swift
    open class func getWhiteLabelLogos(isDark: Bool? = nil, isDefault: Bool? = nil, completion: @escaping (_ data: WhiteLabelItemArrayWrapper?, _ error: Error?) -> Void)
```

Returns the white label logos.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-white-label-logos/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **isDark** | **Bool** | Specifies if the white label logo is for the dark theme or not. | [optional] 
 **isDefault** | **Bool** | Specifies if the logo is for a default tenant or not. | [optional] 

### Return type

[**WhiteLabelItemArrayWrapper**](WhiteLabelItemArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let isDark = true // Bool | Specifies if the white label logo is for the dark theme or not. (optional)
let isDefault = true // Bool | Specifies if the logo is for a default tenant or not. (optional)

// Get the white label logos
SettingsRebrandingAPIApi.getWhiteLabelLogos(isDark: isDark, isDefault: isDefault) { (response, error) in
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

# **restoreWhiteLabelLogoText**
```swift
    open class func restoreWhiteLabelLogoText(isDark: Bool? = nil, isDefault: Bool? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Restores the white label logo text.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-white-label-logo-text/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **isDark** | **Bool** | Specifies if the white label logo is for the dark theme or not. | [optional] 
 **isDefault** | **Bool** | Specifies if the logo is for a default tenant or not. | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let isDark = true // Bool | Specifies if the white label logo is for the dark theme or not. (optional)
let isDefault = true // Bool | Specifies if the logo is for a default tenant or not. (optional)

// Restore the white label logo text
SettingsRebrandingAPIApi.restoreWhiteLabelLogoText(isDark: isDark, isDefault: isDefault) { (response, error) in
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

# **restoreWhiteLabelLogos**
```swift
    open class func restoreWhiteLabelLogos(isDark: Bool? = nil, isDefault: Bool? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Restores the white label logos.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-white-label-logos/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **isDark** | **Bool** | Specifies if the white label logo is for the dark theme or not. | [optional] 
 **isDefault** | **Bool** | Specifies if the logo is for a default tenant or not. | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let isDark = true // Bool | Specifies if the white label logo is for the dark theme or not. (optional)
let isDefault = true // Bool | Specifies if the logo is for a default tenant or not. (optional)

// Restore the white label logos
SettingsRebrandingAPIApi.restoreWhiteLabelLogos(isDark: isDark, isDefault: isDefault) { (response, error) in
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

# **saveAdditionalWhiteLabelSettings**
```swift
    open class func saveAdditionalWhiteLabelSettings(additionalWhiteLabelSettingsWrapper: AdditionalWhiteLabelSettingsWrapper? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Saves the additional white label settings specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-additional-white-label-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **additionalWhiteLabelSettingsWrapper** | [**AdditionalWhiteLabelSettingsWrapper**](AdditionalWhiteLabelSettingsWrapper.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let additionalWhiteLabelSettingsWrapper = AdditionalWhiteLabelSettingsWrapper(settings: AdditionalWhiteLabelSettings(startDocsEnabled: true, helpCenterEnabled: true, feedbackAndSupportEnabled: true, userForumEnabled: true, videoGuidesEnabled: true, licenseAgreementsEnabled: true, lastModified: Date())) // AdditionalWhiteLabelSettingsWrapper |  (optional)

// Save the additional white label settings
SettingsRebrandingAPIApi.saveAdditionalWhiteLabelSettings(additionalWhiteLabelSettingsWrapper: additionalWhiteLabelSettingsWrapper) { (response, error) in
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

# **saveCompanyWhiteLabelSettings**
```swift
    open class func saveCompanyWhiteLabelSettings(companyWhiteLabelSettingsWrapper: CompanyWhiteLabelSettingsWrapper? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Saves the company white label settings specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-company-white-label-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyWhiteLabelSettingsWrapper** | [**CompanyWhiteLabelSettingsWrapper**](CompanyWhiteLabelSettingsWrapper.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let companyWhiteLabelSettingsWrapper = CompanyWhiteLabelSettingsWrapper(settings: CompanyWhiteLabelSettings(companyName: "companyName_example", site: "site_example", email: "email_example", address: "address_example", phone: "phone_example", isLicensor: true, hideAbout: true, lastModified: Date())) // CompanyWhiteLabelSettingsWrapper |  (optional)

// Save the company white label settings
SettingsRebrandingAPIApi.saveCompanyWhiteLabelSettings(companyWhiteLabelSettingsWrapper: companyWhiteLabelSettingsWrapper) { (response, error) in
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

# **saveWhiteLabelLogoText**
```swift
    open class func saveWhiteLabelLogoText(isDark: Bool? = nil, isDefault: Bool? = nil, whiteLabelRequestsDto: WhiteLabelRequestsDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Saves the white label logo text specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-white-label-logo-text/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **isDark** | **Bool** | Specifies if the white label logo is for the dark theme or not. | [optional] 
 **isDefault** | **Bool** | Specifies if the logo is for a default tenant or not. | [optional] 
 **whiteLabelRequestsDto** | [**WhiteLabelRequestsDto**](WhiteLabelRequestsDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let isDark = true // Bool | Specifies if the white label logo is for the dark theme or not. (optional)
let isDefault = true // Bool | Specifies if the logo is for a default tenant or not. (optional)
let whiteLabelRequestsDto = WhiteLabelRequestsDto(logoText: "logoText_example", logo: [ItemKeyValuePairStringLogoRequestsDto(key: "key_example", value: LogoRequestsDto(light: "light_example", dark: "dark_example"))]) // WhiteLabelRequestsDto |  (optional)

// Save the white label logo text settings
SettingsRebrandingAPIApi.saveWhiteLabelLogoText(isDark: isDark, isDefault: isDefault, whiteLabelRequestsDto: whiteLabelRequestsDto) { (response, error) in
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

# **saveWhiteLabelSettings**
```swift
    open class func saveWhiteLabelSettings(isDark: Bool? = nil, isDefault: Bool? = nil, whiteLabelRequestsDto: WhiteLabelRequestsDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Saves the white label logos specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-white-label-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **isDark** | **Bool** | Specifies if the white label logo is for the dark theme or not. | [optional] 
 **isDefault** | **Bool** | Specifies if the logo is for a default tenant or not. | [optional] 
 **whiteLabelRequestsDto** | [**WhiteLabelRequestsDto**](WhiteLabelRequestsDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let isDark = true // Bool | Specifies if the white label logo is for the dark theme or not. (optional)
let isDefault = true // Bool | Specifies if the logo is for a default tenant or not. (optional)
let whiteLabelRequestsDto = WhiteLabelRequestsDto(logoText: "logoText_example", logo: [ItemKeyValuePairStringLogoRequestsDto(key: "key_example", value: LogoRequestsDto(light: "light_example", dark: "dark_example"))]) // WhiteLabelRequestsDto |  (optional)

// Save the white label logos
SettingsRebrandingAPIApi.saveWhiteLabelSettings(isDark: isDark, isDefault: isDefault, whiteLabelRequestsDto: whiteLabelRequestsDto) { (response, error) in
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

# **saveWhiteLabelSettingsFromFiles**
```swift
    open class func saveWhiteLabelSettingsFromFiles(isDark: Bool? = nil, isDefault: Bool? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Saves the white label logos from files.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-white-label-settings-from-files/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **isDark** | **Bool** | Specifies if the white label logo is for the dark theme or not. | [optional] 
 **isDefault** | **Bool** | Specifies if the logo is for a default tenant or not. | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let isDark = true // Bool | Specifies if the white label logo is for the dark theme or not. (optional)
let isDefault = true // Bool | Specifies if the logo is for a default tenant or not. (optional)

// Save the white label logos from files
SettingsRebrandingAPIApi.saveWhiteLabelSettingsFromFiles(isDark: isDark, isDefault: isDefault) { (response, error) in
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

