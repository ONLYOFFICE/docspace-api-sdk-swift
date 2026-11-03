# AiThreadMessageLike

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Storage-assigned message id (absent on inbound drafts). | [optional] 
**role** | **String** | Message author role. | 
**content** | [**AiThreadMessageLikeContent**](AiThreadMessageLikeContent.md) |  | 
**createdAt** | **String** | Creation timestamp, ISO-8601 on the wire. | [optional] 
**status** | [**AiThreadMessageLikeStatus**](AiThreadMessageLikeStatus.md) |  | [optional] 
**metadata** | **JSONValue** | Per-message metadata. The chat library writes `custom` (with the round's `contextEntityId`) and `steps` (token usage per provider request); `unstable_state`, `unstable_annotations`, `unstable_data` and `submittedFeedback` may appear as well. Read it as an open map. | [optional] 
**attachments** | **[JSONValue]** | Attachments linked to the message (`id`, `type`, `name`, `contentType`, `status`, `content`). Read them as open objects. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


