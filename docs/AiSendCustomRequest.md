# AiSendCustomRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**isStream** | **Bool** | Stream the reply (ndjson) when true, else return a single message. | 
**systemPrompt** | **String** | Caller-supplied system prompt for this one-turn call. | 
**userMessage** | [**AiThreadMessageLike**](AiThreadMessageLike.md) |  | 
**actionArgs** | [**AiActionArgs**](AiActionArgs.md) | Per-request options of the round: extra tools, reasoning, a prompt override and the connected context. | [optional] 
**profileId** | **String** | Profile to run this call on. When omitted, or when no profile has this id, the `Default` assignment is used. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


