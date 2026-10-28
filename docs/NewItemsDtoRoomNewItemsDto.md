# NewItemsDtoRoomNewItemsDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**date** | [**ApiDateTime**](ApiDateTime.md) | The day the grouped entries were last changed, written with the offset of the portal time zone. The time part  is the moment of the newest entry of the group. | 
**items** | [RoomNewItemsDto] | What changed on that day, the most recent first. Folders are left out of it, so an entry here is always a file  or a room that holds them. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


