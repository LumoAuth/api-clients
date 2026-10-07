

# GetRequestStatusResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**requestId** | **String** |  |  [optional] |
|**status** | **String** |  |  [optional] |
|**riskLevel** | **String** |  |  [optional] |
|**taskId** | **String** |  |  [optional] |
|**tokenUrl** | **String** | Present when approved. |  [optional] |
|**grantedTtl** | **Integer** | Present when approved. |  [optional] |
|**hasNotes** | **Boolean** | Present when decided: whether the reviewer left notes (the notes themselves are never returned). |  [optional] |
|**agentMessage** | **String** | Present when decided: message the reviewer explicitly wrote for the agent. |  [optional] |
|**delegationConsentRequired** | **Boolean** | Present when pending: the on_behalf_of user must consent. |  [optional] |
|**expiresAt** | **OffsetDateTime** | Present when pending. |  [optional] |



