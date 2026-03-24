# EditHistoryDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** | The document ID. | [optional] 
**key** | **String** | The document identifier used to unambiguously identify the document file. | [optional] 
**version** | **Int** | The document version number. | [optional] 
**versionGroup** | **Int** | The document version group. | [optional] 
**user** | [**EditHistoryAuthor**](EditHistoryAuthor.md) |  | [optional] 
**created** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] 
**changesHistory** | **String** | The file history changes in the string format. | [optional] 
**changes** | [EditHistoryChangesWrapper] | The list of file history changes. | [optional] 
**serverVersion** | **String** | The current server version number. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


