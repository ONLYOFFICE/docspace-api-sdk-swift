# FileShareLink

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | The unique identifier of the shared link. | [optional] 
**title** | **String** | The title of the shared content. | [optional] 
**shareLink** | **String** | The URL for accessing the shared content. | [optional] 
**expirationDate** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] 
**linkType** | [**LinkType**](LinkType.md) |  | [optional] 
**password** | **String** | The password protection for accessing the shared content. | [optional] 
**denyDownload** | **Bool** | Indicates whether downloading of the shared content is prohibited. | [optional] 
**isExpired** | **Bool** | Indicates whether the shared link has expired. | [optional] 
**primary** | **Bool** | Indicates whether this is the primary shared link. | [optional] 
**_internal** | **Bool** | Indicates whether the link is for the internal sharing only. | [optional] 
**requestToken** | **String** | The token for validating access requests. | [optional] 
**maxUseCount** | **Int** | The maximum number of times the invitation link can be used. | [optional] 
**currentUseCount** | **Int** | The current number of times the invitation link has been used. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


