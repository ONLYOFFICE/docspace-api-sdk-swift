# UpdateRoomRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | The room title. | [optional] 
**quota** | **Int64** | The room quota. | [optional] 
**indexing** | **Bool** | Specifies whether to create a third-party room with indexing. | [optional] 
**denyDownload** | **Bool** | Specifies whether to deny downloads from the third-party room. | [optional] 
**lifetime** | [**RoomDataLifetimeDto**](RoomDataLifetimeDto.md) | The room data lifetime information. | [optional] 
**watermark** | [**WatermarkRequestDto**](WatermarkRequestDto.md) | The watermark settings. | [optional] 
**logo** | [**LogoRequest**](LogoRequest.md) | The room logo. | [optional] 
**tags** | **[String]** | The list of tags. | [optional] 
**color** | **String** | The room color, as a six-digit hexadecimal value without a leading '#'. | [optional] 
**cover** | **String** | The room cover. | [optional] 
**chatSettings** | [**ChatSettings**](ChatSettings.md) | The chat settings. | [optional] 
**sendFormToExternalDB** | **Bool** | Specifies whether to send form data to external database. | [optional] 
**saveFormAsXLSX** | **Bool** | Specifies whether to save form data as XLSX file. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


