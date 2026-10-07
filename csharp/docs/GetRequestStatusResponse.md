# LumoAuth.ApiClient.Model.GetRequestStatusResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RequestId** | **string** |  | [optional] 
**Status** | **string** |  | [optional] 
**RiskLevel** | **string** |  | [optional] 
**TaskId** | **string** |  | [optional] 
**TokenUrl** | **string** | Present when approved. | [optional] 
**GrantedTtl** | **int** | Present when approved. | [optional] 
**HasNotes** | **bool** | Present when decided: whether the reviewer left notes (the notes themselves are never returned). | [optional] 
**AgentMessage** | **string** | Present when decided: message the reviewer explicitly wrote for the agent. | [optional] 
**DelegationConsentRequired** | **bool** | Present when pending: the on_behalf_of user must consent. | [optional] 
**ExpiresAt** | **DateTime** | Present when pending. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

