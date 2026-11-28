# LumoAuthApiClient::CreateUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  |  |
| **password** | **String** | Optional; must meet the organization&#39;s password policy. | [optional] |
| **username** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **given_name** | **String** |  | [optional] |
| **family_name** | **String** |  | [optional] |
| **phone_number** | **String** |  | [optional] |
| **email_verified** | **Boolean** |  | [optional][default to false] |
| **is_active** | **Boolean** |  | [optional][default to true] |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **roles** | **Array&lt;String&gt;** | Role slugs or ids of this organization. | [optional] |
| **groups** | **Array&lt;String&gt;** | Group slugs or ids of this organization. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CreateUserRequest.new(
  email: null,
  password: null,
  username: null,
  name: null,
  given_name: null,
  family_name: null,
  phone_number: null,
  email_verified: null,
  is_active: null,
  metadata: null,
  roles: null,
  groups: null
)
```

