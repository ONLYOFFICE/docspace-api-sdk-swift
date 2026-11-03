# AiToolCallData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**threadId** | **String** | Thread the assistant message belongs to. | 
**messageId** | **String** | Storage id of the assistant message holding the tool call. | 
**idx** | **Double** | Index of the tool-call content part inside `message.content`. | 
**message** | [**AiThreadMessageLike**](AiThreadMessageLike.md) | A copy of the assistant message as it was when the tool call surfaced. Optional and ignored: the round resumes from the stored message. Leave it out - a long conversation's copy can push the body past the size limit. | [optional] 
**actionArgs** | [**AiActionArgs**](AiActionArgs.md) | Per-request options of the round: extra tools, reasoning, a prompt override and the connected context. | [optional] 
**entityId** | **String** | Optional entity (room) scope for profile resolution. | [optional] 
**contextEntityId** | **String** | The folder or room the user is in. Tools run against it and the model is told it is the user's location; falls back to `entityId` when omitted. | [optional] 
**profileId** | **String** | Session-level profile override for this request only. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


