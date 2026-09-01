# ExternalDbSyncTaskDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The task ID. | 
**error** | **String** | The error message if the synchronization failed. | [optional] 
**percentage** | **Int** | The progress percentage of the synchronization. | 
**isCompleted** | **Bool** | Specifies whether the synchronization is completed or not. | 
**status** | [**DistributedTaskStatus**](DistributedTaskStatus.md) | The status of the synchronization task. | 
**forms** | [ExternalDbSyncFormResultDto] | The synchronization results for all original forms in the room. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


