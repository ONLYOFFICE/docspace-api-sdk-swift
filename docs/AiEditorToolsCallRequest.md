# AiEditorToolsCallRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the tool to run, as listed by the tools endpoint. A name that is unknown or excluded from the editor is rejected with 400. | 
**arguments** | **[String: JSONValue?]** | Arguments for the tool, shaped by that tool's own input schema. Treated as empty when it is not an object. | [optional] 
**entityId** | **String** | Room the call is scoped to. Left out for a portal-wide call. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


