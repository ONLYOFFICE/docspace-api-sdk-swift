# AiThreadMessageLikeStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | `running`, `requires-action`, `complete` or `incomplete`. | 
**reason** | **String** | Why the message is in that state: `tool-calls` or `interrupt` for `requires-action`; `stop` or `unknown` for `complete`; `cancelled`, `tool-calls`, `length`, `content-filter`, `other` or `error` for `incomplete`. An `incomplete` message the chat stored carries `cancelled` (the round was stopped) or `error`. | [optional] 
**error** | [**AiChatErrorPayload**](AiChatErrorPayload.md) | What failed, on an `incomplete` message whose `reason` is `error`. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


