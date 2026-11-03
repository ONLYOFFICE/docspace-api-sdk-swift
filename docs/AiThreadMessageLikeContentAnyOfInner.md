# AiThreadMessageLikeContentAnyOfInner

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Part kind: `text`, `reasoning`, `source`, `image`, `file`, `audio`, `data` or `tool-call`. | 
**text** | **String** | The text of a `text` or `reasoning` part. | [optional] 
**parentId** | **String** | Id of the part this one belongs to, on `text`, `reasoning`, `source` and `tool-call` parts. On a `reasoning` part the chat library keeps the provider's thinking signature here. | [optional] 
**sourceType** | **String** | A `source` part's source kind; always `url`. | [optional] 
**id** | **String** | A `source` part's id. | [optional] 
**url** | **String** | A `source` part's URL. | [optional] 
**title** | **String** | A `source` part's title. | [optional] 
**image** | **String** | An `image` part's picture, as a URL (usually a `data:` URL). For an image the user attached, a JSON string `{ ref, title, kind: image }` naming the stored attachment instead. | [optional] 
**mimeType** | **String** | A `file` part's media type. For a file the user attached, a JSON string `{ ref, title, kind: file, path, type }` naming the stored attachment instead - the chat library carries the reference here. | [optional] 
**data** | **String** | A `file` part's content; empty when the part references an attachment. (A `data` part would carry its payload here too, as any JSON value; neither the chat library nor this service writes one.) | [optional] 
**filename** | **String** | The file name of a `file` or `image` part. | [optional] 
**name** | **String** | An `image` part's display name, or a `data` part's name. | [optional] 
**audio** | [**AiThreadMessageLikeContentAnyOfInnerAudio**](AiThreadMessageLikeContentAnyOfInnerAudio.md) |  | [optional] 
**toolCallId** | **String** | A `tool-call` part's call id. | [optional] 
**toolName** | **String** | A `tool-call` part's tool name. | [optional] 
**args** | **JSONValue** | A `tool-call` part's arguments. | [optional] 
**argsText** | **String** | A `tool-call` part's arguments as the model streamed them, JSON text. | [optional] 
**result** | **JSONValue** |  | [optional] 
**isError** | **Bool** | Whether a `tool-call` part's result is an error. | [optional] 
**artifact** | **JSONValue** |  | [optional] 
**interrupt** | [**AiThreadMessageLikeContentAnyOfInnerInterrupt**](AiThreadMessageLikeContentAnyOfInnerInterrupt.md) |  | [optional] 
**messages** | **[JSONValue]** | Messages of a sub-agent run inside a `tool-call` part. | [optional] 
**metadata** | **JSONValue** | Provider-specific data of a `tool-call` part - for a Gemini call, `{ thoughtSignature }`, which has to be sent back with the call. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


