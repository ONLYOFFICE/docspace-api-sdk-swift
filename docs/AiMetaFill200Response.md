# AiMetaFill200Response

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dryRun** | **Bool** | Whether the values were only proposed (`true`) or written as well. | 
**metadata** | [**AiEntryMetadata**](AiEntryMetadata.md) | The entry's metadata after the write (or as it stands, with `dryRun`), as `GET api/2.0/files/metadata/{kind}/{id}` returns it. | 
**filled** | [AiMetaFill200ResponseFilledInner] | The values written, or proposed with `dryRun`: a typed value for a template field, a string for a custom field. | 
**unresolved** | [AiMetaFill200ResponseUnresolvedInner] | The fields left as they were, with the reason for each. | 
**sources** | [AiMetaFill200ResponseSourcesInner] | The documents the values were read from. | 
**skipped** | [AiMetaGenerate200ResponseSkippedInner] | The entries that were left out, with the reason for each. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


