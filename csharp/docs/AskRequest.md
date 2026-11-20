# LumoAuth.ApiClient.Model.AskRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | **string** | The action to authorize. | [optional] 
**Context** | **Object** | Optional resource/attribute context for the decision. | [optional] 
**Audit** | **string** | Which decisions go to the audit log. denials (default): refusals only. always: allowed decisions too (agent.capability_check_allowed), for a tool-call hook that wants every decision on record. | [optional] [default to AuditEnum.Denials]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

