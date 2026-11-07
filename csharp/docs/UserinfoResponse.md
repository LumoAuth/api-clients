# LumoAuth.ApiClient.Model.UserinfoResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Sub** | **string** | User id; agent_&lt;agent_id&gt; for agents; client_&lt;client_id&gt; for clients. | 
**IdentityType** | **string** | Only for non-user principals. | [optional] 
**Tenant** | **string** | Organization slug. | [optional] 
**Name** | **string** | profile scope (users); agent / client display name. | [optional] 
**GivenName** | **string** | profile scope. | [optional] 
**FamilyName** | **string** | profile scope. | [optional] 
**MiddleName** | **string** | profile scope. | [optional] 
**Nickname** | **string** | profile scope. | [optional] 
**PreferredUsername** | **string** | profile scope. | [optional] 
**Profile** | **string** | profile scope. | [optional] 
**Picture** | **string** | profile scope. | [optional] 
**Website** | **string** | profile scope. | [optional] 
**Gender** | **string** | profile scope. | [optional] 
**Birthdate** | **DateOnly** | profile scope (YYYY-MM-DD). | [optional] 
**Zoneinfo** | **string** | profile scope. | [optional] 
**Locale** | **string** | profile scope. | [optional] 
**UpdatedAt** | **int** | profile scope — Unix seconds. | [optional] 
**Email** | **string** | email scope. | [optional] 
**EmailVerified** | **bool** | email scope. | [optional] 
**PhoneNumber** | **string** | phone scope. | [optional] 
**PhoneNumberVerified** | **bool** | phone scope. | [optional] 
**Address** | **Dictionary&lt;string, Object&gt;** | address scope — OIDC address claim object. | [optional] 
**Roles** | **List&lt;string&gt;** | Only when the token&#39;s client explicitly enabled the roles claim. | [optional] 
**AgentId** | **string** | Agents only. | [optional] 
**WorkloadIdentity** | **string** | Agents only. | [optional] 
**Capabilities** | **List&lt;string&gt;** | Agents only. | [optional] 
**BudgetPolicy** | **Dictionary&lt;string, Object&gt;** | Agents only. The budget limits that are set (max_api_calls_per_hour, max_api_calls_per_day, max_tokens_per_hour, max_tokens_per_day, max_cost_per_day_usd, max_cost_per_month_usd, hard_limit; unlimited ones are left out) and any other policy keys, the usage in the current UTC windows (api_calls_this_hour, api_calls_today, tokens_used_this_hour, tokens_used_today, cost_today_usd, cost_this_month_usd), and exhausted: true when a limit is reached and the next metered call would get 429. | [optional] 
**ClientId** | **string** | Clients only. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

