# ExternalSharingSettingsDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**externalShare** | **Bool** | Whether links that open a file or a room without a portal account may be created. While it is false the portal  also reports sharing on social networks as off and the default link type as internal, whatever was asked for. | [optional] 
**defaultShareLinkInternal** | **Bool** | The kind of link the portal offers first: true means a link only accounts of this portal can open, false one  that anyone holding it can open. | [optional] 
**externalShareApplyToDocuments** | **Bool** | Whether the restriction covers personal documents. It only has an effect while external sharing is off, so a  true here with sharing allowed restricts nothing. | [optional] 
**externalShareApplyToRooms** | **Bool** | Whether the restriction covers rooms, including the creation of new public ones. It only has an effect while  external sharing is off. | [optional] 
**blockExistingLinksOnRestrict** | **Bool** | Whether links created before the restriction stop opening as well. With false they keep working and only new  ones are refused. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


