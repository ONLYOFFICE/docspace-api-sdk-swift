# SettingsQuotaAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUserQuotaSettings**](SettingsQuotaAPI.md#getuserquotasettings) | **GET** /api/2.0/settings/userquotasettings | Get the user quota settings
[**saveAiAgentQuotaSettings**](SettingsQuotaAPI.md#saveaiagentquotasettings) | **POST** /api/2.0/settings/aiagentquotasettings | Save the AI Agent quota settings
[**saveRoomQuotaSettings**](SettingsQuotaAPI.md#saveroomquotasettings) | **POST** /api/2.0/settings/roomquotasettings | Save the room quota settings
[**setTenantQuotaSettings**](SettingsQuotaAPI.md#settenantquotasettings) | **PUT** /api/2.0/settings/tenantquotasettings | Save the tenant quota settings


# **getUserQuotaSettings**
```swift
    open class func getUserQuotaSettings(completion: @escaping (_ data: TenantUserQuotaSettingsWrapper?, _ error: Error?) -> Void)
```

Returns the portal's per-user default storage quota: whether it is enabled and, if so, its size in bytes.  Requires Owner or DocSpaceAdmin (the EditPortalSettings permission); every other authenticated role, and an  anonymous caller, is refused. This is a read-only, idempotent call. When `enableQuota` is false, the size  value is not enforced and users get unlimited personal storage regardless of what it holds. The response  supports conditional requests: send the standard If-Modified-Since header with the previous `lastModified`  value, and an unchanged response comes back empty instead of resending the settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-quota-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**TenantUserQuotaSettingsWrapper**](TenantUserQuotaSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the user quota settings
SettingsQuotaAPIApi.getUserQuotaSettings() { (response, error) in
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

# **saveAiAgentQuotaSettings**
```swift
    open class func saveAiAgentQuotaSettings(quotaSettingsRequestsDto: QuotaSettingsRequestsDto? = nil, completion: @escaping (_ data: TenantAiAgentQuotaSettingsWrapper?, _ error: Error?) -> Void)
```

Sets the portal's default storage quota for AI agents, applied as the starting limit for newly created agents.  Requires Owner or DocSpaceAdmin (the EditPortalSettings permission), and on a paid SaaS tenant the portal's  plan must include the statistics feature, or the call is rejected as not covered by the plan. The requested  size cannot exceed the portal's own total storage quota, nor, on a Standalone install with a portal-wide quota  enabled, that quota's size. Disable enforcement by passing `enableQuota=false`; the size is then ignored for  new agents. This is a mutating, idempotent call: sending the same body again leaves the quota unchanged. It  returns the saved settings, not any agent's current usage.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-ai-agent-quota-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotaSettingsRequestsDto** | [**QuotaSettingsRequestsDto**](QuotaSettingsRequestsDto.md) |  | [optional] 

### Return type

[**TenantAiAgentQuotaSettingsWrapper**](TenantAiAgentQuotaSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let quotaSettingsRequestsDto = QuotaSettingsRequestsDto(enableQuota: true, defaultQuota: QuotaSettingsRequestsDto_defaultQuota()) // QuotaSettingsRequestsDto |  (optional)

// Save the AI Agent quota settings
SettingsQuotaAPIApi.saveAiAgentQuotaSettings(quotaSettingsRequestsDto: quotaSettingsRequestsDto) { (response, error) in
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

# **saveRoomQuotaSettings**
```swift
    open class func saveRoomQuotaSettings(quotaSettingsRequestsDto: QuotaSettingsRequestsDto? = nil, completion: @escaping (_ data: TenantRoomQuotaSettingsWrapper?, _ error: Error?) -> Void)
```

Sets the portal's default per-room storage quota, applied to newly created rooms as their starting limit.  Requires Owner or DocSpaceAdmin (the EditPortalSettings permission), and on a paid SaaS tenant the portal's  plan must include the statistics feature, or the call is rejected as not covered by the plan. The requested  size cannot exceed the portal's own total storage quota, nor, on a Standalone install with a portal-wide quota  enabled, that quota's size. Disable enforcement by passing `enableQuota=false`; the size is then ignored for  new rooms. This is a mutating, idempotent call: sending the same body again leaves the quota unchanged. It  returns the saved settings, not the individual rooms' current usage.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-room-quota-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotaSettingsRequestsDto** | [**QuotaSettingsRequestsDto**](QuotaSettingsRequestsDto.md) |  | [optional] 

### Return type

[**TenantRoomQuotaSettingsWrapper**](TenantRoomQuotaSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let quotaSettingsRequestsDto = QuotaSettingsRequestsDto(enableQuota: true, defaultQuota: QuotaSettingsRequestsDto_defaultQuota()) // QuotaSettingsRequestsDto |  (optional)

// Save the room quota settings
SettingsQuotaAPIApi.saveRoomQuotaSettings(quotaSettingsRequestsDto: quotaSettingsRequestsDto) { (response, error) in
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

# **setTenantQuotaSettings**
```swift
    open class func setTenantQuotaSettings(tenantQuotaSettingsRequestsDto: TenantQuotaSettingsRequestsDto? = nil, completion: @escaping (_ data: TenantQuotaSettingsWrapper?, _ error: Error?) -> Void)
```

Sets or removes the storage quota for a given tenant. Available only on a Standalone (self-hosted)  installation; on SaaS the call is always refused. Requires a DocSpace administrator, and the portal's plan  must include the statistics feature or the call is rejected as not covered by the plan. Pass a non-negative  `quota` in bytes to enable the limit for the tenant identified by `tenantId`, or a negative value to remove  any limit. This is a mutating, idempotent call: sending the same body again leaves the quota unchanged. It  returns the saved quota settings for that tenant, not its current usage.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-quota-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantQuotaSettingsRequestsDto** | [**TenantQuotaSettingsRequestsDto**](TenantQuotaSettingsRequestsDto.md) |  | [optional] 

### Return type

[**TenantQuotaSettingsWrapper**](TenantQuotaSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tenantQuotaSettingsRequestsDto = TenantQuotaSettingsRequestsDto(tenantId: 123, quota: 123) // TenantQuotaSettingsRequestsDto |  (optional)

// Save the tenant quota settings
SettingsQuotaAPIApi.setTenantQuotaSettings(tenantQuotaSettingsRequestsDto: tenantQuotaSettingsRequestsDto) { (response, error) in
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

