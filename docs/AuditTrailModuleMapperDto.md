# AuditTrailModuleMapperDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**moduleType** | **String** | The location inside the product, as the `moduleType` filter of `GET api/2.0/security/audit/events/filter`  spells it. | [optional] 
**actions** | [AuditTrailActionMapperDto] | Every action this module can record. Each action appears under exactly one module, so this tree is where a  caller learns which module a given action belongs to. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


