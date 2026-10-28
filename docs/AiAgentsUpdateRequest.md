# AiAgentsUpdateRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**profileId** | **String** | Profile id to rebind (optional). | [optional] 
**chatSettings** | **JSONValue** | Chat settings (`ChatSettings`); requires a valid provider/model. | [optional] 
**sendFormToExternalDB** | **Bool** | Whether form results are sent to an external DB. | [optional] 
**saveFormAsXLSX** | **Bool** | Whether forms are saved as XLSX. | [optional] 
**title** | **String** | Agent (room) title. | [optional] 
**quota** | **Double** | Room quota in bytes. | [optional] 
**indexing** | **Bool** | Whether room content is indexed for search. | [optional] 
**denyDownload** | **Bool** | Whether downloading room content is denied. | [optional] 
**lifetime** | **JSONValue** | Room data lifetime policy (`RoomDataLifetimeDto`). | [optional] 
**watermark** | **JSONValue** | Watermark settings (`WatermarkRequestDto`). | [optional] 
**logo** | **JSONValue** | Room logo (`LogoRequest`). | [optional] 
**tags** | **[String]** | Room tags. | [optional] 
**color** | **String** | Room accent color. | [optional] 
**cover** | **String** | Room cover image id. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


