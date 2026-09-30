# SettingsStorageAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllBackupStorages**](SettingsStorageAPI.md#getallbackupstorages) | **GET** /api/2.0/settings/storage/backup | Get the backup storages
[**getAllCdnStorages**](SettingsStorageAPI.md#getallcdnstorages) | **GET** /api/2.0/settings/storage/cdn | Get the CDN storages
[**getAllStorages**](SettingsStorageAPI.md#getallstorages) | **GET** /api/2.0/settings/storage | Get the portal storages
[**getAmazonS3Regions**](SettingsStorageAPI.md#getamazons3regions) | **GET** /api/2.0/settings/storage/s3/regions | Get the Amazon S3 regions
[**getStorageProgress**](SettingsStorageAPI.md#getstorageprogress) | **GET** /api/2.0/settings/storage/progress | Get the storage migration progress
[**resetCdnToDefault**](SettingsStorageAPI.md#resetcdntodefault) | **DELETE** /api/2.0/settings/storage/cdn | Reset the CDN storage settings
[**resetStorageToDefault**](SettingsStorageAPI.md#resetstoragetodefault) | **DELETE** /api/2.0/settings/storage | Reset the storage settings
[**updateCdnStorage**](SettingsStorageAPI.md#updatecdnstorage) | **PUT** /api/2.0/settings/storage/cdn | Update the CDN storage
[**updateStorage**](SettingsStorageAPI.md#updatestorage) | **PUT** /api/2.0/settings/storage | Switch the portal storage


# **getAllBackupStorages**
```swift
    open class func getAllBackupStorages(dump: Bool? = nil, completion: @escaping (_ data: StorageArrayWrapper?, _ error: Error?) -> Void)
```

Returns the storages that can hold portal backups, with the one the saved backup schedule writes to marked as  `current` and its parameters filled in from that schedule; when no schedule is saved, or when the schedule  stores backups somewhere else than a third-party provider, none of the entries is current. Each entry has the  same shape as in `GET api/2.0/settings/storage`: identifier, title, the authentication keys the provider  expects, and `isSet` telling whether those keys are filled in on the server. Pass `dump=true` to read the  schedule of the whole server instead of the one of the current portal, which only makes sense on a server  installation. The caller needs the permission to edit portal settings, which in practice means the portal  owner or a DocSpace admin, and on an installation that is not a server one the call is also refused unless  backup is available there. Nothing is written and the call is safe to repeat. This operation says nothing  about where the portal data itself lives; the backup schedule is configured through the backup API, and the  storage of the documents through `PUT api/2.0/settings/storage`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-backup-storages/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dump** | **Bool** | Whether the schedule of the whole server is read instead of the one of the current portal. It only changes  which schedule marks an entry as `current`; the list of storages itself is the same either way, and the flag  makes sense only on a self-hosted installation. | [optional] 

### Return type

[**StorageArrayWrapper**](StorageArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let dump = true // Bool | Whether the schedule of the whole server is read instead of the one of the current portal. It only changes  which schedule marks an entry as `current`; the list of storages itself is the same either way, and the flag  makes sense only on a self-hosted installation. (optional)

// Get the backup storages
SettingsStorageAPIApi.getAllBackupStorages(dump: dump) { (response, error) in
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

# **getAllCdnStorages**
```swift
    open class func getAllCdnStorages(completion: @escaping (_ data: StorageArrayWrapper?, _ error: Error?) -> Void)
```

Returns the storages that can serve the static content of the portal through a content delivery network, which  is the subset of the providers of `GET api/2.0/settings/storage` that offer a CDN of their own. The entries  have the same shape as in the storage listing: identifier and title, the authentication keys the provider  expects, `isSet` telling whether those keys are filled in on the server, and `current` marking the CDN the  portal uses now. Keys of the current entry come from the saved CDN settings and keys of the others from the  provider configuration. An empty list means the build ships no CDN-capable provider, and a list where nothing  is current means the portal serves its static content itself. The caller needs the permission to edit portal  settings, which in practice means the portal owner or a DocSpace admin, on a server installation with an  unrestricted access space. Nothing is written and the call is safe to repeat. Use  `PUT api/2.0/settings/storage/cdn` to select a CDN and `DELETE api/2.0/settings/storage/cdn` to stop using  one.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-cdn-storages/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**StorageArrayWrapper**](StorageArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the CDN storages
SettingsStorageAPIApi.getAllCdnStorages() { (response, error) in
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

# **getAllStorages**
```swift
    open class func getAllStorages(completion: @escaping (_ data: StorageArrayWrapper?, _ error: Error?) -> Void)
```

Returns the third-party storages the installation can keep portal data in, the providers the build ships with,  such as Amazon S3, Google Cloud Storage or Rackspace. The built-in local storage is not among them: when none  of the entries is `current`, the portal data sits in the local storage. Each entry carries the storage  identifier and title, the authentication keys the provider expects, `isSet` telling whether those keys are  already filled in on the server, and `current` marking the one the portal uses right now. Keys of the current  storage are read from the saved settings, keys of the others from the provider configuration, so a value that  was never configured comes back empty. The caller needs the permission to edit portal settings, which in  practice means the portal owner or a DocSpace admin, and the installation has to be a server one whose access  space is not restricted; otherwise the call is refused with 403. Nothing is written and the call is safe to  repeat. Use `PUT api/2.0/settings/storage` to switch the storage, `DELETE api/2.0/settings/storage` to go back  to the local one, and `GET api/2.0/settings/storage/cdn` or `GET api/2.0/settings/storage/backup` for the CDN  and backup targets.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-storages/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**StorageArrayWrapper**](StorageArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the portal storages
SettingsStorageAPIApi.getAllStorages() { (response, error) in
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

# **getAmazonS3Regions**
```swift
    open class func getAmazonS3Regions(completion: @escaping (_ data: AmazonS3RegionArrayWrapper?, _ error: Error?) -> Void)
```

Returns the Amazon regions the server knows about, each with its system name such as `eu-central-1`, the  display name to show a user, and the partition details the region belongs to: partition name, DNS suffix, the  pattern its region names match and the template its host names are built from. This is static reference data  compiled into the server rather than portal configuration: nothing is read from the settings, nothing is  written, the answer is the same for every portal and changes only when the server is updated, so it can be  cached by the caller. Use the system name of an entry as the region value in `props` when configuring an  Amazon S3 storage with `PUT api/2.0/settings/storage`, `PUT api/2.0/settings/storage/cdn` or a backup  schedule, and prefer picking a value from here over typing one, because a region the server does not know  cannot be reached. Any authenticated caller may read the list, no portal-settings permission is asked for, and  the result is neither paginated nor filtered.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-amazon-s3-regions/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**AmazonS3RegionArrayWrapper**](AmazonS3RegionArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the Amazon S3 regions
SettingsStorageAPIApi.getAmazonS3Regions() { (response, error) in
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

# **getStorageProgress**
```swift
    open class func getStorageProgress(completion: @escaping (_ data: DoubleWrapper?, _ error: Error?) -> Void)
```

Returns how far the current portal has got in moving its data to another storage, as a percentage from 0 to  100. The migration itself is started by `PUT api/2.0/settings/storage` or `DELETE api/2.0/settings/storage`,  which put the portal into the migrating state; poll this operation until the value reaches 100, then the  portal is served from the new storage. A value of -1 means storage migration is not offered on this  installation, which is the case for every portal that is not a server one. Ask for the progress only once a  migration has actually been started: for a portal whose migration the server does not remember, the call fails  instead of answering with a zero. The response carries the percentage only, without the error flag the  migration service reports internally, so a value that stops advancing is a reason to check the portal state  with `GET api/2.0/portal` rather than proof of progress. The caller needs the permission to edit portal  settings, which in practice means the portal owner or a DocSpace admin, and the call is accepted even when the  portal payment has lapsed. Nothing is written and the call is safe to repeat.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-storage-progress/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**DoubleWrapper**](DoubleWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the storage migration progress
SettingsStorageAPIApi.getStorageProgress() { (response, error) in
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

# **resetCdnToDefault**
```swift
    open class func resetCdnToDefault(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Drops the CDN configuration of the current portal, module and saved credentials alike, so that the static  content is served by the portal itself again. Nothing is uploaded or migrated, no state change is queued and  the call gives back no body: only the settings are cleared, and files already copied to the content delivery  network are left where they are, to be removed in the provider's own console if that is wanted. The change  takes effect for links built after it, so a page that is already open may keep pointing at the CDN until it is  reloaded. Repeating the call is harmless, because clearing an empty configuration does nothing. The caller  needs the permission to edit portal settings, which in practice means the portal owner or a DocSpace admin, on  a server installation with an unrestricted access space. Use `GET api/2.0/settings/storage/cdn` to see what is  configured now and `PUT api/2.0/settings/storage/cdn` to select a CDN again; the portal storage of the  documents is untouched by this operation and is reset with `DELETE api/2.0/settings/storage` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-cdn-to-default/).

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


// Reset the CDN storage settings
SettingsStorageAPIApi.resetCdnToDefault() { (response, error) in
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

# **resetStorageToDefault**
```swift
    open class func resetStorageToDefault(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Drops the third-party storage configuration of the current portal, module and saved credentials alike, and  starts an asynchronous migration of the portal data back into the built-in local storage. The portal moves  into the migrating state and stays unavailable until the transfer ends, so follow it with  `GET api/2.0/settings/storage/progress`; the call itself returns as soon as the migration has been handed to  the storage service and gives back no body. The caller needs the permission to edit portal settings, which in  practice means the portal owner or a DocSpace admin, on a server installation with an unrestricted access  space. This is a mutating and slow operation rather than a destructive one: documents are copied back rather  than deleted, but the credentials of the previous storage are gone from the settings and have to be sent again  with `PUT api/2.0/settings/storage` to switch back. Repeating the call while a migration is running starts  another one, so poll instead. Resetting the storage is also the step that makes  `POST api/2.0/settings/encryption/start` possible, since encryption only covers the local storage.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-storage-to-default/).

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


// Reset the storage settings
SettingsStorageAPIApi.resetStorageToDefault() { (response, error) in
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

# **updateCdnStorage**
```swift
    open class func updateCdnStorage(storageRequestsDto: StorageRequestsDto? = nil, completion: @escaping (_ data: CdnStorageSettingsWrapper?, _ error: Error?) -> Void)
```

Selects the content delivery network that serves the static content of the portal and saves the credentials it  needs: `module` is the identifier of one of the entries of `GET api/2.0/settings/storage/cdn`, and `props`  carries that provider's authentication keys as name and value pairs. The provider has to be available on the  server, which the `isSet` flag of the listing tells, otherwise the request is rejected as invalid. Sending the  module the portal already uses changes nothing and returns the saved settings as they are. Any other module is  saved and the upload of the static content is handed to the storage service; the settings come back only when  that hand-over succeeds, a failure being reported as a server error. Unlike the portal storage this has no  progress operation, so there is nothing to poll: the content appears on the CDN once the service has copied  it. Only static content is affected here, never documents; for those use `PUT api/2.0/settings/storage`. The  caller needs the permission to edit portal settings, which in practice means the portal owner or a DocSpace  admin, on a server installation with an unrestricted access space. The response is the stored CDN  configuration.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-cdn-storage/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageRequestsDto** | [**StorageRequestsDto**](StorageRequestsDto.md) |  | [optional] 

### Return type

[**CdnStorageSettingsWrapper**](CdnStorageSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let storageRequestsDto = StorageRequestsDto(module: "module_example", props: [ItemKeyValuePairStringString(key: "key_example", value: "value_example")]) // StorageRequestsDto |  (optional)

// Update the CDN storage
SettingsStorageAPIApi.updateCdnStorage(storageRequestsDto: storageRequestsDto) { (response, error) in
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

# **updateStorage**
```swift
    open class func updateStorage(storageRequestsDto: StorageRequestsDto? = nil, completion: @escaping (_ data: StorageSettingsWrapper?, _ error: Error?) -> Void)
```

Points the current portal at another storage and saves the credentials it needs: `module` is the identifier of  one of the storages listed by `GET api/2.0/settings/storage`, and `props` carries that provider's  authentication keys as name and value pairs, for example the bucket, region and access key of an Amazon S3  storage. The provider has to be available on the server, which the `isSet` flag of the listing tells,  otherwise the request is rejected as invalid. Sending the module the portal already uses changes nothing and  returns the saved settings as they are. Any other module starts an asynchronous migration of the portal data:  the portal moves into the migrating state and stays unavailable until the transfer ends, so follow it with  `GET api/2.0/settings/storage/progress` and do not send a second switch while it runs. The caller needs the  permission to edit portal settings, which in practice means the portal owner or a DocSpace admin, on a server  installation with an unrestricted access space. The response is the stored configuration, module and  properties, not the state of the migration. To return to the built-in local storage call  `DELETE api/2.0/settings/storage`, and for the CDN use `PUT api/2.0/settings/storage/cdn`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-storage/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageRequestsDto** | [**StorageRequestsDto**](StorageRequestsDto.md) |  | [optional] 

### Return type

[**StorageSettingsWrapper**](StorageSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let storageRequestsDto = StorageRequestsDto(module: "module_example", props: [ItemKeyValuePairStringString(key: "key_example", value: "value_example")]) // StorageRequestsDto |  (optional)

// Switch the portal storage
SettingsStorageAPIApi.updateStorage(storageRequestsDto: storageRequestsDto) { (response, error) in
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

