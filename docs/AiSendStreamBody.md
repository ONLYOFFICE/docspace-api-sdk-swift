# AiSendStreamBody

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**threadId** | **String** | Target thread; a new one is created (with an auto title) when omitted. | [optional] 
**userMessage** | [**AiThreadMessageLike**](AiThreadMessageLike.md) | The user turn to send. | 
**actionArgs** | [**AiActionArgs**](AiActionArgs.md) | Per-request options of the round: extra tools, reasoning, a prompt override and the connected context. | [optional] 
**entityId** | **String** | Optional entity (room) scope for profile resolution. | [optional] 
**contextEntityId** | **String** | The folder or room the user is in. Tools run against it and the model is told it is the user's location; falls back to `entityId` when omitted. | [optional] 
**profileId** | **String** | Session-level profile override for this request only. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


