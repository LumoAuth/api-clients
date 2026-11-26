

# PoppyVerifyResult

The verification result. `active` true — the request is verified; false — return `response` to the personal agent unchanged.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**active** | **Boolean** |  |  |
|**clientId** | **URI** | The personal agent (the URL of its metadata document). |  [optional] |
|**clientName** | **String** |  |  [optional] |
|**userId** | **String** | The User ID — the personal agent&#39;s stable pseudonym for its user at your organization. |  [optional] |
|**agentId** | **String** |  |  [optional] |
|**session** | [**PoppyVerifyResultSession**](PoppyVerifyResultSession.md) |  |  [optional] |
|**signedIn** | **Boolean** |  |  [optional] |
|**account** | [**PoppyVerifyResultAccount**](PoppyVerifyResultAccount.md) |  |  [optional] |
|**version** | **String** |  |  [optional] |
|**extensions** | **Map&lt;String, String&gt;** | The extensions that the request declares, name to version. |  [optional] |
|**error** | [**ErrorEnum**](#ErrorEnum) |  |  [optional] |
|**errorDescription** | **String** |  |  [optional] |
|**scope** | **String** | The scopes that a refusal asks for. |  [optional] |
|**response** | [**PoppyVerifyResultResponse**](PoppyVerifyResultResponse.md) |  |  [optional] |



## Enum: ErrorEnum

| Name | Value |
|---- | -----|
| INVALID_SESSION | &quot;invalid_session&quot; |
| SESSION_ENDED | &quot;session_ended&quot; |
| VERSION_UNSUPPORTED | &quot;version_unsupported&quot; |
| INVALID_TOKEN | &quot;invalid_token&quot; |
| ACCOUNT_REQUIRED | &quot;account_required&quot; |
| INSUFFICIENT_SCOPE | &quot;insufficient_scope&quot; |
| TOO_MANY_REQUESTS | &quot;too_many_requests&quot; |



