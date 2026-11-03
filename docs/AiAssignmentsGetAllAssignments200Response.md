# AiAssignmentsGetAllAssignments200Response

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assignments** | [String: AiProfile] | The bound profiles keyed by action type, as `GET api/2.0/ai/profiles/list` describes them. A binding whose profile no longer exists is left out. | 
**profilesTotal** | **Int** | How many profiles the portal has. | 
**chatProfilesTotal** | **Int** | How many of those profiles can chat; a profile without declared capabilities counts as one that can. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


