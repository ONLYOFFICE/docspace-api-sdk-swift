# AiActionArgs

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tools** | [AiMCPItem] | Extra tools offered to the model for this request. | [optional] 
**isReasoning** | **Bool** | Legacy extended-thinking switch; stands for `medium`. `reasoningLevel` wins when both are set. | [optional] 
**reasoningLevel** | [**AiReasoningLevel**](AiReasoningLevel.md) | Depth of extended thinking for the round; providers clamp it to what the model accepts. | [optional] 
**prompt** | [**AiActionArgsPrompt**](AiActionArgsPrompt.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


