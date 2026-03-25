# McpServerStatusDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Unique identifier of the MCP server. | [optional] 
**name** | **String** | Display name of the MCP server. | 
**serverType** | [**ServerType**](ServerType.md) |  | [optional] 
**connected** | **Bool** | Indicates whether the current user has an active connection to this server. For direct-connection servers this is always true; for OAuth-based servers it reflects whether the user has completed authorization. | [optional] 
**icon** | [**Icon**](Icon.md) |  | [optional] 
**needReset** | **Bool** | Indicates whether the server requires a configuration reset due to connectivity or credential issues. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


