# MigrationAPIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelMigration**](MigrationAPI.md#cancelmigration) | **POST** /api/2.0/migration/cancel | Cancel migration
[**clearMigration**](MigrationAPI.md#clearmigration) | **POST** /api/2.0/migration/clear | Clear migration
[**finishMigration**](MigrationAPI.md#finishmigration) | **POST** /api/2.0/migration/finish | Finish migration
[**getMigrationLogs**](MigrationAPI.md#getmigrationlogs) | **GET** /api/2.0/migration/logs | Get migration logs
[**getMigrationStatus**](MigrationAPI.md#getmigrationstatus) | **GET** /api/2.0/migration/status | Get migration status
[**listMigrations**](MigrationAPI.md#listmigrations) | **GET** /api/2.0/migration/list | Get migrations
[**startMigration**](MigrationAPI.md#startmigration) | **POST** /api/2.0/migration/migrate | Start migration
[**uploadAndInitializeMigration**](MigrationAPI.md#uploadandinitializemigration) | **POST** /api/2.0/migration/init/{migratorName} | Upload and initialize migration


# **cancelMigration**
```swift
    open class func cancelMigration(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Cancels the migration.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/cancel-migration/).

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


// Cancel migration
MigrationAPIApi.cancelMigration() { (response, error) in
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

# **clearMigration**
```swift
    open class func clearMigration(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Clears the migration.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/clear-migration/).

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


// Clear migration
MigrationAPIApi.clearMigration() { (response, error) in
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

# **finishMigration**
```swift
    open class func finishMigration(finishDto: FinishDto? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Finishes the migration process.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/finish-migration/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **finishDto** | [**FinishDto**](FinishDto.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let finishDto = FinishDto(isSendWelcomeEmail: true) // FinishDto |  (optional)

// Finish migration
MigrationAPIApi.finishMigration(finishDto: finishDto) { (response, error) in
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMigrationLogs**
```swift
    open class func getMigrationLogs(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Returns the migration logs.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-migration-logs/).

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


// Get migration logs
MigrationAPIApi.getMigrationLogs() { (response, error) in
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

# **getMigrationStatus**
```swift
    open class func getMigrationStatus(completion: @escaping (_ data: MigrationStatusWrapper?, _ error: Error?) -> Void)
```

Returns the migration status.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-migration-status/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**MigrationStatusWrapper**](MigrationStatusWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get migration status
MigrationAPIApi.getMigrationStatus() { (response, error) in
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

# **listMigrations**
```swift
    open class func listMigrations(completion: @escaping (_ data: STRINGArrayWrapper?, _ error: Error?) -> Void)
```

Returns a list of available migrations.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/list-migrations/).

### Parameters
This endpoint does not need any parameter.

### Return type

[**STRINGArrayWrapper**](STRINGArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get migrations
MigrationAPIApi.listMigrations() { (response, error) in
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

# **startMigration**
```swift
    open class func startMigration(migrationApiInfo: MigrationApiInfo? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Starts the migration process.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-migration/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **migrationApiInfo** | [**MigrationApiInfo**](MigrationApiInfo.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let migrationApiInfo = MigrationApiInfo(migratorName: "migratorName_example", operation: "operation_example", failedArchives: ["failedArchives_example"], users: [MigratingApiUser(shouldImport: true, key: "key_example", email: "email_example", displayName: "displayName_example", firstName: "firstName_example", lastName: "lastName_example", userType: EmployeeType(), migratingFiles: MigratingApiFiles(foldersCount: 123, filesCount: 123, bytesTotal: 123))], withoutEmailUsers: [nil], existUsers: [nil], groups: [MigratingApiGroup(shouldImport: true, groupName: "groupName_example", moduleName: "moduleName_example", userUidList: ["userUidList_example"])], importPersonalFiles: true, importSharedFiles: true, importSharedFolders: true, importCommonFiles: true, importProjectFiles: true, importGroups: true, successedUsers: 123, failedUsers: 123, files: ["files_example"], errors: ["errors_example"]) // MigrationApiInfo |  (optional)

// Start migration
MigrationAPIApi.startMigration(migrationApiInfo: migrationApiInfo) { (response, error) in
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadAndInitializeMigration**
```swift
    open class func uploadAndInitializeMigration(migratorName: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Uploads and initializes a migration with a migrator name specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-and-initialize-migration/).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **migratorName** | **String** | The migrator name extracted from the route parameters. | 

### Return type

Void (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let migratorName = "migratorName_example" // String | The migrator name extracted from the route parameters.

// Upload and initialize migration
MigrationAPIApi.uploadAndInitializeMigration(migratorName: migratorName) { (response, error) in
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

