# FileOperationDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The file operation ID. | 
**operation** | [**FileOperationType**](FileOperationType.md) |  | 
**progress** | **Int** | The file operation progress in percentage. | 
**error** | **String** | The file operation error message. | 
**processed** | **String** | The file operation processing status. | 
**finished** | **Bool** | Specifies if the file operation is finished or not. | 
**url** | **String** | The file operation URL. | [optional] 
**files** | [FileEntryBaseDto] | The list of files of the file operation. | [optional] 
**folders** | [FileEntryBaseDto] | The list of folders of the file operation. | [optional] 
**status** | [**DistributedTaskStatus**](DistributedTaskStatus.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


