# LumoAuthApiClient::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **email** | **String** |  |  |
| **username** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **given_name** | **String** |  | [optional] |
| **family_name** | **String** |  | [optional] |
| **picture** | **String** |  | [optional] |
| **email_verified** | **Boolean** |  |  |
| **phone_number** | **String** |  | [optional] |
| **phone_number_verified** | **Boolean** |  | [optional] |
| **is_active** | **Boolean** |  |  |
| **blocked** | **Boolean** |  |  |
| **mfa_enabled** | **Boolean** |  |  |
| **is_admin** | **Boolean** |  |  |
| **created_at** | **Time** |  |  |
| **last_login_at** | **Time** |  | [optional] |
| **login_count** | **Integer** |  |  |
| **roles** | [**Array&lt;RoleRef&gt;**](RoleRef.md) | Detailed (single-user) responses only | [optional] |
| **groups** | [**Array&lt;GroupRef&gt;**](GroupRef.md) | Detailed responses only | [optional] |
| **locale** | **String** | Detailed responses only | [optional] |
| **zoneinfo** | **String** | Detailed responses only | [optional] |
| **updated_at** | **Time** | Detailed responses only | [optional] |
| **blocked_at** | **Time** | Detailed responses only | [optional] |
| **is_jit_provisioned** | **Boolean** | Detailed responses only | [optional] |
| **jit_provisioned_by** | **String** | Detailed responses only | [optional] |
| **social_provider** | **String** | Detailed responses only | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::User.new(
  id: null,
  email: null,
  username: null,
  name: null,
  given_name: null,
  family_name: null,
  picture: null,
  email_verified: null,
  phone_number: null,
  phone_number_verified: null,
  is_active: null,
  blocked: null,
  mfa_enabled: null,
  is_admin: null,
  created_at: null,
  last_login_at: null,
  login_count: null,
  roles: null,
  groups: null,
  locale: null,
  zoneinfo: null,
  updated_at: null,
  blocked_at: null,
  is_jit_provisioned: null,
  jit_provisioned_by: null,
  social_provider: null
)
```

