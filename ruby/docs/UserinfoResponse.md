# LumoAuthApiClient::UserinfoResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sub** | **String** | User id; agent_&lt;agent_id&gt; for agents; client_&lt;client_id&gt; for clients. |  |
| **identity_type** | **String** | Only for non-user principals. | [optional] |
| **tenant** | **String** | Organization slug. | [optional] |
| **name** | **String** | profile scope (users); agent / client display name. | [optional] |
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
| **client_id** | **String** | Clients only. | [optional] |

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
  client_id: null
)
```

