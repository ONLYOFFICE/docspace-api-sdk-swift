# MetadataTemplateDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** | The template ID. | [optional] 
**name** | **String** | The template name. | [optional] 
**visible** | **Bool** | Specifies if the template is visible in the UI pickers. | [optional] 
**createBy** | [**EmployeeDto**](EmployeeDto.md) | The user who created the template. A user who has since left the portal comes back as the lost user placeholder. | [optional] 
**createOn** | [**ApiDateTime**](ApiDateTime.md) | The template creation date. | [optional] 
**modifiedBy** | [**EmployeeDto**](EmployeeDto.md) | The user who changed the template itself last: its name or its visibility. The creator until somebody changes  it; a change of a field is recorded on the field, not here. | [optional] 
**modifiedOn** | [**ApiDateTime**](ApiDateTime.md) | The date when the template was modified last. | [optional] 
**fields** | [MetadataFieldDto] | The template metadata fields. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


