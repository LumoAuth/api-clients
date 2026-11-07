

# UserinfoResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**sub** | **String** | User id; agent_&lt;agent_id&gt; for agents; client_&lt;client_id&gt; for clients. |  |
|**identityType** | [**IdentityTypeEnum**](#IdentityTypeEnum) | Only for non-user principals. |  [optional] |
|**tenant** | **String** | Organization slug. |  [optional] |
|**name** | **String** | profile scope (users); agent / client display name. |  [optional] |
|**givenName** | **String** | profile scope. |  [optional] |
|**familyName** | **String** | profile scope. |  [optional] |
|**middleName** | **String** | profile scope. |  [optional] |
|**nickname** | **String** | profile scope. |  [optional] |
|**preferredUsername** | **String** | profile scope. |  [optional] |
|**profile** | **String** | profile scope. |  [optional] |
|**picture** | **String** | profile scope. |  [optional] |
|**website** | **String** | profile scope. |  [optional] |
|**gender** | **String** | profile scope. |  [optional] |
|**birthdate** | **LocalDate** | profile scope (YYYY-MM-DD). |  [optional] |
|**zoneinfo** | **String** | profile scope. |  [optional] |
|**locale** | **String** | profile scope. |  [optional] |
|**updatedAt** | **Integer** | profile scope — Unix seconds. |  [optional] |
|**email** | **String** | email scope. |  [optional] |
|**emailVerified** | **Boolean** | email scope. |  [optional] |
|**phoneNumber** | **String** | phone scope. |  [optional] |
|**phoneNumberVerified** | **Boolean** | phone scope. |  [optional] |
|**address** | **Map&lt;String, Object&gt;** | address scope — OIDC address claim object. |  [optional] |
|**roles** | **List&lt;String&gt;** | Only when the token&#39;s client explicitly enabled the roles claim. |  [optional] |
|**agentId** | **String** | Agents only. |  [optional] |
|**workloadIdentity** | **String** | Agents only. |  [optional] |
|**capabilities** | **List&lt;String&gt;** | Agents only. |  [optional] |
|**budgetPolicy** | **Map&lt;String, Object&gt;** | Agents only. The budget limits that are set (max_api_calls_per_hour, max_api_calls_per_day, max_tokens_per_hour, max_tokens_per_day, max_cost_per_day_usd, max_cost_per_month_usd, hard_limit; unlimited ones are left out) and any other policy keys, the usage in the current UTC windows (api_calls_this_hour, api_calls_today, tokens_used_this_hour, tokens_used_today, cost_today_usd, cost_this_month_usd), and exhausted: true when a limit is reached and the next metered call would get 429. |  [optional] |
|**clientId** | **String** | Clients only. |  [optional] |



## Enum: IdentityTypeEnum

| Name | Value |
|---- | -----|
| AGENT | &quot;agent&quot; |
| CLIENT | &quot;client&quot; |
| UNKNOWN | &quot;unknown&quot; |



