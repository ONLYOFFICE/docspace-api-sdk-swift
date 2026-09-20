# FormResultsDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createOn** | **Date** | When the portal recorded this copy, in UTC: the moment the filled copy was completed and its data indexed, not  the moment the form itself was made. | [optional] 
**formsData** | [FormsItemData] | The values that were entered into this copy, one entry per field, preceded by an entry keyed `FormNumber` that  carries the number of the copy and is what the submissions are ordered by. Fields holding a picture or a  signature are left out of the record, so a field missing here was not necessarily left blank. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


