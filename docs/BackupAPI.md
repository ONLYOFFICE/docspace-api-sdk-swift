# BackupAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBackupSchedule**](BackupAPI.md#createbackupschedule) | **POST** /api/2.0/backup/createbackupschedule | Create the backup schedule
[**deleteBackup**](BackupAPI.md#deletebackup) | **DELETE** /api/2.0/backup/deletebackup/{id} | Delete the backup
[**deleteBackupHistory**](BackupAPI.md#deletebackuphistory) | **DELETE** /api/2.0/backup/deletebackuphistory | Delete the backup history
[**deleteBackupSchedule**](BackupAPI.md#deletebackupschedule) | **DELETE** /api/2.0/backup/deletebackupschedule | Delete the backup schedule
[**getBackupHistory**](BackupAPI.md#getbackuphistory) | **GET** /api/2.0/backup/getbackuphistory | Get the backup history
[**getBackupProgress**](BackupAPI.md#getbackupprogress) | **GET** /api/2.0/backup/getbackupprogress | Get the backup progress
[**getBackupSchedule**](BackupAPI.md#getbackupschedule) | **GET** /api/2.0/backup/getbackupschedule | Get the backup schedule
[**getBackupsCount**](BackupAPI.md#getbackupscount) | **GET** /api/2.0/backup/getbackupscount | Get the number of backups
[**getBackupsServiceState**](BackupAPI.md#getbackupsservicestate) | **GET** /api/2.0/backup/getservicestate | Get the backup service state
[**getRestoreProgress**](BackupAPI.md#getrestoreprogress) | **GET** /api/2.0/backup/getrestoreprogress | Get the restoring progress
[**startBackup**](BackupAPI.md#startbackup) | **POST** /api/2.0/backup/startbackup | Start the backup
[**startBackupRestore**](BackupAPI.md#startbackuprestore) | **POST** /api/2.0/backup/startrestore | Start the restoring process


# **createBackupSchedule**
```swift
    open class func createBackupSchedule(backupScheduleDto: BackupScheduleDto? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Creates the backup schedule of the current portal with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-backup-schedule/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **backupScheduleDto** | [**BackupScheduleDto**](BackupScheduleDto.md) |  | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let backupScheduleDto = BackupScheduleDto(storageType: BackupStorageType(), storageParams: [ItemKeyValuePairObjectObject(key: 123, value: 123)], backupsStored: 123, cronParams: Cron(period: BackupPeriod(), hour: 123, day: 123), dump: true) // BackupScheduleDto |  (optional)

// Create the backup schedule
BackupAPIApi.createBackupSchedule(backupScheduleDto: backupScheduleDto) { (response, error) in
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

# **deleteBackup**
```swift
    open class func deleteBackup(id: UUID, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Deletes the backup with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-backup/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | The backup ID. | 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | The backup ID.

// Delete the backup
BackupAPIApi.deleteBackup(id: id) { (response, error) in
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

# **deleteBackupHistory**
```swift
    open class func deleteBackupHistory(dump: Bool? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Deletes the backup history from the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-backup-history/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dump** | **Bool** | Specifies if a dump will be created or not. | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let dump = true // Bool | Specifies if a dump will be created or not. (optional)

// Delete the backup history
BackupAPIApi.deleteBackupHistory(dump: dump) { (response, error) in
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

# **deleteBackupSchedule**
```swift
    open class func deleteBackupSchedule(dump: Bool? = nil, completion: @escaping (_ data: BooleanWrapper?, _ error: Error?) -> Void)
```

Deletes the backup schedule of the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-backup-schedule/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dump** | **Bool** | Specifies if a dump will be created or not. | [optional] 

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let dump = true // Bool | Specifies if a dump will be created or not. (optional)

// Delete the backup schedule
BackupAPIApi.deleteBackupSchedule(dump: dump) { (response, error) in
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

# **getBackupHistory**
```swift
    open class func getBackupHistory(dump: Bool? = nil, completion: @escaping (_ data: BackupHistoryRecordArrayWrapper?, _ error: Error?) -> Void)
```

Returns the history of the started backup.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-history/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dump** | **Bool** | Specifies if a dump will be created or not. | [optional] 

### Return type

[**BackupHistoryRecordArrayWrapper**](BackupHistoryRecordArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let dump = true // Bool | Specifies if a dump will be created or not. (optional)

// Get the backup history
BackupAPIApi.getBackupHistory(dump: dump) { (response, error) in
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

# **getBackupProgress**
```swift
    open class func getBackupProgress(dump: Bool? = nil, completion: @escaping (_ data: BackupProgressWrapper?, _ error: Error?) -> Void)
```

Returns the progress of the started backup.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-progress/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dump** | **Bool** | Specifies if a dump will be created or not. | [optional] 

### Return type

[**BackupProgressWrapper**](BackupProgressWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let dump = true // Bool | Specifies if a dump will be created or not. (optional)

// Get the backup progress
BackupAPIApi.getBackupProgress(dump: dump) { (response, error) in
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

# **getBackupSchedule**
```swift
    open class func getBackupSchedule(dump: Bool? = nil, completion: @escaping (_ data: ScheduleWrapper?, _ error: Error?) -> Void)
```

Returns the backup schedule of the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-schedule/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dump** | **Bool** | Specifies if a dump will be created or not. | [optional] 

### Return type

[**ScheduleWrapper**](ScheduleWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let dump = true // Bool | Specifies if a dump will be created or not. (optional)

// Get the backup schedule
BackupAPIApi.getBackupSchedule(dump: dump) { (response, error) in
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

# **getBackupsCount**
```swift
    open class func getBackupsCount(from: Date? = nil, to: Date? = nil, paid: Bool? = nil, completion: @escaping (_ data: Int32Wrapper?, _ error: Error?) -> Void)
```

Returns the number of backups for a period of time. The default is one month.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backups-count/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **Date** | The from date. | [optional] 
 **to** | **Date** | The to date. | [optional] 
 **paid** | **Bool** | Specifies if the backups are paid or not. | [optional] 

### Return type

[**Int32Wrapper**](Int32Wrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let from = Date() // Date | The from date. (optional)
let to = Date() // Date | The to date. (optional)
let paid = true // Bool | Specifies if the backups are paid or not. (optional)

// Get the number of backups
BackupAPIApi.getBackupsCount(from: from, to: to, paid: paid) { (response, error) in
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

# **getBackupsServiceState**
```swift
    open class func getBackupsServiceState(completion: @escaping (_ data: BackupServiceStateWrapper?, _ error: Error?) -> Void)
```

Returns the backup service state.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backups-service-state/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**BackupServiceStateWrapper**](BackupServiceStateWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the backup service state
BackupAPIApi.getBackupsServiceState() { (response, error) in
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

# **getRestoreProgress**
```swift
    open class func getRestoreProgress(dump: Bool? = nil, completion: @escaping (_ data: BackupProgressWrapper?, _ error: Error?) -> Void)
```

Returns the progress of the started restoring process.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-restore-progress/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dump** | **Bool** | Specifies if a dump will be created or not. | [optional] 

### Return type

[**BackupProgressWrapper**](BackupProgressWrapper.md)

### Authorization

No authorization required

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let dump = true // Bool | Specifies if a dump will be created or not. (optional)

// Get the restoring progress
BackupAPIApi.getRestoreProgress(dump: dump) { (response, error) in
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

# **startBackup**
```swift
    open class func startBackup(backupDto: BackupDto? = nil, completion: @escaping (_ data: BackupProgressWrapper?, _ error: Error?) -> Void)
```

Starts the backup of the current portal with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-backup/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **backupDto** | [**BackupDto**](BackupDto.md) |  | [optional] 

### Return type

[**BackupProgressWrapper**](BackupProgressWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let backupDto = BackupDto(storageType: BackupStorageType(), storageParams: [ItemKeyValuePairObjectObject(key: 123, value: 123)], dump: true) // BackupDto |  (optional)

// Start the backup
BackupAPIApi.startBackup(backupDto: backupDto) { (response, error) in
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

# **startBackupRestore**
```swift
    open class func startBackupRestore(backupRestoreDto: BackupRestoreDto? = nil, completion: @escaping (_ data: BackupProgressWrapper?, _ error: Error?) -> Void)
```

Starts the data restoring process of the current portal with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-backup-restore/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **backupRestoreDto** | [**BackupRestoreDto**](BackupRestoreDto.md) |  | [optional] 

### Return type

[**BackupProgressWrapper**](BackupProgressWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let backupRestoreDto = BackupRestoreDto(backupId: "backupId_example", storageType: BackupStorageType(), storageParams: [ItemKeyValuePairObjectObject(key: 123, value: 123)], notify: true, dump: true) // BackupRestoreDto |  (optional)

// Start the restoring process
BackupAPIApi.startBackupRestore(backupRestoreDto: backupRestoreDto) { (response, error) in
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

