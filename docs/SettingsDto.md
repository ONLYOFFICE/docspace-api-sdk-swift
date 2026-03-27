# SettingsDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**timezone** | **String** | The time zone. | [optional] 
**trustedDomains** | **[String]** | The list of the trusted domains. | [optional] 
**trustedDomainsType** | [**TenantTrustedDomainsType**](TenantTrustedDomainsType.md) |  | [optional] 
**culture** | **String** | The language. | 
**utcOffset** | **String** | The UTC offset in the TimeSpan format. | [optional] 
**utcHoursOffset** | **Double** | The UTC offset in hours. | [optional] 
**greetingSettings** | **String** | The greeting settings. | [optional] 
**ownerId** | **UUID** | The owner ID. | [optional] 
**nameSchemaId** | **String** | The team template ID. | [optional] 
**enabledJoin** | **Bool** | Specifies if a user can join the portal or not. | [optional] 
**enableAdmMess** | **Bool** | Specifies if a user can send a message to the administrator when accessing the DocSpace portal or not. | [optional] 
**thirdpartyEnable** | **Bool** | Specifies if a user can connect third-party providers to the portal or not. | [optional] 
**docSpace** | **Bool** | Specifies if this portal is a DocSpace portal or not. | [optional] 
**standalone** | **Bool** | Indicates whether the system is running in standalone mode. | [optional] 
**isAmi** | **Bool** | Specifies if this portal is the AMI instance or not. | [optional] 
**baseDomain** | **String** | The base domain. | 
**wizardToken** | **String** | The wizard token. | [optional] 
**passwordHash** | [**PasswordHasher**](PasswordHasher.md) |  | [optional] 
**firebase** | [**FirebaseDto**](FirebaseDto.md) |  | [optional] 
**version** | **String** | The portal version. | [optional] 
**recaptchaType** | [**RecaptchaType**](RecaptchaType.md) |  | [optional] 
**recaptchaPublicKey** | **String** | The ReCAPTCHA public key. | [optional] 
**debugInfo** | **Bool** | Specifies if the debug information will be sent or not. | [optional] 
**socketUrl** | **String** | The socket URL. | [optional] 
**tenantStatus** | [**TenantStatus**](TenantStatus.md) |  | [optional] 
**tenantAlias** | **String** | The tenant alias. | [optional] 
**displayAbout** | **Bool** | Specifies whether to display the About portal section. | [optional] 
**domainValidator** | [**TenantDomainValidator**](TenantDomainValidator.md) |  | [optional] 
**zendeskKey** | **String** | The Zendesk key. | [optional] 
**tagManagerId** | **String** | The tag manager ID. | [optional] 
**cookieSettingsEnabled** | **Bool** | Specifies whether the cookie settings are enabled. | 
**limitedAccessSpace** | **Bool** | Specifies whether the access to the space management is limited or not. | [optional] 
**limitedAccessDevToolsForUsers** | **Bool** | Specifies whether the access to the Developer Tools is limited for users or not. | [optional] 
**displayBanners** | **Bool** | Specifies whether to display the promotional banners. | [optional] 
**aiEnabled** | **Bool** | Specifies whether AI functionality (chat, agents, vectorization) is enabled for the current tenant.  When `false`, all AI features are disabled and the AI Agents folder is hidden. | [optional] 
**userNameRegex** | **String** | The user name validation regex. | [optional] 
**invitationLimit** | **Int** | The maximum number of invitations to the portal. | [optional] 
**plugins** | [**PluginsDto**](PluginsDto.md) |  | [optional] 
**deepLink** | [**DeepLinkDto**](DeepLinkDto.md) |  | 
**formGallery** | [**FormGalleryDto**](FormGalleryDto.md) |  | [optional] 
**maxImageUploadSize** | **Int64** | The maximum image upload size. | [optional] 
**logoText** | **String** | The white label logo text. | [optional] 
**externalResources** | [**CultureSpecificExternalResources**](CultureSpecificExternalResources.md) |  | [optional] 
**defaultFolderType** | [**FolderType**](FolderType.md) |  | [optional] 
**externalDbEnabled** | **Bool** | Specifies if an external database is connected for storing form results. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


