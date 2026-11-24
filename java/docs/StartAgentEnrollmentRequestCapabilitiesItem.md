

# StartAgentEnrollmentRequestCapabilitiesItem


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**scope** | **String** | A capability in canonical &lt;resource&gt;:&lt;action&gt; form (an OAuth scope value; the dot form is refused). |  |
|**risk** | [**RiskEnum**](#RiskEnum) | The machine&#39;s own classification. It can raise the level that the approval page shows for the scope, never lower it. |  |
|**label** | **String** | Shown under the scope as the machine&#39;s description. |  [optional] |
|**checked** | **Boolean** | Asks for the capability to be pre-ticked. Honoured only for a capability that the page reads as a plain read (no wildcard); every other one starts unticked. |  [optional] |



## Enum: RiskEnum

| Name | Value |
|---- | -----|
| READ | &quot;read&quot; |
| WRITE | &quot;write&quot; |
| EXECUTE | &quot;execute&quot; |
| EXTERNAL | &quot;external&quot; |
| DESTRUCTIVE | &quot;destructive&quot; |
| ADMIN | &quot;admin&quot; |



