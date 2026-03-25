# SettingsCommonSettingsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**closeAdminHelper**](SettingsCommonSettingsAPI.md#closeadminhelper) | **PUT** /api/2.0/settings/closeadminhelper | Close the admin helper
[**completeWizard**](SettingsCommonSettingsAPI.md#completewizard) | **PUT** /api/2.0/settings/wizard/complete | Complete the Wizard settings
[**configureDeepLink**](SettingsCommonSettingsAPI.md#configuredeeplink) | **POST** /api/2.0/settings/deeplink | Configure the deep link settings
[**deletePortalColorTheme**](SettingsCommonSettingsAPI.md#deleteportalcolortheme) | **DELETE** /api/2.0/settings/colortheme | Delete a color theme
[**getDeepLinkSettings**](SettingsCommonSettingsAPI.md#getdeeplinksettings) | **GET** /api/2.0/settings/deeplink | Get the deep link settings
[**getPaymentSettings**](SettingsCommonSettingsAPI.md#getpaymentsettings) | **GET** /api/2.0/settings/payment | Get the payment settings
[**getPortalColorTheme**](SettingsCommonSettingsAPI.md#getportalcolortheme) | **GET** /api/2.0/settings/colortheme | Get a color theme
[**getPortalHostname**](SettingsCommonSettingsAPI.md#getportalhostname) | **GET** /api/2.0/settings/machine | Get hostname
[**getPortalLogo**](SettingsCommonSettingsAPI.md#getportallogo) | **GET** /api/2.0/settings/logo | Get a portal logo
[**getPortalSettings**](SettingsCommonSettingsAPI.md#getportalsettings) | **GET** /api/2.0/settings | Get the portal settings
[**getSocketSettings**](SettingsCommonSettingsAPI.md#getsocketsettings) | **GET** /api/2.0/settings/socket | Get the socket settings
[**getSupportedCultures**](SettingsCommonSettingsAPI.md#getsupportedcultures) | **GET** /api/2.0/settings/cultures | Get supported languages
[**getTenantAiAccessSettings**](SettingsCommonSettingsAPI.md#gettenantaiaccesssettings) | **GET** /api/2.0/settings/ai-access | Get the AI access settings for the portal
[**getTenantUserInvitationSettings**](SettingsCommonSettingsAPI.md#gettenantuserinvitationsettings) | **GET** /api/2.0/settings/invitationsettings | Get the user invitation settings
[**getTimeZones**](SettingsCommonSettingsAPI.md#gettimezones) | **GET** /api/2.0/settings/timezones | Get time zones
[**saveDefaultFolder**](SettingsCommonSettingsAPI.md#savedefaultfolder) | **PUT** /api/2.0/settings/defaultfolder | Set the default folder
[**saveDnsSettings**](SettingsCommonSettingsAPI.md#savednssettings) | **PUT** /api/2.0/settings/dns | Save the DNS settings
[**saveMailDomainSettings**](SettingsCommonSettingsAPI.md#savemaildomainsettings) | **POST** /api/2.0/settings/maildomainsettings | Save the mail domain settings
[**savePortalColorTheme**](SettingsCommonSettingsAPI.md#saveportalcolortheme) | **PUT** /api/2.0/settings/colortheme | Save a color theme
[**setTenantAiAccessSettings**](SettingsCommonSettingsAPI.md#settenantaiaccesssettings) | **POST** /api/2.0/settings/ai-access | Set the AI access for the portal
[**updateEmailActivationSettings**](SettingsCommonSettingsAPI.md#updateemailactivationsettings) | **PUT** /api/2.0/settings/emailactivation | Update the email activation settings
[**updateInvitationSettings**](SettingsCommonSettingsAPI.md#updateinvitationsettings) | **PUT** /api/2.0/settings/invitationsettings | Update user invitation settings


# **closeAdminHelper**
```swift
    open class func closeAdminHelper(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Closes the administrator helper notification.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/close-admin-helper/).

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


// Close the admin helper
SettingsCommonSettingsAPIApi.closeAdminHelper() { (response, error) in
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **completeWizard**
```swift
    open class func completeWizard(wizardRequestsDto: WizardRequestsDto? = nil, completion: @escaping (_ data: WizardSettingsWrapper?, _ error: Error?) -> Void)
```

Completes the Wizard settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/complete-wizard/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wizardRequestsDto** | [**WizardRequestsDto**](WizardRequestsDto.md) |  | [optional] 

### Return type

[**WizardSettingsWrapper**](WizardSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let wizardRequestsDto = WizardRequestsDto(email: "email_example", passwordHash: "passwordHash_example", lng: "lng_example", timeZone: "timeZone_example", amiId: "amiId_example", subscribeFromSite: true) // WizardRequestsDto |  (optional)

// Complete the Wizard settings
SettingsCommonSettingsAPIApi.completeWizard(wizardRequestsDto: wizardRequestsDto) { (response, error) in
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

# **configureDeepLink**
```swift
    open class func configureDeepLink(deepLinkConfigurationRequestsDto: DeepLinkConfigurationRequestsDto? = nil, completion: @escaping (_ data: TenantDeepLinkSettingsWrapper?, _ error: Error?) -> Void)
```

Saves the deep link configuration settings for the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/configure-deep-link/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deepLinkConfigurationRequestsDto** | [**DeepLinkConfigurationRequestsDto**](DeepLinkConfigurationRequestsDto.md) |  | [optional] 

### Return type

[**TenantDeepLinkSettingsWrapper**](TenantDeepLinkSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let deepLinkConfigurationRequestsDto = DeepLinkConfigurationRequestsDto(deepLinkSettings: TenantDeepLinkSettings(handlingMode: DeepLinkHandlingMode(), lastModified: Date())) // DeepLinkConfigurationRequestsDto |  (optional)

// Configure the deep link settings
SettingsCommonSettingsAPIApi.configureDeepLink(deepLinkConfigurationRequestsDto: deepLinkConfigurationRequestsDto) { (response, error) in
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

# **deletePortalColorTheme**
```swift
    open class func deletePortalColorTheme(id: Int, completion: @escaping (_ data: CustomColorThemesSettingsWrapper?, _ error: Error?) -> Void)
```

Deletes the portal color theme with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-portal-color-theme/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The ID of the portal theme to delete. | 

### Return type

[**CustomColorThemesSettingsWrapper**](CustomColorThemesSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | The ID of the portal theme to delete.

// Delete a color theme
SettingsCommonSettingsAPIApi.deletePortalColorTheme(id: id) { (response, error) in
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

# **getDeepLinkSettings**
```swift
    open class func getDeepLinkSettings(completion: @escaping (_ data: TenantDeepLinkSettingsWrapper?, _ error: Error?) -> Void)
```

Returns the deep link settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-deep-link-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**TenantDeepLinkSettingsWrapper**](TenantDeepLinkSettingsWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the deep link settings
SettingsCommonSettingsAPIApi.getDeepLinkSettings() { (response, error) in
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

# **getPaymentSettings**
```swift
    open class func getPaymentSettings(completion: @escaping (_ data: PaymentSettingsWrapper?, _ error: Error?) -> Void)
```

Returns the portal payment settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**PaymentSettingsWrapper**](PaymentSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the payment settings
SettingsCommonSettingsAPIApi.getPaymentSettings() { (response, error) in
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

# **getPortalColorTheme**
```swift
    open class func getPortalColorTheme(completion: @escaping (_ data: CustomColorThemesSettingsWrapper?, _ error: Error?) -> Void)
```

Returns the portal color theme.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-color-theme/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**CustomColorThemesSettingsWrapper**](CustomColorThemesSettingsWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get a color theme
SettingsCommonSettingsAPIApi.getPortalColorTheme() { (response, error) in
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

# **getPortalHostname**
```swift
    open class func getPortalHostname(completion: @escaping (_ data: ObjectWrapper?, _ error: Error?) -> Void)
```

Returns the portal hostname.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-hostname/).

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


// Get hostname
SettingsCommonSettingsAPIApi.getPortalHostname() { (response, error) in
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

# **getPortalLogo**
```swift
    open class func getPortalLogo(completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Returns the portal logo image URL.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-logo/).

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


// Get a portal logo
SettingsCommonSettingsAPIApi.getPortalLogo() { (response, error) in
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

# **getPortalSettings**
```swift
    open class func getPortalSettings(withpassword: Bool? = nil, completion: @escaping (_ data: SettingsWrapper?, _ error: Error?) -> Void)
```

Returns a list of all the available portal settings with the current values for each parameter.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **withpassword** | **Bool** | Specifies whether to include the password hashing configuration in the response. | [optional] 

### Return type

[**SettingsWrapper**](SettingsWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let withpassword = true // Bool | Specifies whether to include the password hashing configuration in the response. (optional)

// Get the portal settings
SettingsCommonSettingsAPIApi.getPortalSettings(withpassword: withpassword) { (response, error) in
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

# **getSocketSettings**
```swift
    open class func getSocketSettings(completion: @escaping (_ data: ObjectWrapper?, _ error: Error?) -> Void)
```

Returns the socket settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-socket-settings/).

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


// Get the socket settings
SettingsCommonSettingsAPIApi.getSocketSettings() { (response, error) in
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

# **getSupportedCultures**
```swift
    open class func getSupportedCultures(completion: @escaping (_ data: STRINGArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of all the available portal languages in the format of a two-letter or four-letter language code (e.g. de, en-US, etc.).

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-supported-cultures/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**STRINGArrayWrapper**](STRINGArrayWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get supported languages
SettingsCommonSettingsAPIApi.getSupportedCultures() { (response, error) in
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

# **getTenantAiAccessSettings**
```swift
    open class func getTenantAiAccessSettings(completion: @escaping (_ data: TenantAiAccessSettingsWrapper?, _ error: Error?) -> Void)
```

Returns the current portal-level AI access settings that control whether all AI functionality  (chat, agents, vectorization) is available for the portal. AI is enabled by default.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-ai-access-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**TenantAiAccessSettingsWrapper**](TenantAiAccessSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the AI access settings for the portal
SettingsCommonSettingsAPIApi.getTenantAiAccessSettings() { (response, error) in
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

# **getTenantUserInvitationSettings**
```swift
    open class func getTenantUserInvitationSettings(completion: @escaping (_ data: TenantUserInvitationSettingsWrapper?, _ error: Error?) -> Void)
```

Returns the portal user invitation settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-user-invitation-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**TenantUserInvitationSettingsWrapper**](TenantUserInvitationSettingsWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the user invitation settings
SettingsCommonSettingsAPIApi.getTenantUserInvitationSettings() { (response, error) in
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

# **getTimeZones**
```swift
    open class func getTimeZones(completion: @escaping (_ data: TimezonesRequestsArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of all the available portal time zones.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-time-zones/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**TimezonesRequestsArrayWrapper**](TimezonesRequestsArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get time zones
SettingsCommonSettingsAPIApi.getTimeZones() { (response, error) in
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

# **saveDefaultFolder**
```swift
    open class func saveDefaultFolder(defaultProductRequestDto: DefaultProductRequestDto? = nil, completion: @escaping (_ data: StudioDefaultPageSettingsWrapper?, _ error: Error?) -> Void)
```

Sets the default folder.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-default-folder/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **defaultProductRequestDto** | [**DefaultProductRequestDto**](DefaultProductRequestDto.md) |  | [optional] 

### Return type

[**StudioDefaultPageSettingsWrapper**](StudioDefaultPageSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let defaultProductRequestDto = DefaultProductRequestDto(defaultFolderType: FolderType()) // DefaultProductRequestDto |  (optional)

// Set the default folder
SettingsCommonSettingsAPIApi.saveDefaultFolder(defaultProductRequestDto: defaultProductRequestDto) { (response, error) in
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

# **saveDnsSettings**
```swift
    open class func saveDnsSettings(dnsSettingsRequestsDto: DnsSettingsRequestsDto? = nil, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Saves the DNS settings specified in the request to the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-dns-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dnsSettingsRequestsDto** | [**DnsSettingsRequestsDto**](DnsSettingsRequestsDto.md) |  | [optional] 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let dnsSettingsRequestsDto = DnsSettingsRequestsDto(dnsName: "dnsName_example", enable: true) // DnsSettingsRequestsDto |  (optional)

// Save the DNS settings
SettingsCommonSettingsAPIApi.saveDnsSettings(dnsSettingsRequestsDto: dnsSettingsRequestsDto) { (response, error) in
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

# **saveMailDomainSettings**
```swift
    open class func saveMailDomainSettings(mailDomainSettingsRequestsDto: MailDomainSettingsRequestsDto? = nil, completion: @escaping (_ data: StringWrapper?, _ error: Error?) -> Void)
```

Saves the mail domain settings specified in the request to the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-mail-domain-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mailDomainSettingsRequestsDto** | [**MailDomainSettingsRequestsDto**](MailDomainSettingsRequestsDto.md) |  | [optional] 

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let mailDomainSettingsRequestsDto = MailDomainSettingsRequestsDto(type: TenantTrustedDomainsType(), domains: ["domains_example"], inviteUsersAsVisitors: false) // MailDomainSettingsRequestsDto |  (optional)

// Save the mail domain settings
SettingsCommonSettingsAPIApi.saveMailDomainSettings(mailDomainSettingsRequestsDto: mailDomainSettingsRequestsDto) { (response, error) in
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

# **savePortalColorTheme**
```swift
    open class func savePortalColorTheme(customColorThemesSettingsRequestsDto: CustomColorThemesSettingsRequestsDto? = nil, completion: @escaping (_ data: CustomColorThemesSettingsWrapper?, _ error: Error?) -> Void)
```

Saves the portal color theme specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-portal-color-theme/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customColorThemesSettingsRequestsDto** | [**CustomColorThemesSettingsRequestsDto**](CustomColorThemesSettingsRequestsDto.md) |  | [optional] 

### Return type

[**CustomColorThemesSettingsWrapper**](CustomColorThemesSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let customColorThemesSettingsRequestsDto = CustomColorThemesSettingsRequestsDto(theme: CustomColorThemesSettingsItem(id: 123, name: "name_example", main: CustomColorThemesSettingsColorItem(accent: "accent_example", buttons: "buttons_example"), text: nil), selected: 123) // CustomColorThemesSettingsRequestsDto |  (optional)

// Save a color theme
SettingsCommonSettingsAPIApi.savePortalColorTheme(customColorThemesSettingsRequestsDto: customColorThemesSettingsRequestsDto) { (response, error) in
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

# **setTenantAiAccessSettings**
```swift
    open class func setTenantAiAccessSettings(tenantAiAccessSettingsDto: TenantAiAccessSettingsDto? = nil, completion: @escaping (_ data: TenantAiAccessSettingsWrapper?, _ error: Error?) -> Void)
```

Updates the portal-level AI access settings. When AI is disabled, all AI features are turned off:  the AI Agents folder is hidden from root folder listings, AI status checks immediately return disabled,  and AI chat endpoints become inaccessible. Only users with the DocSpaceAdmin role  (EditPortalSettings permission) can change this setting.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-ai-access-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantAiAccessSettingsDto** | [**TenantAiAccessSettingsDto**](TenantAiAccessSettingsDto.md) |  | [optional] 

### Return type

[**TenantAiAccessSettingsWrapper**](TenantAiAccessSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tenantAiAccessSettingsDto = TenantAiAccessSettingsDto(enabled: false) // TenantAiAccessSettingsDto |  (optional)

// Set the AI access for the portal
SettingsCommonSettingsAPIApi.setTenantAiAccessSettings(tenantAiAccessSettingsDto: tenantAiAccessSettingsDto) { (response, error) in
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

# **updateEmailActivationSettings**
```swift
    open class func updateEmailActivationSettings(emailActivationSettings: EmailActivationSettings? = nil, completion: @escaping (_ data: EmailActivationSettingsWrapper?, _ error: Error?) -> Void)
```

Updates the email activation settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-email-activation-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailActivationSettings** | [**EmailActivationSettings**](EmailActivationSettings.md) |  | [optional] 

### Return type

[**EmailActivationSettingsWrapper**](EmailActivationSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let emailActivationSettings = EmailActivationSettings(show: true, lastModified: Date()) // EmailActivationSettings |  (optional)

// Update the email activation settings
SettingsCommonSettingsAPIApi.updateEmailActivationSettings(emailActivationSettings: emailActivationSettings) { (response, error) in
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

# **updateInvitationSettings**
```swift
    open class func updateInvitationSettings(tenantUserInvitationSettingsRequestDto: TenantUserInvitationSettingsRequestDto? = nil, completion: @escaping (_ data: TenantUserInvitationSettingsWrapper?, _ error: Error?) -> Void)
```

Updates the portal user invitation settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-invitation-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantUserInvitationSettingsRequestDto** | [**TenantUserInvitationSettingsRequestDto**](TenantUserInvitationSettingsRequestDto.md) |  | [optional] 

### Return type

[**TenantUserInvitationSettingsWrapper**](TenantUserInvitationSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tenantUserInvitationSettingsRequestDto = TenantUserInvitationSettingsRequestDto(allowInvitingMembers: true, allowInvitingGuests: false) // TenantUserInvitationSettingsRequestDto |  (optional)

// Update user invitation settings
SettingsCommonSettingsAPIApi.updateInvitationSettings(tenantUserInvitationSettingsRequestDto: tenantUserInvitationSettingsRequestDto) { (response, error) in
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

