# AiAttachment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Storage-assigned UUID. | 
**kind** | **String** | file | image. | 
**source** | **String** | Where the attachment came from: `user` - attached by the user (also when unset); `tool` - produced by a tool call (for example `generate_image`). | [optional] 
**title** | **String** | Display label (filename or user-visible title). | 
**content** | **String** | Extracted text for files. | [optional] 
**base64** | **String** | Base64 data URL for images. | [optional] 
**path** | **String** | Original host file path (for files). | [optional] 
**type** | **Double** | ONLYOFFICE file type code (for files). | [optional] 
**messageId** | **String** | Owning message id once linked. Unset while the attachment is a draft. | [optional] 
**threadId** | **String** | Owning thread id once linked. Unset while the attachment is a draft. | [optional] 
**entityId** | **String** | The room or folder the attachment was created in, as an opaque token; once the attachment is bound to a message it repeats the thread's own scope. | [optional] 
**createdAt** | **Double** | Storage-assigned creation timestamp. | 
**canAnalyze** | **Bool** | Whether the attached form can be analyzed. | [optional] 
**formKeys** | [AiAttachmentFormKeysInner] | Keys of the fields inside the form. `key` is the field identifier, `text` its human-readable label. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


