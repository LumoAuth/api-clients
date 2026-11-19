

# GetMeResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**subjectType** | [**SubjectTypeEnum**](#SubjectTypeEnum) |  |  [optional] |
|**id** | **String** |  |  [optional] |
|**email** | **String** |  |  [optional] |
|**name** | **String** |  |  [optional] |
|**mfaEnabled** | **Boolean** |  |  [optional] |
|**roles** | **List&lt;String&gt;** |  |  [optional] |
|**capabilities** | **List&lt;String&gt;** |  |  [optional] |
|**scopes** | **List&lt;String&gt;** | Agents only: the OAuth scope values that the agent may request for this organization&#39;s API, as RFC 7591 defines a client&#39;s registered scope. They are its capabilities, each a scope token (RFC 6749 section 3.3). |  [optional] |
|**scope** | **List&lt;String&gt;** | Agents only: the scope of the presented token. |  [optional] |
|**scopeNarrowed** | **Boolean** | Agents only: true when the token scope leaves out one of the agent&#39;s capabilities. |  [optional] |
|**tenant** | [**GroupRef**](GroupRef.md) |  |  [optional] |



## Enum: SubjectTypeEnum

| Name | Value |
|---- | -----|
| USER | &quot;user&quot; |
| AGENT | &quot;agent&quot; |



