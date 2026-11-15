# # UserinfoResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sub** | **string** | User id; agent_&lt;agent_id&gt; for agents. |
**identityType** | **string** | Only for agents. | [optional]
**tenant** | **string** | Organization slug. | [optional]
**name** | **string** | profile scope (users); agent display name. | [optional]
**givenName** | **string** | profile scope. | [optional]
**familyName** | **string** | profile scope. | [optional]
**middleName** | **string** | profile scope. | [optional]
**nickname** | **string** | profile scope. | [optional]
**preferredUsername** | **string** | profile scope. | [optional]
**profile** | **string** | profile scope. | [optional]
**picture** | **string** | profile scope. | [optional]
**website** | **string** | profile scope. | [optional]
**gender** | **string** | profile scope. | [optional]
**birthdate** | **\DateTime** | profile scope (YYYY-MM-DD). | [optional]
**zoneinfo** | **string** | profile scope. | [optional]
**locale** | **string** | profile scope. | [optional]
**updatedAt** | **int** | profile scope — Unix seconds. | [optional]
**email** | **string** | email scope. | [optional]
**emailVerified** | **bool** | email scope. | [optional]
**phoneNumber** | **string** | phone scope. | [optional]
**phoneNumberVerified** | **bool** | phone scope. | [optional]
**address** | **array<string,mixed>** | address scope — OIDC address claim object. | [optional]
**roles** | **string[]** | Only when the token&#39;s client explicitly enabled the roles claim. | [optional]
**agentId** | **string** | Agents only. | [optional]
**workloadIdentity** | **string** | Agents only. | [optional]
**capabilities** | **string[]** | Agents only. | [optional]
**budgetPolicy** | **array<string,mixed>** | Agents only. The budget limits that are set (max_api_calls_per_hour, max_api_calls_per_day, max_tokens_per_hour, max_tokens_per_day, max_cost_per_day_usd, max_cost_per_month_usd, hard_limit; unlimited ones are left out) and any other policy keys, the usage in the current UTC windows (api_calls_this_hour, api_calls_today, tokens_used_this_hour, tokens_used_today, cost_today_usd, cost_this_month_usd), and exhausted: true when a limit is reached and the next metered call would get 429. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
