# CreateAgentRequestDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | The room name. | 
**quota** | **Int64** | The room quota. | [optional] 
**indexing** | **Bool** | Specifies whether to create a room with indexing. | [optional] 
**denyDownload** | **Bool** | Specifies whether to deny downloads from the room. | [optional] 
**lifetime** | [**RoomDataLifetimeDto**](RoomDataLifetimeDto.md) |  | [optional] 
**watermark** | [**WatermarkRequestDto**](WatermarkRequestDto.md) |  | [optional] 
**logo** | [**LogoRequest**](LogoRequest.md) |  | [optional] 
**tags** | **[String]** | The list of tags. | [optional] 
**color** | **String** | The room color. | [optional] 
**cover** | **String** | The room cover. | [optional] 
**_private** | **Bool** | Specifies whether the room to be created is private or not. | [optional] 
**share** | [FileShareParams] | The collection of sharing parameters. | [optional] 
**chatSettings** | [**ChatSettings**](ChatSettings.md) |  | 
**attachDefaultTools** | **Bool** | Specifies whether to attach default tools to the agent or not. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


