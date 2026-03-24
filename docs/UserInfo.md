# UserInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | The user ID. | [optional] 
**firstName** | **String** | The user first name. | [optional] 
**lastName** | **String** | The user last name. | [optional] 
**userName** | **String** | The user username. | [optional] 
**birthDate** | **Date** | The user birthday. | [optional] 
**sex** | **Bool** | The user sex (male or female). | [optional] 
**status** | [**EmployeeStatus**](EmployeeStatus.md) |  | [optional] 
**activationStatus** | [**EmployeeActivationStatus**](EmployeeActivationStatus.md) |  | [optional] 
**terminatedDate** | **Date** | The date and time when the user account was terminated. | [optional] 
**title** | **String** | The user title. | [optional] 
**workFromDate** | **Date** | The user registration date. | [optional] 
**email** | **String** | The user email address. | [optional] 
**contacts** | **String** | The list of user contacts in the string format. | [optional] 
**contactsList** | **[String]** | The list of user contacts. | [optional] 
**location** | **String** | The user location. | [optional] 
**notes** | **String** | The user notes. | [optional] 
**removed** | **Bool** | Specifies if the user account was removed or not. | [optional] 
**lastModified** | **Date** | The date and time when the user account was last modified. | [optional] 
**tenantId** | **Int** | The tenant ID. | [optional] 
**isActive** | **Bool** | Specifies if the user is active or not. | [optional] [readonly] 
**cultureName** | **String** | The user culture code. | [optional] 
**mobilePhone** | **String** | The user mobile phone. | [optional] 
**mobilePhoneActivationStatus** | [**MobilePhoneActivationStatus**](MobilePhoneActivationStatus.md) |  | [optional] 
**sid** | **String** | The LDAP user identificator. | [optional] 
**ldapQouta** | **Int64** | The LDAP user quota attribute. | [optional] 
**ssoNameId** | **String** | The SSO SAML user identificator. | [optional] 
**ssoSessionId** | **String** | The SSO SAML user session identificator. | [optional] 
**createDate** | **Date** | The date and time when the user account was created. | [optional] 
**createdBy** | **UUID** | The ID of the user who created the current user account. | [optional] 
**spam** | **Bool** | Specifies if tips, updates and offers are allowed to be sent to the user or not. | [optional] 
**checkActivation** | **Bool** |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


