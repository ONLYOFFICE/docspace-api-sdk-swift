# SettingsIPRestrictionsAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getIpRestrictions**](SettingsIPRestrictionsAPI.md#getiprestrictions) | **GET** /api/2.0/settings/iprestrictions | Get IP restrictions
[**readIpRestrictionsSettings**](SettingsIPRestrictionsAPI.md#readiprestrictionssettings) | **GET** /api/2.0/settings/iprestrictions/settings | Get IP restriction settings
[**saveIpRestrictions**](SettingsIPRestrictionsAPI.md#saveiprestrictions) | **PUT** /api/2.0/settings/iprestrictions | Save IP restrictions
[**updateIpRestrictionsSettings**](SettingsIPRestrictionsAPI.md#updateiprestrictionssettings) | **PUT** /api/2.0/settings/iprestrictions/settings | Update IP restriction settings


# **getIpRestrictions**
```swift
    open class func getIpRestrictions(completion: @escaping (_ data: IPRestrictionArrayWrapper?, _ error: Error?) -> Void)
```

Returns the IP restriction list of the current portal - the addresses allowed to reach it, each with its `id`  and the `forAdmin` flag that narrows the entry to DocSpace administrators. The caller needs the  portal-settings right of a DocSpace administrator, otherwise the call is refused. The call is read-only and  honours `If-None-Match`: send back the `ETag` of an earlier answer and an unchanged list comes back as an  empty not-modified response rather than a body. The list has no defined order and is empty on a portal where  nobody has configured restrictions - and an empty list blocks nobody, whatever the enforcement flag says.  Whether the restrictions are enforced at all is not part of this answer: read that flag with  `GET api/2.0/settings/iprestrictions/settings`. The entries listed here apply to every user of the portal  except its owner. Replace the whole list with `PUT api/2.0/settings/iprestrictions`; single entries cannot be  added or deleted, and that update takes plain addresses rather than the IDs returned here.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-ip-restrictions/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**IPRestrictionArrayWrapper**](IPRestrictionArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get IP restrictions
SettingsIPRestrictionsAPIApi.getIpRestrictions() { (response, error) in
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

# **readIpRestrictionsSettings**
```swift
    open class func readIpRestrictionsSettings(completion: @escaping (_ data: IPRestrictionsSettingsWrapper?, _ error: Error?) -> Void)
```

Reports whether the IP restrictions of the current portal are enforced, as the `enable` flag together with the  `lastModified` stamp of the setting. The caller needs the portal-settings right of a DocSpace administrator,  otherwise the call is refused. The call is read-only and honours `If-Modified-Since`: send back the  `Last-Modified` value of an earlier answer and an unchanged setting comes back as an empty not-modified  response rather than a body. The flag is `false` on a portal nobody has configured. A `true` flag on its own  blocks nothing: enforcement also needs at least one stored address, which this answer does not carry - read  the addresses with `GET api/2.0/settings/iprestrictions` - and it is skipped entirely on an installation whose  configuration hides the IP security section. Even when enforced, the portal owner and the installation's own  networks are let through. Change the flag with `PUT api/2.0/settings/iprestrictions/settings`, which replaces  the address list in the same call, so resend the addresses in force when all that changes is the flag.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/read-ip-restrictions-settings/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**IPRestrictionsSettingsWrapper**](IPRestrictionsSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get IP restriction settings
SettingsIPRestrictionsAPIApi.readIpRestrictionsSettings() { (response, error) in
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

# **saveIpRestrictions**
```swift
    open class func saveIpRestrictions(ipRestrictionsDto: IpRestrictionsDto? = nil, completion: @escaping (_ data: IpRestrictionsWrapper?, _ error: Error?) -> Void)
```

Replaces the whole IP restriction list of the current portal with the addresses from the request and stores  the enforcement flag in the same call. The caller needs the portal-settings right of a DocSpace administrator,  otherwise the call is refused. Every entry must be a single IPv4 or IPv6 address: `from-to` ranges and CIDR  blocks are matched by the portal but cannot be stored here and are rejected as an invalid request, as is  `enable: true` with an empty list. An omitted `enable` follows the list - on when addresses are sent, off when  the list is empty. The replacement is written in one transaction, applies to new requests without a restart  and is recorded in the audit trail; entries not repeated in the body are deleted, and sending the same body  twice leaves the portal as it is. Enforcement spares the portal owner and the installation's own networks  only, so a list without the caller's own address locks the remaining administrators out. The answer echoes the  request rather than the stored rows - no entry IDs, and `enable` exactly as sent, empty when it was omitted -  so read the result with `GET api/2.0/settings/iprestrictions`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-ip-restrictions/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ipRestrictionsDto** | [**IpRestrictionsDto**](IpRestrictionsDto.md) |  | [optional] 

### Return type

[**IpRestrictionsWrapper**](IpRestrictionsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ipRestrictionsDto = IpRestrictionsDto(ipRestrictions: [IpRestrictionBase(ip: "ip_example", forAdmin: false)], enable: true) // IpRestrictionsDto |  (optional)

// Save IP restrictions
SettingsIPRestrictionsAPIApi.saveIpRestrictions(ipRestrictionsDto: ipRestrictionsDto) { (response, error) in
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

# **updateIpRestrictionsSettings**
```swift
    open class func updateIpRestrictionsSettings(ipRestrictionsDto: IpRestrictionsDto? = nil, completion: @escaping (_ data: IpRestrictionsWrapper?, _ error: Error?) -> Void)
```

Stores the enforcement flag of the IP restrictions of the current portal together with the whole address list,  replacing the addresses saved before; this operation and `PUT api/2.0/settings/iprestrictions` are two routes  to the same handler and behave identically. The caller needs the portal-settings right of a DocSpace  administrator, otherwise the call is refused. Every entry must be a single IPv4 or IPv6 address: `from-to`  ranges and CIDR blocks are matched by the portal but cannot be stored here and are rejected as an invalid  request, as is `enable: true` with an empty list. An omitted `enable` follows the list - on when addresses are  sent, off when the list is empty - so the flag cannot be moved without resending the addresses that stay in  force. The new state applies to new requests without a restart, is recorded in the audit trail, and sending  the same body twice changes nothing further. Enforcement spares the portal owner and the installation's own  networks only, so a list without the caller's own address locks the remaining administrators out. The answer  echoes the request, so read the stored entries and their IDs with `GET api/2.0/settings/iprestrictions`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-ip-restrictions-settings/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ipRestrictionsDto** | [**IpRestrictionsDto**](IpRestrictionsDto.md) |  | [optional] 

### Return type

[**IpRestrictionsWrapper**](IpRestrictionsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ipRestrictionsDto = IpRestrictionsDto(ipRestrictions: [IpRestrictionBase(ip: "ip_example", forAdmin: false)], enable: true) // IpRestrictionsDto |  (optional)

// Update IP restriction settings
SettingsIPRestrictionsAPIApi.updateIpRestrictionsSettings(ipRestrictionsDto: ipRestrictionsDto) { (response, error) in
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

