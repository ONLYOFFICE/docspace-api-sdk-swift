# RoomLinkRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**linkId** | **UUID** | The room link ID. | [optional] 
**access** | [**FileShare**](FileShare.md) |  | [optional] 
**expirationDate** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] 
**_internal** | **Bool** | The link scope, whether it is internal or not. | [optional] 
**title** | **String** | The link name. | [optional] 
**linkType** | [**LinkType**](LinkType.md) |  | [optional] 
**password** | **String** | The link password. | [optional] 
**denyDownload** | **Bool** | Specifies if downloading the file from the link is disabled or not. | [optional] 
**maxUseCount** | **Int** | The maximum number of times the invitation link can be used. | [optional] 
**currentUseCount** | **Int** | The current number of times the invitation link has been used. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


