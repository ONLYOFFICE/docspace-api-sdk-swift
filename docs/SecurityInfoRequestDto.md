# SecurityInfoRequestDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**folderIds** | [DuplicateRequestDtoAllOfFileIds] | The folders and rooms whose rights are being changed, identified as a listing operation returns them - a  number on the portal, a string on a connected third-party account. | [optional] 
**fileIds** | [DuplicateRequestDtoAllOfFileIds] | The files whose rights are being changed, identified as a listing operation returns them - a number on the  portal, a string on a connected third-party account. | [optional] 
**share** | [FileShareParams] | One record per account or group whose rights are being set, each naming the subject and the level it gets on  all of the listed entries; a level of `None` takes the access away. An empty collection makes the call change  nothing. | [optional] 
**notify** | **Bool** | Set to true to have every account named in `share` emailed about the access it just received; false changes  the rights without telling anyone. | [optional] 
**sharingMessage** | **String** | The text put into that email, ignored while `notify` is false. Markup is stripped before sending, so only the  plain text of the value survives. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


