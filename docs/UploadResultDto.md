# UploadResultDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **Bool** | True when the image was stored and its path is in the data field. A rejected image is reported with an error  response rather than with a false here, so this field is true in every answer that carries a body. | [optional] 
**data** | **JSONValue** |  | [optional] 
**message** | **String** | Left empty by this operation: nothing is reported here, and a refused image comes back as an error response  instead. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


