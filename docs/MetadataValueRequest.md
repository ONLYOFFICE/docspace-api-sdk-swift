# MetadataValueRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fieldId** | **Int** | The field ID. | 
**stringValue** | **String** | The string value. | [optional] 
**numberValue** | **Int64** | The number value: a whole number of at most 2^53-1 (9007199254740991) in magnitude, the largest integer a JSON  client reads exactly. A larger one is refused rather than stored and returned rounded. | [optional] 
**dateValue** | **Date** | The date value. A value without a time zone offset is treated as UTC, the same way the metadata filters treat their date bounds. | [optional] 
**optionIds** | **[UUID]** | The selected choice option IDs. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


