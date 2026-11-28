# LumoAuthApiClient::UpdateUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | A change needs a caller who outranks the user (and a fresh sign-in for a person). | [optional] |
| **name** | **String** |  | [optional] |
| **given_name** | **String** |  | [optional] |
| **family_name** | **String** |  | [optional] |
| **phone_number** | **String** |  | [optional] |
| **picture** | **String** |  | [optional] |
| **locale** | **String** |  | [optional] |
| **zoneinfo** | **String** |  | [optional] |
| **email_verified** | **Boolean** |  | [optional] |
| **is_active** | **Boolean** |  | [optional] |
| **staff** | **Boolean** |  | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::UpdateUserRequest.new(
  email: null,
  name: null,
  given_name: null,
  family_name: null,
  phone_number: null,
  picture: null,
  locale: null,
  zoneinfo: null,
  email_verified: null,
  is_active: null,
  staff: null,
  metadata: null
)
```

