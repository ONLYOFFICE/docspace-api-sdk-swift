# AiThreadMessageLike

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Storage-assigned message id (absent on inbound drafts). | [optional] 
**role** | **String** | Message author role. | 
**content** | [**AiThreadMessageLikeContent**](AiThreadMessageLikeContent.md) |  | 
**createdAt** | **String** | Creation timestamp, ISO-8601 on the wire. | [optional] 
**status** | [**AiThreadMessageLikeStatus**](AiThreadMessageLikeStatus.md) |  | [optional] 
**metadata** | **JSONValue** | Arbitrary per-message metadata. | [optional] 
**attachments** | **[JSONValue]** | Attachments linked to the message. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


