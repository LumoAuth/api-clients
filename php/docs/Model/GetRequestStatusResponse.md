# # GetRequestStatusResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**requestId** | **string** |  | [optional]
**status** | **string** |  | [optional]
**riskLevel** | **string** |  | [optional]
**taskId** | **string** |  | [optional]
**tokenUrl** | **string** | Present when approved. | [optional]
**grantedTtl** | **int** | Present when approved. | [optional]
**hasNotes** | **bool** | Present when decided: whether the reviewer left notes (the notes themselves are never returned). | [optional]
**agentMessage** | **string** | Present when decided: message the reviewer explicitly wrote for the agent. | [optional]
**delegationConsentRequired** | **bool** | Present when pending: the on_behalf_of user must consent. | [optional]
**expiresAt** | **\DateTime** | Present when pending. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
