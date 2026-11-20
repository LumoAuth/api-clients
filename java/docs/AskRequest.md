

# AskRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**action** | **String** | The action to authorize. |  [optional] |
|**context** | **Object** | Optional resource/attribute context for the decision. |  [optional] |
|**audit** | [**AuditEnum**](#AuditEnum) | Which decisions go to the audit log. denials (default): refusals only. always: allowed decisions too (agent.capability_check_allowed), for a tool-call hook that wants every decision on record. |  [optional] |



## Enum: AuditEnum

| Name | Value |
|---- | -----|
| DENIALS | &quot;denials&quot; |
| ALWAYS | &quot;always&quot; |



