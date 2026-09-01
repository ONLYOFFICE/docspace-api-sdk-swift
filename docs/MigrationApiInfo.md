# MigrationApiInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**migratorName** | **String** | The migrator name. | [optional] 
**operation** | **String** | The migration operation. | [optional] 
**failedArchives** | **[String]** | The list of failed archives. | [optional] 
**users** | [MigratingApiUser] | The list of migrating users. | [optional] 
**withoutEmailUsers** | [MigratingApiUser] | The list of migrating users without email. | [optional] 
**existUsers** | [MigratingApiUser] | The list of existing migrating users. | [optional] 
**groups** | [MigratingApiGroup] | The list of migrating groups. | [optional] 
**importPersonalFiles** | **Bool** | Specifies whether to import personal files or not. | [optional] 
**importSharedFiles** | **Bool** | Specifies whether to import shared files or not. | [optional] 
**importSharedFolders** | **Bool** | Specifies whether to import shared folders or not. | [optional] 
**importCommonFiles** | **Bool** | Specifies whether to import common files or not. | [optional] 
**importProjectFiles** | **Bool** | Specifies whether to import project files or not. | [optional] 
**importGroups** | **Bool** | Specifies whether to import groups or not. | [optional] 
**successedUsers** | **Int** | The number of successfully migrated users. | [optional] 
**failedUsers** | **Int** | The number of unsuccessfully migrated users. | [optional] 
**files** | **[String]** | The list of migrated files. | [optional] 
**errors** | **[String]** | The list of migration errors. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


