

# McpServerPosture

Computed security posture checklist (src/Service/McpPosture).

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**level** | [**LevelEnum**](#LevelEnum) |  |  [optional] |
|**label** | **String** |  |  [optional] |
|**passes** | **Integer** |  |  [optional] |
|**applicable** | **Integer** |  |  [optional] |
|**checks** | [**List&lt;McpServerPostureChecksInner&gt;**](McpServerPostureChecksInner.md) |  |  [optional] |



## Enum: LevelEnum

| Name | Value |
|---- | -----|
| STRONG | &quot;strong&quot; |
| ATTENTION | &quot;attention&quot; |
| WEAK | &quot;weak&quot; |



