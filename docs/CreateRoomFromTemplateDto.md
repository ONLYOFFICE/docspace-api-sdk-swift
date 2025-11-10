# CreateRoomFromTemplateDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**templateId** | **Int** | The template ID from which the room to be created. | 
**title** | **String** | The room title. | 
**logo** | [**LogoRequest**](LogoRequest.md) |  | [optional] 
**copyLogo** | **Bool** | Specifies whether to copy a logo or not. | [optional] 
**tags** | **[String]** | The collection of tags. | [optional] 
**color** | **String** | The color of the room to be created. | [optional] 
**cover** | **String** | The cover of the room to be created. | [optional] 
**quota** | **Int64** | The room quota. | [optional] 
**indexing** | **Bool** | Specifies whether to create a room with indexing. | [optional] 
**denyDownload** | **Bool** | Specifies whether to deny downloads from the room. | [optional] 
**lifetime** | [**RoomDataLifetimeDto**](RoomDataLifetimeDto.md) |  | [optional] 
**watermark** | [**WatermarkRequestDto**](WatermarkRequestDto.md) |  | [optional] 
**_private** | **Bool** | Specifies whether the room to be created is private or not. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


