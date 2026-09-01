# ScheduleDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**storageType** | [**BackupStorageType**](BackupStorageType.md) | The backup storage type. | 
**storageParams** | **[String: String?]** | The backup storage parameters. | 
**cronParams** | [**CronParams**](CronParams.md) | The backup cron parameters. | 
**backupsStored** | **Int** | The maximum number of the stored backup copies. | [optional] 
**lastBackupTime** | **Date** | The date and time when the last backup was reated. | 
**dump** | **Bool** | Specifies if a dump will be created or not. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


