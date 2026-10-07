# GetRequestStatusResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**requestId** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**riskLevel** | **String** |  | [optional] 
**taskId** | **String** |  | [optional] 
**tokenUrl** | **String** | Present when approved. | [optional] 
**grantedTtl** | **Int** | Present when approved. | [optional] 
**hasNotes** | **Bool** | Present when decided: whether the reviewer left notes (the notes themselves are never returned). | [optional] 
**agentMessage** | **String** | Present when decided: message the reviewer explicitly wrote for the agent. | [optional] 
**delegationConsentRequired** | **Bool** | Present when pending: the on_behalf_of user must consent. | [optional] 
**expiresAt** | **Date** | Present when pending. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


