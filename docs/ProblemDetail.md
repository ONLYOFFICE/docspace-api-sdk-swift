# ProblemDetail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | A URI reference that identifies the problem type. This service sets it to the DocSpace API getting-started page. | [optional] 
**title** | **String** | A short, human-readable summary of the problem type, typically the HTTP status reason phrase. | [optional] 
**status** | **Int** | The HTTP status code for this occurrence of the problem. | [optional] 
**detail** | **String** | A human-readable explanation specific to this occurrence of the problem. | [optional] 
**instance** | **String** | A URI reference that identifies the specific occurrence, set to the request path. | [optional] 
**properties** | **[String: JSONValue?]** | Extension members carried on the problem. Usually empty; validation failures also surface as the top-level errors array. | [optional] 
**errors** | [FieldError] | Field-specific validation errors. Present when the request body or parameters failed validation, or when a named scope is not in the tenant catalogue. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


