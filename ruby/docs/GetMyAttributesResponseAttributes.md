# LumoAuthApiClient::GetMyAttributesResponseAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **is_admin** | **Boolean** |  | [optional] |
| **is_super_admin** | **Boolean** |  | [optional] |
| **email_verified** | **Boolean** |  | [optional] |
| **mfa_enabled** | **Boolean** |  | [optional] |
| **is_active** | **Boolean** |  | [optional] |
| **blocked** | **Boolean** |  | [optional] |
| **given_name** | **String** |  | [optional] |
| **family_name** | **String** |  | [optional] |
| **locale** | **String** |  | [optional] |
| **zoneinfo** | **String** |  | [optional] |
| **roles** | **Array&lt;String&gt;** | Role slugs | [optional] |
| **groups** | **Array&lt;String&gt;** | Group slugs | [optional] |
| **permissions** | **Array&lt;String&gt;** | Permission slugs | [optional] |
| **tenant_id** | **Integer** |  | [optional] |
| **org_id** | **String** | Organization slug | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::GetMyAttributesResponseAttributes.new(
  id: null,
  email: null,
  username: null,
  name: null,
  is_admin: null,
  is_super_admin: null,
  email_verified: null,
  mfa_enabled: null,
  is_active: null,
  blocked: null,
  given_name: null,
  family_name: null,
  locale: null,
  zoneinfo: null,
  roles: null,
  groups: null,
  permissions: null,
  tenant_id: null,
  org_id: null
)
```

