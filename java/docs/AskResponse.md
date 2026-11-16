

# AskResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**allowed** | **Boolean** |  |  [optional] |
|**action** | **String** |  |  [optional] |
|**context** | **Object** |  |  [optional] |
|**reason** | **String** |  |  [optional] |
|**decidedBy** | [**DecidedByEnum**](#DecidedByEnum) | Which check produced the answer. Always pdp for a user caller. |  [optional] |
|**auditId** | **String** |  |  [optional] |



## Enum: DecidedByEnum

| Name | Value |
|---- | -----|
| CAPABILITY | &quot;capability&quot; |
| PDP | &quot;pdp&quot; |
| DENY_OVERRIDE | &quot;deny_override&quot; |



