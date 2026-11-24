

# AgentsMeToolCallsRequestCallsItem


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**tool** | **String** |  |  |
|**serverId** | **String** | The MCP server the tool belongs to, when it has one. |  [optional] |
|**decision** | [**DecisionEnum**](#DecisionEnum) |  |  |
|**outcome** | [**OutcomeEnum**](#OutcomeEnum) | not_run for a call that was denied, refused, expired or blocked (the default for those). |  [optional] |
|**durationMs** | **Integer** |  |  [optional] |
|**argumentsSha256** | **String** | SHA-256 of the arguments as the host serialized them. The arguments themselves are never sent. |  [optional] |
|**auditId** | **String** | audit_id of the Ask API answer that allowed or denied the call. |  [optional] |
|**occurredAt** | **OffsetDateTime** | When the call ran; within the last 24 hours. |  [optional] |
|**errorCode** | **String** | A short code for a failed call, never a message. |  [optional] |



## Enum: DecisionEnum

| Name | Value |
|---- | -----|
| ALLOWED | &quot;allowed&quot; |
| APPROVED | &quot;approved&quot; |
| DENIED | &quot;denied&quot; |
| REFUSED | &quot;refused&quot; |
| EXPIRED | &quot;expired&quot; |
| BLOCKED | &quot;blocked&quot; |



## Enum: OutcomeEnum

| Name | Value |
|---- | -----|
| SUCCEEDED | &quot;succeeded&quot; |
| FAILED | &quot;failed&quot; |
| NOT_RUN | &quot;not_run&quot; |



