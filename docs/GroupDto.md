# GroupDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The group name. | 
**parent** | **UUID** | The parent group ID. | [optional] 
**category** | **UUID** | The group category ID. | 
**id** | **UUID** | The group ID. | 
**isLDAP** | **Bool** | Specifies if the LDAP settings are enabled for the group or not. | 
**isSystem** | **Bool** | Indicates whether the group is a system group. | [optional] 
**manager** | [**EmployeeFullDto**](EmployeeFullDto.md) |  | [optional] 
**members** | [EmployeeFullDto] | The list of group members. | [optional] 
**shared** | **Bool** | Specifies whether the group can be shared or not. | [optional] 
**membersCount** | **Int** | The number of group members. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


