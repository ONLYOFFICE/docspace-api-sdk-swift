# AiSettingsDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**webSearchEnabled** | **Bool** | Indicates whether web search is enabled for AI chat sessions. | [optional] 
**webSearchNeedReset** | **Bool** | Indicates whether the web search API key needs to be reconfigured. | [optional] 
**vectorizationEnabled** | **Bool** | Indicates whether document vectorization is enabled. | [optional] 
**vectorizationNeedReset** | **Bool** | Indicates whether the embedding provider API key needs to be reconfigured. | [optional] 
**aiReady** | **Bool** | Indicates whether the AI subsystem is fully configured and operational. | [optional] 
**aiReadyNeedReset** | **Bool** | Indicates whether the AI provider API key needs to be reconfigured. | [optional] 
**portalMcpServerId** | **UUID** | The unique identifier of the portal-level MCP server, if configured. | [optional] 
**embeddingModel** | **String** | The name of the embedding model used for document vectorization. | 
**modelAliases** | **[String: String]** | Mapping of model identifiers to human-readable aliases. | 
**knowledgeSearchToolName** | **String** | The tool name used by the AI assistant for knowledge base search. | 
**webSearchToolName** | **String** | The tool name used by the AI assistant for web search. | 
**webCrawlingToolName** | **String** | The tool name used by the AI assistant for web page crawling. | 
**generateDocxToolName** | **String** | The tool name used by the AI to launch docx creation in the editor. | 
**generateFormToolName** | **String** | The tool name used by the AI assistant to launch form creation in the editor. | 
**generatePresentationToolName** | **String** | The tool name used by the AI assistant to launch presentation creation in the editor. | 
**systemAiEnabled** | **Bool** | Indicates whether the system-level AI provider is enabled. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


