# AiMetaFillRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kind** | **String** | The entry's table. Only `file` for now: a folder or a room answers 400. | 
**id** | [**AiMetaGenerateRequestId**](AiMetaGenerateRequestId.md) |  | 
**prompt** | **String** | What to pay attention to; a hint for the model. | [optional] 
**overwrite** | **Bool** | Also replace the fields that already carry a value. Default false. | [optional] 
**dryRun** | **Bool** | Resolve the values but write nothing; the caller writes what the user confirms. Default true: a write needs an explicit false. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


