# AskRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **String** | The action to authorize. | [optional] 
**context** | **AnyCodable** | Optional resource/attribute context for the decision. | [optional] 
**audit** | **String** | Which decisions go to the audit log. denials (default): refusals only. always: allowed decisions too (agent.capability_check_allowed), for a tool-call hook that wants every decision on record. | [optional] [default to .denials]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


