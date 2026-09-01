# AiAiSendStreamBody

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**threadId** | **String** | Target thread; a new one is created (with an auto title) when omitted. | [optional] 
**userMessage** | [**AiThreadMessageLike**](AiThreadMessageLike.md) | The user turn to send. | 
**actionArgs** | [**AiAiActionArgs**](AiAiActionArgs.md) | Per-request engine options: extra tools, reasoning, prompt override. | [optional] 
**entityId** | **String** | Optional entity (room) scope for profile resolution. | [optional] 
**profileId** | **String** | Session-level profile override for this request only. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


