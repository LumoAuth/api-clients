

# StartAgentEnrollmentRequestCapabilitiesItem


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**scope** | **String** | A capability in canonical &lt;resource&gt;:&lt;action&gt; form (an OAuth scope value; the dot form is refused). |  |
|**risk** | [**RiskEnum**](#RiskEnum) |  |  |
|**label** | **String** |  |  [optional] |
|**checked** | **Boolean** | Pre-ticked on the approval page. |  [optional] |



## Enum: RiskEnum

| Name | Value |
|---- | -----|
| READ | &quot;read&quot; |
| WRITE | &quot;write&quot; |
| EXECUTE | &quot;execute&quot; |
| EXTERNAL | &quot;external&quot; |
| DESTRUCTIVE | &quot;destructive&quot; |
| ADMIN | &quot;admin&quot; |



