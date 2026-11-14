# UserinfoResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sub** | **String** | User id; agent_&lt;agent_id&gt; for agents. | 
**identityType** | **String** | Only for agents. | [optional] 
**tenant** | **String** | Organization slug. | [optional] 
**name** | **String** | profile scope (users); agent display name. | [optional] 
**givenName** | **String** | profile scope. | [optional] 
**familyName** | **String** | profile scope. | [optional] 
**middleName** | **String** | profile scope. | [optional] 
**nickname** | **String** | profile scope. | [optional] 
**preferredUsername** | **String** | profile scope. | [optional] 
**profile** | **String** | profile scope. | [optional] 
**picture** | **String** | profile scope. | [optional] 
**website** | **String** | profile scope. | [optional] 
**gender** | **String** | profile scope. | [optional] 
**birthdate** | **Date** | profile scope (YYYY-MM-DD). | [optional] 
**zoneinfo** | **String** | profile scope. | [optional] 
**locale** | **String** | profile scope. | [optional] 
**updatedAt** | **Int** | profile scope — Unix seconds. | [optional] 
**email** | **String** | email scope. | [optional] 
**emailVerified** | **Bool** | email scope. | [optional] 
**phoneNumber** | **String** | phone scope. | [optional] 
**phoneNumberVerified** | **Bool** | phone scope. | [optional] 
**address** | **[String: AnyCodable]** | address scope — OIDC address claim object. | [optional] 
**roles** | **[String]** | Only when the token&#39;s client explicitly enabled the roles claim. | [optional] 
**agentId** | **String** | Agents only. | [optional] 
**workloadIdentity** | **String** | Agents only. | [optional] 
**capabilities** | **[String]** | Agents only. | [optional] 
**budgetPolicy** | **[String: AnyCodable]** | Agents only. The budget limits that are set (max_api_calls_per_hour, max_api_calls_per_day, max_tokens_per_hour, max_tokens_per_day, max_cost_per_day_usd, max_cost_per_month_usd, hard_limit; unlimited ones are left out) and any other policy keys, the usage in the current UTC windows (api_calls_this_hour, api_calls_today, tokens_used_this_hour, tokens_used_today, cost_today_usd, cost_this_month_usd), and exhausted: true when a limit is reached and the next metered call would get 429. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


