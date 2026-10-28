# AiAttachment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Storage-assigned UUID. | 
**kind** | **String** | file | image. | 
**source** | **String** | Origin of the attachment. `user` — uploaded by the user in the composer (the default when unset, for backward compatibility). `tool` — produced by a tool call (e.g. `generate_image`). Lets the integrator's adapter route or apply policies (separate bucket, quotas, TTL, CDN) per source. | [optional] 
**title** | **String** | Display label (filename or user-visible title). | 
**content** | **String** | Extracted text for files. | [optional] 
**base64** | **String** | Base64 data URL for images. | [optional] 
**path** | **String** | Original host file path (for files). | [optional] 
**type** | **Double** | ONLYOFFICE file type code (for files). | [optional] 
**messageId** | **String** | Owning message id once linked. Unset while the attachment is a draft. | [optional] 
**threadId** | **String** | Owning thread id once linked. Unset while the attachment is a draft. | [optional] 
**entityId** | **String** | Opaque scope token (entity / room) the attachment was created in. Drafts carry it so an entity switch keeps in-flight composer state isolated; once linked to a message the field is redundant with the thread's own entity binding. | [optional] 
**createdAt** | **Double** | Storage-assigned creation timestamp. | 
**canAnalyze** | **Bool** | Whether the attached form can be analyzed. | [optional] 
**formKeys** | [AiAttachmentFormKeysInner] | Keys of the fields inside the form. `key` is the field identifier, `text` its human-readable label. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


