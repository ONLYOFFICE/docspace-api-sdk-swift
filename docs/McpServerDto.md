# McpServerDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Unique identifier of the MCP server. | [optional] 
**name** | **String** | Display name of the MCP server. | [optional] 
**description** | **String** | Human-readable description of the server's purpose and capabilities. | [optional] 
**endpoint** | **String** | Base URL of the MCP server endpoint. | [optional] 
**serverType** | [**ServerType**](ServerType.md) |  | [optional] 
**headers** | **[String: String]** | HTTP headers sent with every request to the server (e.g., authentication tokens). | [optional] 
**enabled** | **Bool** | Indicates whether the server is currently enabled and available for room assignment. | [optional] 
**icon** | [**Icon**](Icon.md) |  | [optional] 
**needReset** | **Bool** | Indicates whether the server requires a configuration reset due to connectivity or credential issues. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


