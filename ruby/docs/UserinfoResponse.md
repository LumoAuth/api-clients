# LumoAuthApiClient::UserinfoResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sub** | **String** | User id; agent_&lt;agent_id&gt; for agents. |  |
| **identity_type** | **String** | Only for agents. | [optional] |
| **tenant** | **String** | Organization slug. | [optional] |
| **name** | **String** | profile scope (users); agent display name. | [optional] |
| **given_name** | **String** | profile scope. | [optional] |
| **family_name** | **String** | profile scope. | [optional] |
| **middle_name** | **String** | profile scope. | [optional] |
| **nickname** | **String** | profile scope. | [optional] |
| **preferred_username** | **String** | profile scope. | [optional] |
| **profile** | **String** | profile scope. | [optional] |
| **picture** | **String** | profile scope. | [optional] |
| **website** | **String** | profile scope. | [optional] |
| **gender** | **String** | profile scope. | [optional] |
| **birthdate** | **Date** | profile scope (YYYY-MM-DD). | [optional] |
| **zoneinfo** | **String** | profile scope. | [optional] |
| **locale** | **String** | profile scope. | [optional] |
| **updated_at** | **Integer** | profile scope — Unix seconds. | [optional] |
| **email** | **String** | email scope. | [optional] |
| **email_verified** | **Boolean** | email scope. | [optional] |
| **phone_number** | **String** | phone scope. | [optional] |
| **phone_number_verified** | **Boolean** | phone scope. | [optional] |
| **address** | **Hash&lt;String, Object&gt;** | address scope — OIDC address claim object. | [optional] |
| **roles** | **Array&lt;String&gt;** | Only when the token&#39;s client explicitly enabled the roles claim. | [optional] |
| **agent_id** | **String** | Agents only. | [optional] |
| **workload_identity** | **String** | Agents only. | [optional] |
| **capabilities** | **Array&lt;String&gt;** | Agents only. | [optional] |
| **budget_policy** | **Hash&lt;String, Object&gt;** | Agents only. The budget limits that are set (max_api_calls_per_hour, max_api_calls_per_day, max_tokens_per_hour, max_tokens_per_day, max_cost_per_day_usd, max_cost_per_month_usd, hard_limit; unlimited ones are left out) and any other policy keys, the usage in the current UTC windows (api_calls_this_hour, api_calls_today, tokens_used_this_hour, tokens_used_today, cost_today_usd, cost_this_month_usd), and exhausted: true when a limit is reached and the next metered call would get 429. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::UserinfoResponse.new(
  sub: null,
  identity_type: null,
  tenant: null,
  name: null,
  given_name: null,
  family_name: null,
  middle_name: null,
  nickname: null,
  preferred_username: null,
  profile: null,
  picture: null,
  website: null,
  gender: null,
  birthdate: null,
  zoneinfo: null,
  locale: null,
  updated_at: null,
  email: null,
  email_verified: null,
  phone_number: null,
  phone_number_verified: null,
  address: null,
  roles: null,
  agent_id: null,
  workload_identity: null,
  capabilities: null,
  budget_policy: null
)
```

