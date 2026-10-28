# AiEditorToolsList200ResponseToolsInner

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Tool name, as it is passed back to the call endpoint. | 
**description** | **String** | What the tool does, empty when the server declares nothing. | 
**inputSchema** | **[String: JSONValue?]** | JSON Schema of the tool arguments. | 
**requireApproval** | **Bool** | Whether the editor has to ask the user before running the tool. Read-only operations arrive with this off. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


